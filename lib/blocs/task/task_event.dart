import 'package:flutter/foundation.dart';
import 'package:familio/data/models/models.dart';

@immutable
sealed class TaskEvent {
  const TaskEvent();
}

class LoadTasks extends TaskEvent {
  final String homeId;
  final TaskStatus? status;
  final String? assignedToId;
  final Priority? priority;
  final TaskType? type;

  const LoadTasks({
    required this.homeId,
    this.status,
    this.assignedToId,
    this.priority,
    this.type,
  });
}

class CreateTask extends TaskEvent {
  final String homeId;
  final String title;
  final String? description;
  final List<String> assignedToIds;
  final String createdById;
  final DateTime? dueDate;
  final Priority priority;
  final TaskType type;
  final DateTime? startDate;
  final int? estimatedDurationMinutes;
  final List<SubTask>? subTasks;
  final List<String>? tags;
  final String? location;

  const CreateTask({
    required this.homeId,
    required this.title,
    this.description,
    required this.assignedToIds,
    required this.createdById,
    this.dueDate,
    this.priority = Priority.medium,
    this.type = TaskType.simple,
    this.startDate,
    this.estimatedDurationMinutes,
    this.subTasks,
    this.tags,
    this.location,
  });
}

class UpdateTask extends TaskEvent {
  final String homeId;
  final String taskId;
  final String? title;
  final String? description;
  final List<String>? assignedToIds;
  final TaskStatus? status;
  final DateTime? dueDate;
  final Priority? priority;
  final TaskType? type;
  final DateTime? startDate;
  final int? estimatedDurationMinutes;
  final List<SubTask>? subTasks;
  final List<String>? tags;
  final String? location;

  const UpdateTask({
    required this.homeId,
    required this.taskId,
    this.title,
    this.description,
    this.assignedToIds,
    this.status,
    this.dueDate,
    this.priority,
    this.type,
    this.startDate,
    this.estimatedDurationMinutes,
    this.subTasks,
    this.tags,
    this.location,
  });
}

class DeleteTask extends TaskEvent {
  final String homeId;
  final String taskId;

  const DeleteTask({
    required this.homeId,
    required this.taskId,
  });
}

class UpdateTaskStatus extends TaskEvent {
  final String homeId;
  final String taskId;
  final TaskStatus status;

  const UpdateTaskStatus({
    required this.homeId,
    required this.taskId,
    required this.status,
  });
}

class ToggleSubTask extends TaskEvent {
  final String homeId;
  final String taskId;
  final int subTaskIndex;

  const ToggleSubTask({
    required this.homeId,
    required this.taskId,
    required this.subTaskIndex,
  });
}

class ApplyFilters extends TaskEvent {
  final TaskStatus? status;
  final String? assignedToId;
  final Priority? priority;
  final TaskType? type;
  final bool? showMyTasksOnly;

  const ApplyFilters({
    this.status,
    this.assignedToId,
    this.priority,
    this.type,
    this.showMyTasksOnly,
  });
}

class ApplySorting extends TaskEvent {
  final TaskSortBy sortBy;
  final SortOrder sortOrder;

  const ApplySorting({
    required this.sortBy,
    required this.sortOrder,
  });
}

class ClearFilters extends TaskEvent {}

class RefreshTasks extends TaskEvent {}

enum TaskSortBy {
  createdAt,
  dueDate,
  priority,
  title,
  assignedTo,
  status,
}

enum SortOrder {
  ascending,
  descending,
}