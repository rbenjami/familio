import 'package:familio/blocs/tasks/tasks_state.dart';
import 'package:flutter/material.dart';
import 'package:familio/data/models/models.dart';

@immutable
sealed class TasksEvent {
  const TasksEvent();
}

class LoadTasks extends TasksEvent {
  final Home home;
  const LoadTasks({required this.home});
}

class UpdateTaskStatus extends TasksEvent {
  final Task task;
  final TaskStatus status;

  const UpdateTaskStatus({required this.task, required this.status});
}

class ToggleSubTask extends TasksEvent {
  final Task task;
  final int subTaskIndex;

  const ToggleSubTask({required this.task, required this.subTaskIndex});
}

class DeleteTask extends TasksEvent {
  final Task taskRef;

  const DeleteTask({required this.taskRef});
}

class ApplyFilters extends TasksEvent {
  final TaskStatus? status;
  final String? assignedToUserId;
  final Priority? priority;
  final TaskType? type;
  final bool? showMyTasksOnly;

  const ApplyFilters({
    this.status,
    this.assignedToUserId,
    this.priority,
    this.type,
    this.showMyTasksOnly,
  });
}

class ApplySorting extends TasksEvent {
  final TaskSortBy sortBy;
  final SortOrder sortOrder;

  const ApplySorting({required this.sortBy, required this.sortOrder});
}

class ClearFilters extends TasksEvent {}
