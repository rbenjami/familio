import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:familio/data/models/models.dart';
import 'task_event.dart';

part 'task_state.freezed.dart';

@freezed
abstract class TaskState with _$TaskState {
  const factory TaskState({
    @Default([]) List<Task> tasks,
    @Default([]) List<Task> filteredTasks,
    @Default(TaskUiStatus.initial) TaskUiStatus uiStatus,
    String? error,
    String? currentHomeId,
    TaskFilters? filters,
    TaskSort? sort,
    @Default({}) Map<String, int> taskStats,
  }) = _TaskState;
}

@freezed
abstract class TaskFilters with _$TaskFilters {
  const factory TaskFilters({
    TaskStatus? status,
    String? assignedToId,
    Priority? priority,
    TaskType? type,
    @Default(false) bool showMyTasksOnly,
  }) = _TaskFilters;
}

@freezed
abstract class TaskSort with _$TaskSort {
  const factory TaskSort({
    @Default(TaskSortBy.createdAt) TaskSortBy sortBy,
    @Default(SortOrder.descending) SortOrder sortOrder,
  }) = _TaskSort;
}

enum TaskUiStatus {
  initial,
  loading,
  loaded,
  creating,
  updating,
  deleting,
  error,
}