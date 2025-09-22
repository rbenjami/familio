import 'package:flutter/material.dart';
import 'package:familio/data/models/models.dart';

@immutable
sealed class TaskEvent {
  const TaskEvent();
}

class TaskInitialized extends TaskEvent {
  const TaskInitialized();
}

class TaskTitleChanged extends TaskEvent {
  final String title;

  const TaskTitleChanged(this.title);
}

class TaskDescriptionChanged extends TaskEvent {
  final String description;

  const TaskDescriptionChanged(this.description);
}

class TaskDueDateChanged extends TaskEvent {
  final DateTime? dueDate;

  const TaskDueDateChanged(this.dueDate);
}

class TaskPriorityChanged extends TaskEvent {
  final Priority priority;

  const TaskPriorityChanged(this.priority);
}

class TaskAssigneeToggled extends TaskEvent {
  final String user;

  const TaskAssigneeToggled(this.user);
}

class SubTaskRemoved extends TaskEvent {
  final String id;

  const SubTaskRemoved(this.id);
}

class SubTaskTitleChanged extends TaskEvent {
  final String id;
  final String title;

  const SubTaskTitleChanged(this.id, this.title);
}

class SubTaskToggled extends TaskEvent {
  final String id;
  final bool isCompleted;

  const SubTaskToggled(this.id, this.isCompleted);
}

class TaskSubmitted extends TaskEvent {}
