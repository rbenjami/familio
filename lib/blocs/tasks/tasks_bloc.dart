import 'dart:async';
import 'package:familio/data/services/task_service.dart';
import 'package:familio/main.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import 'tasks_event.dart';
import 'tasks_state.dart';

@singleton
class TasksBloc extends Bloc<TasksEvent, TasksState> {
  final TaskService _taskService;

  TasksBloc(this._taskService) : super(const TasksState()) {
    on<LoadTasks>(_onLoadTasks);
    on<UpdateTaskStatus>(_onUpdateTaskStatus);
    on<ToggleSubTask>(_onToggleSubTask);
    on<DeleteTask>(_onDeleteTask);
    on<ApplyFilters>(_onApplyFilters);
    on<ApplySorting>(_onApplySorting);
    on<ClearFilters>(_onClearFilters);
  }

  Future<void> _onLoadTasks(LoadTasks event, Emitter<TasksState> emit) async {
    try {
      emit(state.copyWith(uiStatus: TasksUiStatus.loading));

      final tasks = await _taskService.getTasksForHome(
        homeId: event.home.id,
        status: state.filters?.status != null
            ? TaskStatus.values.firstWhere(
                (s) => s.name == state.filters!.status!.name,
                orElse: () => TaskStatus.pending,
              )
            : null,
        assignedToUserId: state.filters?.assignedToUserId,
        priority: state.filters?.priority != null
            ? TaskPriority.values.firstWhere(
                (p) => p.name == state.filters!.priority!.name,
                orElse: () => TaskPriority.medium,
              )
            : null,
        type: state.filters?.type != null
            ? TaskType.values.firstWhere(
                (t) => t.name == state.filters!.type!.name,
                orElse: () => TaskType.simple,
              )
            : null,
      );

      // Load task stats
      final stats = await _taskService.getTaskStats(homeId: event.home.id);
      emit(
        state.copyWith(
          home: event.home,
          taskStats: stats,
          tasks: tasks,
          uiStatus: TasksUiStatus.loaded,
        ),
      );
    } catch (e) {
      logger.error('Error in _onLoadTasks: $e');
      emit(state.copyWith(uiStatus: TasksUiStatus.error, error: e.toString()));
    }
  }

  Future<void> _onUpdateTaskStatus(
    UpdateTaskStatus event,
    Emitter<TasksState> emit,
  ) async {
    try {
      await _taskService.updateTask(
        taskId: event.task.id,
        status: TaskStatus.values.firstWhere(
          (s) => s.name == event.status.name,
          orElse: () => TaskStatus.pending,
        ),
      );

      logger.info('Task status updated successfully');

      // Refresh stats
      // final stats = await _taskService.getTaskStats(homeId: event.homeId);
      // emit(state.copyWith(taskStats: stats));
    } catch (e) {
      logger.error('Error updating task status: $e');
      emit(state.copyWith(uiStatus: TasksUiStatus.error, error: e.toString()));
    }
  }

  Future<void> _onToggleSubTask(
    ToggleSubTask event,
    Emitter<TasksState> emit,
  ) async {
    try {
      // For now, just log the action - implement subtask toggling later
      logger.info('SubTask toggle requested for task: ${event.task.id}');

      logger.info('SubTask toggled successfully');
    } catch (e) {
      logger.error('Error toggling subtask: $e');
      emit(state.copyWith(uiStatus: TasksUiStatus.error, error: e.toString()));
    }
  }

  Future<void> _onDeleteTask(DeleteTask event, Emitter<TasksState> emit) async {
    try {
      emit(state.copyWith(uiStatus: TasksUiStatus.deleting));

      await _taskService.deleteTask(event.taskRef.id);

      logger.info('Task deleted successfully');
      emit(state.copyWith(uiStatus: TasksUiStatus.loaded));

      // Refresh stats
      // final stats = await _taskService.getTaskStats(
      //   homeId: state.currentHomeId!,
      // );
      // emit(state.copyWith(taskStats: stats));
    } catch (e) {
      logger.error('Error deleting task: $e');
      emit(state.copyWith(uiStatus: TasksUiStatus.error, error: e.toString()));
    }
  }

  void _onApplyFilters(ApplyFilters event, Emitter<TasksState> emit) {
    final filters = TaskFilters(
      status: event.status,
      assignedToUserId: event.assignedToUserId,
      priority: event.priority,
      type: event.type,
      showMyTasksOnly: event.showMyTasksOnly ?? false,
    );

    emit(state.copyWith(filters: filters));
    if (state.home != null) {
      add(LoadTasks(home: state.home!));
    }
  }

  void _onApplySorting(ApplySorting event, Emitter<TasksState> emit) {
    final sort = TaskSort(sortBy: event.sortBy, sortOrder: event.sortOrder);

    emit(state.copyWith(sort: sort));
    if (state.home != null) {
      add(LoadTasks(home: state.home!));
    }
  }

  void _onClearFilters(ClearFilters event, Emitter<TasksState> emit) {
    const filters = TaskFilters();
    const sort = TaskSort();

    emit(state.copyWith(filters: filters, sort: sort));
    if (state.home != null) {
      add(LoadTasks(home: state.home!));
    }
  }
}
