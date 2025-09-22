import 'dart:async';
import 'package:familio/data/services/home_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:familio/blocs/task/task_event.dart';
import 'package:familio/blocs/task/task_state.dart';
import 'package:familio/data/services/task_service.dart';
import 'package:familio/data/models/models.dart';
import 'package:familio/core/logging/logger_service.dart';
import 'package:familio/di/injection.dart';

@injectable
class TaskBloc extends Bloc<TaskEvent, TaskState> {
  final TaskService _taskService;
  final HomeService _homeService;

  final Home home;
  final Task? existingTask;

  TaskBloc(
    this._taskService,
    this._homeService, {
    @factoryParam required this.home,
    @factoryParam this.existingTask,
  }) : super(const TaskState()) {
    on<TaskInitialized>(_onInitialized);
    on<TaskTitleChanged>(_onTitleChanged);
    on<TaskDescriptionChanged>(_onDescriptionChanged);
    on<TaskDueDateChanged>(_onDueDateChanged);
    on<TaskPriorityChanged>(_onPriorityChanged);
    on<TaskAssigneeToggled>(_onAssigneeToggled);
    on<SubTaskRemoved>(_onSubTaskRemoved);
    on<SubTaskTitleChanged>(_onSubTaskTitleChanged);
    on<SubTaskToggled>(_onSubTaskToggled);
    on<TaskSubmitted>(_onSubmitted);
  }

  Future<void> _onInitialized(
    TaskInitialized event,
    Emitter<TaskState> emit,
  ) async {
    emit(state.copyWith(uiStatus: TaskUiStatus.loading));

    try {
      final availableUserMembers = await _homeService.getHomeUserMembers(
        home.id,
      );

      if (existingTask != null) {
        // Editing mode
        final task = existingTask!;

        // Load subtasks from database
        final subTasks = await _taskService.getSubTasks(task.id);

        // Load task assignees
        final assignees = await _taskService.getTaskAssignees(task.id);
        final assignedUserIds = assignees.map((a) => a.userId).toList();

        emit(
          state.copyWith(
            uiStatus: TaskUiStatus.loaded,
            home: home,
            task: existingTask,
            title: task.title,
            description: task.description ?? '',
            dueDate: task.dueDate,
            priority: Priority.values.firstWhere(
              (p) => p.name == task.priority,
              orElse: () => Priority.medium,
            ),
            assignedTo: assignedUserIds,
            subTasks: subTasks,
            availableUserMembers: availableUserMembers,
          ),
        );
      } else {
        // Creation mode - get current user ID from AuthBloc or set default
        emit(
          state.copyWith(
            uiStatus: TaskUiStatus.loaded,
            home: home,
            availableUserMembers: availableUserMembers,
          ),
        );
      }
    } catch (e, s) {
      getIt<LoggerService>().error(e, s);
      emit(state.copyWith(uiStatus: TaskUiStatus.error, error: e.toString()));
    }
  }

  Future<void> _onTitleChanged(
    TaskTitleChanged event,
    Emitter<TaskState> emit,
  ) async {
    emit(state.copyWith(title: event.title, hasUnsavedChanges: true));
  }

  Future<void> _onDescriptionChanged(
    TaskDescriptionChanged event,
    Emitter<TaskState> emit,
  ) async {
    emit(
      state.copyWith(description: event.description, hasUnsavedChanges: true),
    );
  }

  Future<void> _onDueDateChanged(
    TaskDueDateChanged event,
    Emitter<TaskState> emit,
  ) async {
    emit(state.copyWith(dueDate: event.dueDate, hasUnsavedChanges: true));
  }

  Future<void> _onPriorityChanged(
    TaskPriorityChanged event,
    Emitter<TaskState> emit,
  ) async {
    emit(state.copyWith(priority: event.priority, hasUnsavedChanges: true));
  }

  Future<void> _onAssigneeToggled(
    TaskAssigneeToggled event,
    Emitter<TaskState> emit,
  ) async {
    final currentAssignees = List<String>.from(state.assignedTo);
    if (currentAssignees.contains(event.user)) {
      currentAssignees.remove(event.user);
    } else {
      currentAssignees.add(event.user);
    }

    emit(state.copyWith(assignedTo: currentAssignees, hasUnsavedChanges: true));
  }

