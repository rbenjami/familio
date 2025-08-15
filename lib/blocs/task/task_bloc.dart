import 'dart:async';
import 'package:familio/main.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import 'package:familio/data/services/task_service.dart';
import 'package:familio/data/models/models.dart';
import 'task_event.dart';
import 'task_state.dart';

@singleton
class TaskBloc extends Bloc<TaskEvent, TaskState> {
  final TaskService _taskService;
  StreamSubscription<List<Task>>? _tasksSubscription;

  TaskBloc(this._taskService) : super(const TaskState()) {
    on<LoadTasks>(_onLoadTasks);
    on<CreateTask>(_onCreateTask);
    on<UpdateTask>(_onUpdateTask);
    on<DeleteTask>(_onDeleteTask);
    on<UpdateTaskStatus>(_onUpdateTaskStatus);
    on<ToggleSubTask>(_onToggleSubTask);
    on<ApplyFilters>(_onApplyFilters);
    on<ApplySorting>(_onApplySorting);
    on<ClearFilters>(_onClearFilters);
    on<RefreshTasks>(_onRefreshTasks);
  }

  @override
  Future<void> close() {
    _tasksSubscription?.cancel();
    return super.close();
  }

  Future<void> _onLoadTasks(LoadTasks event, Emitter<TaskState> emit) async {
    try {
      emit(
        state.copyWith(
          uiStatus: TaskUiStatus.loading,
          currentHomeId: event.homeId,
        ),
      );

      await _tasksSubscription?.cancel();

      _tasksSubscription = _taskService
          .getTasksStream(
            homeId: event.homeId,
            status: event.status,
            assignedToId: event.assignedToId,
            priority: event.priority,
            type: event.type,
          )
          .listen(
            (tasks) {
              final filteredTasks = _applyFiltersAndSorting(
                tasks,
                state.filters,
                state.sort,
              );

              emit(
                state.copyWith(
                  tasks: tasks,
                  filteredTasks: filteredTasks,
                  uiStatus: TaskUiStatus.loaded,
                ),
              );
            },
            onError: (error) {
              logger.error('Error loading tasks: $error');
              emit(
                state.copyWith(
                  uiStatus: TaskUiStatus.error,
                  error: error.toString(),
                ),
              );
            },
          );

      // Load task stats
      final stats = await _taskService.getTaskStats(homeId: event.homeId);
      emit(state.copyWith(taskStats: stats));
    } catch (e) {
      logger.error('Error in _onLoadTasks: $e');
      emit(state.copyWith(uiStatus: TaskUiStatus.error, error: e.toString()));
    }
  }

  Future<void> _onCreateTask(CreateTask event, Emitter<TaskState> emit) async {
    try {
      emit(state.copyWith(uiStatus: TaskUiStatus.creating));

      await _taskService.createTask(
        homeId: event.homeId,
        title: event.title,
        description: event.description,
        assignedToIds: event.assignedToIds,
        createdById: event.createdById,
        dueDate: event.dueDate,
        priority: event.priority,
        type: event.type,
        startDate: event.startDate,
        estimatedDurationMinutes: event.estimatedDurationMinutes,
        subTasks: event.subTasks,
        tags: event.tags,
        location: event.location,
      );

      logger.info('Task created successfully');
      emit(state.copyWith(uiStatus: TaskUiStatus.loaded));

      // Refresh stats
      final stats = await _taskService.getTaskStats(homeId: event.homeId);
      emit(state.copyWith(taskStats: stats));
    } catch (e) {
      logger.error('Error creating task: $e');
      emit(state.copyWith(uiStatus: TaskUiStatus.error, error: e.toString()));
    }
  }

  Future<void> _onUpdateTask(UpdateTask event, Emitter<TaskState> emit) async {
    try {
      emit(state.copyWith(uiStatus: TaskUiStatus.updating));

      await _taskService.updateTask(
        homeId: event.homeId,
        taskId: event.taskId,
        title: event.title,
        description: event.description,
        assignedToIds: event.assignedToIds,
        status: event.status,
        dueDate: event.dueDate,
        priority: event.priority,
        type: event.type,
        startDate: event.startDate,
        estimatedDurationMinutes: event.estimatedDurationMinutes,
        subTasks: event.subTasks,
        tags: event.tags,
        location: event.location,
      );

      logger.info('Task updated successfully');
      emit(state.copyWith(uiStatus: TaskUiStatus.loaded));

      // Refresh stats
      final stats = await _taskService.getTaskStats(homeId: event.homeId);
      emit(state.copyWith(taskStats: stats));
    } catch (e) {
      logger.error('Error updating task: $e');
      emit(state.copyWith(uiStatus: TaskUiStatus.error, error: e.toString()));
    }
  }

  Future<void> _onDeleteTask(DeleteTask event, Emitter<TaskState> emit) async {
    try {
      emit(state.copyWith(uiStatus: TaskUiStatus.deleting));

      await _taskService.deleteTask(homeId: event.homeId, taskId: event.taskId);

      logger.info('Task deleted successfully');
      emit(state.copyWith(uiStatus: TaskUiStatus.loaded));

      // Refresh stats
      final stats = await _taskService.getTaskStats(homeId: event.homeId);
      emit(state.copyWith(taskStats: stats));
    } catch (e) {
      logger.error('Error deleting task: $e');
      emit(state.copyWith(uiStatus: TaskUiStatus.error, error: e.toString()));
    }
  }

