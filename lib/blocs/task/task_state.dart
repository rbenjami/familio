import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:familio/data/models/models.dart';

part 'task_state.freezed.dart';

enum TaskUiStatus {
  initial,
  loading,
  loaded,
  creating,
  created,
  updating,
  updated,
  deleting,
  deleted,
  error,
}

@freezed
abstract class TaskState with _$TaskState {
  const factory TaskState({
    @Default(TaskUiStatus.initial) TaskUiStatus uiStatus,
    @Default('') String title,
    @Default('') String description,
    DateTime? dueDate,
    @Default(Priority.medium) Priority priority,
    @Default([]) List<String> assignedTo,
    @Default([]) List<SubTask> subTasks,
    Home? home,
    Task? task, // null for creation, set for editing
    @Default([]) List<User> availableMembers,
    String? error,
    @Default(false) bool hasUnsavedChanges,
  }) = _TaskState;

  const TaskState._();

  bool get isEditing => task != null;
  bool get isValid => title.trim().isNotEmpty;

  TaskType get taskType {
    if (subTasks.isNotEmpty) return TaskType.checklist;
    if (dueDate != null) return TaskType.scheduled;
    return TaskType.simple;
  }

  Task toTask() {
    return Task(
      id: task?.id ?? '',
      homeId: home?.id ?? '',
      title: title.trim(),
      description: description.trim().isEmpty ? null : description.trim(),
      createdById: createdBy ?? '',
      status: TaskStatus.todo.name,
      dueDate: dueDate,
      priority: priority.name,
      taskType: taskType.name,
      startDate: null,
      estimatedDurationMinutes: null,
      location: null,
      tags: [],
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    );
  }
}
