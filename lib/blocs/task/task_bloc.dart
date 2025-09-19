import 'dart:async';
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

  final HomeDocumentReference home;
  final TaskQueryDocumentSnapshot? existingTask;

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
      final availableMembers = <UserDocumentSnapshot>[];

      if (existingTask != null) {
        // Editing mode
        final task = existingTask!.data;
        emit(
          state.copyWith(
            uiStatus: TaskUiStatus.loaded,
            home: home,
            task: existingTask!.reference,
            title: task.title,
            description: task.description ?? '',
            dueDate: task.dueDate,
            priority: task.priority,
            assignedTo: task.assignedTo.map((ref) => ref.ref).toList(),
            subTasks: task.subTasks,
            createdBy: task.createdBy.ref,
            availableMembers: availableMembers.map((user) => user).toList(),
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
    final currentAssignees = List<UserDocumentReference>.from(state.assignedTo);
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
    final newSubTask = SubTask(title: event.title, isCompleted: false);
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
      updatedSubTasks.add(SubTask(title: event.title, isCompleted: false));
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
          task: state.task!.ref,
          title: state.title.trim(),
          description: state.description.trim().isEmpty
              ? null
              : state.description.trim(),
          assignedTo: state.assignedTo,
          dueDate: state.dueDate,
          priority: state.priority,
          type: state.taskType,
          subTasks: state.subTasks,
        );
      } else {
        await _taskService.createTask(
          home: state.home!,
          title: state.title.trim(),
          description: state.description.trim().isEmpty
              ? null
              : state.description.trim(),
          assignedTo: state.assignedTo,
          createdBy: state.createdBy!,
          dueDate: state.dueDate,
          priority: state.priority,
          type: state.taskType,
          subTasks: state.subTasks,
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
