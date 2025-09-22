import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:familio/data/models/models.dart';

part 'tasks_state.freezed.dart';

enum TasksUiStatus { initial, loading, loaded, deleting, error }

@freezed
abstract class TasksState with _$TasksState {
  const factory TasksState({
    Home? home,
    @Default(TasksUiStatus.initial) TasksUiStatus uiStatus,
    @Default([]) List<Task> tasks,
    @Default({}) Map<String, int> taskStats,
    TaskFilters? filters,
    TaskSort? sort,
    String? error,
  }) = _TasksState;
}

// Additional classes for filtering and sorting
enum TaskSortBy { createdAt, dueDate, priority, title, assignedTo, status }

enum SortOrder { ascending, descending }

class TaskFilters {
  final TaskStatus? status;
  final String? assignedToUserId;
  final Priority? priority;
  final bool showMyTasksOnly;

  const TaskFilters({
    this.status,
    this.assignedToUserId,
    this.priority,
    this.showMyTasksOnly = false,
  });
}

class TaskSort {
  final TaskSortBy sortBy;
  final SortOrder sortOrder;

  const TaskSort({
    this.sortBy = TaskSortBy.createdAt,
    this.sortOrder = SortOrder.descending,
  });
}
