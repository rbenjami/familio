import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:familio/data/models/models.dart';

part 'tasks_state.freezed.dart';

enum TasksUiStatus { initial, loading, loaded, deleting, error }

@freezed
abstract class TasksState with _$TasksState {
  const factory TasksState({
    HomeDocumentReference? home,
    @Default(TasksUiStatus.initial) TasksUiStatus uiStatus,
    TaskQuery? tasksQuery,
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
  final UserDocumentReference? assignedTo;
  final Priority? priority;
  final TaskType? type;
  final bool showMyTasksOnly;

  const TaskFilters({
    this.status,
    this.assignedTo,
    this.priority,
    this.type,
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