  Future<void> _onUpdateTaskStatus(
    UpdateTaskStatus event,
    Emitter<TaskState> emit,
  ) async {
    try {
      await _taskService.updateTaskStatus(
        homeId: event.homeId,
        taskId: event.taskId,
        status: event.status,
      );

      logger.info('Task status updated successfully');

      // Refresh stats
      final stats = await _taskService.getTaskStats(homeId: event.homeId);
      emit(state.copyWith(taskStats: stats));
    } catch (e) {
      logger.error('Error updating task status: $e');
      emit(state.copyWith(uiStatus: TaskUiStatus.error, error: e.toString()));
    }
  }

  Future<void> _onToggleSubTask(
    ToggleSubTask event,
    Emitter<TaskState> emit,
  ) async {
    try {
      await _taskService.toggleSubTaskCompletion(
        homeId: event.homeId,
        taskId: event.taskId,
        subTaskIndex: event.subTaskIndex,
      );

      logger.info('SubTask toggled successfully');
    } catch (e) {
      logger.error('Error toggling subtask: $e');
      emit(state.copyWith(uiStatus: TaskUiStatus.error, error: e.toString()));
    }
  }

  void _onApplyFilters(ApplyFilters event, Emitter<TaskState> emit) {
    final filters = TaskFilters(
      status: event.status,
      assignedToId: event.assignedToId,
      priority: event.priority,
      type: event.type,
      showMyTasksOnly: event.showMyTasksOnly ?? false,
    );

    final filteredTasks = _applyFiltersAndSorting(
      state.tasks,
      filters,
      state.sort,
    );

    emit(state.copyWith(filters: filters, filteredTasks: filteredTasks));
  }

  void _onApplySorting(ApplySorting event, Emitter<TaskState> emit) {
    final sort = TaskSort(sortBy: event.sortBy, sortOrder: event.sortOrder);

    final filteredTasks = _applyFiltersAndSorting(
      state.tasks,
      state.filters,
      sort,
    );

    emit(state.copyWith(sort: sort, filteredTasks: filteredTasks));
  }

  void _onClearFilters(ClearFilters event, Emitter<TaskState> emit) {
    const filters = TaskFilters();
    const sort = TaskSort();

    final filteredTasks = _applyFiltersAndSorting(state.tasks, filters, sort);

    emit(
      state.copyWith(
        filters: filters,
        sort: sort,
        filteredTasks: filteredTasks,
      ),
    );
  }

  Future<void> _onRefreshTasks(
    RefreshTasks event,
    Emitter<TaskState> emit,
  ) async {
    if (state.currentHomeId != null) {
      add(LoadTasks(homeId: state.currentHomeId!));
    }
  }

  List<Task> _applyFiltersAndSorting(
    List<Task> tasks,
    TaskFilters? filters,
    TaskSort? sort,
  ) {
    var filteredTasks = List<Task>.from(tasks);

    // Apply filters
    if (filters != null) {
      if (filters.status != null) {
        filteredTasks = filteredTasks
            .where((task) => task.status == filters.status)
            .toList();
      }
      if (filters.assignedToId != null) {
        filteredTasks = filteredTasks
            .where((task) => task.assignedToIds.contains(filters.assignedToId))
            .toList();
      }
      if (filters.priority != null) {
        filteredTasks = filteredTasks
            .where((task) => task.priority == filters.priority)
            .toList();
      }
      if (filters.type != null) {
        filteredTasks = filteredTasks
            .where((task) => task.type == filters.type)
            .toList();
      }
    }

    // Apply sorting
    if (sort != null) {
      filteredTasks.sort((a, b) {
        int comparison = 0;

        switch (sort.sortBy) {
          case TaskSortBy.createdAt:
            comparison = a.createdAt.compareTo(b.createdAt);
            break;
          case TaskSortBy.dueDate:
            if (a.dueDate != null && b.dueDate != null) {
              comparison = a.dueDate!.compareTo(b.dueDate!);
            } else if (a.dueDate != null) {
              comparison = -1;
            } else if (b.dueDate != null) {
              comparison = 1;
            }
            break;
          case TaskSortBy.priority:
            comparison = a.priority.index.compareTo(b.priority.index);
            break;
          case TaskSortBy.title:
            comparison = a.title.compareTo(b.title);
            break;
          case TaskSortBy.assignedTo:
            final aAssigned = a.assignedToIds.isEmpty
                ? ''
                : a.assignedToIds.first;
            final bAssigned = b.assignedToIds.isEmpty
                ? ''
                : b.assignedToIds.first;
            comparison = aAssigned.compareTo(bAssigned);
            break;
          case TaskSortBy.status:
            comparison = a.status.index.compareTo(b.status.index);
            break;
        }

        return sort.sortOrder == SortOrder.ascending ? comparison : -comparison;
      });
    }

    return filteredTasks;
  }
}
