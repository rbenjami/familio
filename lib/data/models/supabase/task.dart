import 'package:familio/data/models/enums/priority.dart';
import 'package:familio/data/models/enums/task_status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'task.freezed.dart';
part 'task.g.dart';

@freezed
abstract class Task with _$Task {
  const factory Task({
    required String id,
    required String homeId,
    required String title,
    String? description,
    required String createdById,
    required TaskStatus status,
    DateTime? dueDate,
    required Priority priority,
    DateTime? startDate,
    int? estimatedDurationMinutes,
    String? location,
    @Default([]) List<String> tags,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _Task;

  factory Task.fromJson(Map<String, dynamic> json) => _$TaskFromJson(json);
}

@freezed
abstract class TaskAssignee with _$TaskAssignee {
  const factory TaskAssignee({
    required String id,
    required String taskId,
    required String userId,
    required DateTime assignedAt,
  }) = _TaskAssignee;

  factory TaskAssignee.fromJson(Map<String, dynamic> json) =>
      _$TaskAssigneeFromJson(json);
}

@freezed
abstract class SubTask with _$SubTask {
  const factory SubTask({
    required String id,
    required String taskId,
    required String title,
    required bool isCompleted,
    required int orderIndex,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _SubTask;

  factory SubTask.fromJson(Map<String, dynamic> json) =>
      _$SubTaskFromJson(json);
}
