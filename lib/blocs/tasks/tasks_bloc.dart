import 'dart:async';
import 'package:familio/main.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import 'package:familio/data/services/task_service.dart';
import 'package:familio/data/models/models.dart';
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

      final tasksQuery = _taskService.getTasksQuery(
        home: event.home,
        filters: state.filters,
        sort: state.sort,
      );

      // Load task stats
      final stats = await _taskService.getTaskStats(homeId: event.home.id);
      emit(
        state.copyWith(
          home: event.home,
          taskStats: stats,
          tasksQuery: tasksQuery,
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
      await _taskService.updateTask(task: event.task, status: event.status);

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
      final updatedSubTasks = List<SubTask>.from(event.task.data()!.subTasks);
      updatedSubTasks[event.subTaskIndex] = updatedSubTasks[event.subTaskIndex]
          .copyWith(
            isCompleted: !updatedSubTasks[event.subTaskIndex].isCompleted,
          );
      await _taskService.updateTask(
        task: event.task.reference.ref,
        subTasks: updatedSubTasks,
      );

      logger.info('SubTask toggled successfully');
    } catch (e) {
      logger.error('Error toggling subtask: $e');
      emit(state.copyWith(uiStatus: TasksUiStatus.error, error: e.toString()));
    }
  }

  Future<void> _onDeleteTask(DeleteTask event, Emitter<TasksState> emit) async {
    try {
      emit(state.copyWith(uiStatus: TasksUiStatus.deleting));

      await _taskService.deleteTask(task: event.taskRef);

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
      assignedTo: event.assignedTo,
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
