import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:familio/blocs/task/task_event.dart';
import 'package:familio/blocs/task/task_state.dart';
import 'package:familio/data/services/task_service.dart' as task_service;
import 'package:familio/data/models/models.dart';
import 'package:familio/core/logging/logger_service.dart';
import 'package:familio/di/injection.dart';

@injectable
class TaskBloc extends Bloc<TaskEvent, TaskState> {
  final task_service.TaskService _taskService;

  final Home home;
  final Task? existingTask;

  TaskBloc(
    this._taskService, {
    @factoryParam required this.home,
    @factoryParam this.existingTask,
  }) : super(const TaskState()) {
    on<TaskInitialized>(_onInitialized);
    on<TaskTitleChanged>(_onTitleChanged);
    on<TaskDescriptionChanged>(_onDescriptionChanged);
    on<TaskDueDateChanged>(_onDueDateChanged);
    on<TaskPriorityChanged>(_onPriorityChanged);
    on<TaskAssigneeToggled>(_onAssigneeToggled);
    on<SubTaskAdded>(_onSubTaskAdded);
    on<SubTaskRemoved>(_onSubTaskRemoved);
    on<SubTaskTitleChanged>(_onSubTaskTitleChanged);
    on<TaskSubmitted>(_onSubmitted);
  }

  Future<void> _onInitialized(
    TaskInitialized event,
    Emitter<TaskState> emit,
  ) async {
    emit(state.copyWith(uiStatus: TaskUiStatus.loading));

    try {
      // TODO Load available members for the home
      // For now, we'll use an empty list - this would be populated from home members
      final availableMembers = <User>[];

      if (existingTask != null) {
        // Editing mode
        final task = existingTask!;
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
            assignedTo: [], // TODO: Load from TaskAssignee table
            subTasks: [], // TODO: Load from SubTask table
            createdBy: task.createdById,
            availableMembers: availableMembers,
          ),
        );
      } else {
        // Creation mode - get current user ID from AuthBloc or set default
        emit(
          state.copyWith(
            uiStatus: TaskUiStatus.loaded,
            home: home,
            availableMembers: availableMembers,
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

  Future<void> _onSubTaskAdded(
    SubTaskAdded event,
    Emitter<TaskState> emit,
  ) async {
    final newSubTask = SubTask(
      id: '', // Will be generated when saved
      taskId: state.task?.id ?? '',
      title: event.title,
      isCompleted: false,
      orderIndex: state.subTasks.length,
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    );
    final updatedSubTasks = List<SubTask>.from(state.subTasks)..add(newSubTask);

    emit(state.copyWith(subTasks: updatedSubTasks, hasUnsavedChanges: true));
  }

  Future<void> _onSubTaskRemoved(
    SubTaskRemoved event,
    Emitter<TaskState> emit,
  ) async {
    final updatedSubTasks = List<SubTask>.from(state.subTasks)
      ..removeAt(event.index);

    emit(state.copyWith(subTasks: updatedSubTasks, hasUnsavedChanges: true));
  }

  Future<void> _onSubTaskTitleChanged(
    SubTaskTitleChanged event,
    Emitter<TaskState> emit,
  ) async {
    final updatedSubTasks = List<SubTask>.from(state.subTasks);

    if (event.index == updatedSubTasks.length) {
      final newSubTask = SubTask(
        id: '', // Will be generated when saved
        taskId: state.task?.id ?? '',
        title: event.title,
        isCompleted: false,
        orderIndex: event.index,
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
      );
      updatedSubTasks.add(newSubTask);
    } else {
      updatedSubTasks[event.index] = updatedSubTasks[event.index].copyWith(
        title: event.title,
      );
    }

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
      if (state.isEditing) {
        await _taskService.updateTask(
          taskId: state.task!.id,
          title: state.title.trim(),
          description: state.description.trim().isEmpty
              ? null
              : state.description.trim(),
          dueDate: state.dueDate,
          priority: task_service.TaskPriority.values.firstWhere(
            (p) => p.name == state.priority.name,
            orElse: () => task_service.TaskPriority.medium,
          ),
          type: task_service.TaskType.values.firstWhere(
            (t) => t.name == state.taskType.name,
            orElse: () => task_service.TaskType.simple,
          ),
        );
      } else {
        await _taskService.createTask(
          homeId: state.home!.id,
          title: state.title.trim(),
          description: state.description.trim().isEmpty
              ? null
              : state.description.trim(),
          assignedToUserIds: state.assignedTo,
          dueDate: state.dueDate,
          priority: task_service.TaskPriority.values.firstWhere(
            (p) => p.name == state.priority.name,
            orElse: () => task_service.TaskPriority.medium,
          ),
          type: task_service.TaskType.values.firstWhere(
            (t) => t.name == state.taskType.name,
            orElse: () => task_service.TaskType.simple,
          ),
        );
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
