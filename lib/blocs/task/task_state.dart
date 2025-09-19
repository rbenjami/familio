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
    @Default([]) List<UserDocumentReference> assignedTo,
    @Default([]) List<SubTask> subTasks,
    HomeDocumentReference? home,
    TaskDocumentReference? task, // null for creation, set for editing
    UserDocumentReference? createdBy, // required for Task creation
    @Default([]) List<UserDocumentSnapshot> availableMembers,
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
      id: task?.id ?? 'unset',
      title: title.trim(),
      description: description.trim().isEmpty ? null : description.trim(),
      status: TaskStatus.todo,
      priority: priority,
      type: taskType,
      assignedTo: assignedTo.map((ref) => ref.reference).toList(),
      subTasks: subTasks,
      dueDate: dueDate,
      createdBy: createdBy!.reference,
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    );
  }
}