  Future<void> _onSubTaskRemoved(
    SubTaskRemoved event,
    Emitter<TaskState> emit,
  ) async {
    final updatedSubTasks = List<SubTask>.from(state.subTasks)
      ..removeWhere((s) => s.id == event.id);

    emit(state.copyWith(subTasks: updatedSubTasks, hasUnsavedChanges: true));
  }

  Future<void> _onSubTaskTitleChanged(
    SubTaskTitleChanged event,
    Emitter<TaskState> emit,
  ) async {
    final updatedSubTasks = List<SubTask>.from(state.subTasks);
    if (event.id.isEmpty) {
      final newSubTask = SubTask(
        id: '', // Will be generated when saved
        taskId: state.task?.id ?? '',
        title: event.title,
        isCompleted: false,
        orderIndex: state.subTasks.length,
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
      );
      updatedSubTasks.add(newSubTask);
    } else {
      final subTaskIndex = state.subTasks.indexWhere((s) => s.id == event.id);
      updatedSubTasks[subTaskIndex] = updatedSubTasks[subTaskIndex].copyWith(
        title: event.title,
      );
    }

    emit(state.copyWith(subTasks: updatedSubTasks, hasUnsavedChanges: true));
  }

  Future<void> _onSubTaskToggled(
    SubTaskToggled event,
    Emitter<TaskState> emit,
  ) async {
    final updatedSubTasks = List<SubTask>.from(state.subTasks);
    final subTaskIndex = state.subTasks.indexWhere((s) => s.id == event.id);
    updatedSubTasks[subTaskIndex] = updatedSubTasks[subTaskIndex].copyWith(
      isCompleted: event.isCompleted,
    );

    emit(state.copyWith(subTasks: updatedSubTasks, hasUnsavedChanges: true));
  }

  Future<void> _onSubmitted(
    TaskSubmitted event,
    Emitter<TaskState> emit,
  ) async {
    if (!state.isValid) {
      emit(
        state.copyWith(
          uiStatus: TaskUiStatus.error,
          error: 'Title is required',
        ),
      );
      return;
    }

    emit(
      state.copyWith(
        uiStatus: state.isEditing
            ? TaskUiStatus.updating
            : TaskUiStatus.creating,
      ),
    );

    try {
      Task task;
      if (state.isEditing) {
        task = await _taskService.updateTask(
          taskId: state.task!.id,
          title: state.title.trim(),
          description: state.description.trim().isEmpty
              ? null
              : state.description.trim(),
          dueDate: state.dueDate,
          priority: state.priority,
        );

        // Handle subtasks for update
        // First, get existing subtasks from database
        final existingSubTasks = await _taskService.getSubTasks(task.id);

        // Delete removed subtasks
        for (final existingSubTask in existingSubTasks) {
          if (!state.subTasks.any((s) => s.id == existingSubTask.id)) {
            await _taskService.deleteSubTask(existingSubTask.id);
          }
        }

        // Update or create subtasks
        for (int i = 0; i < state.subTasks.length; i++) {
          final subTask = state.subTasks[i];
          if (subTask.id.isNotEmpty &&
              existingSubTasks.any((s) => s.id == subTask.id)) {
            // Update existing subtask
            await _taskService.updateSubTask(
              subTaskId: subTask.id,
              title: subTask.title,
              isCompleted: subTask.isCompleted,
              orderIndex: i,
            );
          } else {
            // Create new subtask
            await _taskService.createSubTask(
              taskId: task.id,
              title: subTask.title,
              orderIndex: i,
            );
          }
        }
      } else {
        task = await _taskService.createTask(
          homeId: state.home!.id,
          title: state.title.trim(),
          description: state.description.trim().isEmpty
              ? null
              : state.description.trim(),
          assignedToUserIds: state.assignedTo,
          dueDate: state.dueDate,
          priority: state.priority,
        );

        // Create subtasks for new task
        for (int i = 0; i < state.subTasks.length; i++) {
          final subTask = state.subTasks[i];
          await _taskService.createSubTask(
            taskId: task.id,
            title: subTask.title,
            orderIndex: i,
          );
        }
      }

      emit(
        state.copyWith(
          uiStatus: state.isEditing
              ? TaskUiStatus.updated
              : TaskUiStatus.created,
          hasUnsavedChanges: false,
        ),
      );
    } catch (e, s) {
      getIt<LoggerService>().error(e, s);
      emit(state.copyWith(uiStatus: TaskUiStatus.error, error: e.toString()));
    }
  }
}
