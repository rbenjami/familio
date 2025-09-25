import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:familio/brick/models/models.dart';

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
    @Default([]) List<User> availableUserMembers,
    String? error,
    @Default(false) bool hasUnsavedChanges,
  }) = _TaskState;

  const TaskState._();

  bool get isEditing => task != null;
  bool get isValid => title.trim().isNotEmpty;
}
