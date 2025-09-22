// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Task _$TaskFromJson(Map<String, dynamic> json) => _Task(
  id: json['id'] as String,
  homeId: json['home_id'] as String,
  title: json['title'] as String,
  description: json['description'] as String?,
  createdById: json['created_by_id'] as String,
  status: TaskStatus.fromJson(json['status'] as String),
  dueDate: json['due_date'] == null
      ? null
      : DateTime.parse(json['due_date'] as String),
  priority: $enumDecode(_$PriorityEnumMap, json['priority']),
  startDate: json['start_date'] == null
      ? null
      : DateTime.parse(json['start_date'] as String),
  estimatedDurationMinutes: (json['estimated_duration_minutes'] as num?)
      ?.toInt(),
  location: json['location'] as String?,
  tags:
      (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
  createdAt: DateTime.parse(json['created_at'] as String),
  updatedAt: DateTime.parse(json['updated_at'] as String),
);

Map<String, dynamic> _$TaskToJson(_Task instance) => <String, dynamic>{
  'id': instance.id,
  'home_id': instance.homeId,
  'title': instance.title,
  'description': instance.description,
  'created_by_id': instance.createdById,
  'status': instance.status,
  'due_date': instance.dueDate?.toIso8601String(),
  'priority': _$PriorityEnumMap[instance.priority]!,
  'start_date': instance.startDate?.toIso8601String(),
  'estimated_duration_minutes': instance.estimatedDurationMinutes,
  'location': instance.location,
  'tags': instance.tags,
  'created_at': instance.createdAt.toIso8601String(),
  'updated_at': instance.updatedAt.toIso8601String(),
};

const _$PriorityEnumMap = {
  Priority.low: 'low',
  Priority.medium: 'medium',
  Priority.high: 'high',
  Priority.urgent: 'urgent',
};

_TaskAssignee _$TaskAssigneeFromJson(Map<String, dynamic> json) =>
    _TaskAssignee(
      id: json['id'] as String,
      taskId: json['task_id'] as String,
      userId: json['user_id'] as String,
      assignedAt: DateTime.parse(json['assigned_at'] as String),
    );

Map<String, dynamic> _$TaskAssigneeToJson(_TaskAssignee instance) =>
    <String, dynamic>{
      'id': instance.id,
      'task_id': instance.taskId,
      'user_id': instance.userId,
      'assigned_at': instance.assignedAt.toIso8601String(),
    };

_SubTask _$SubTaskFromJson(Map<String, dynamic> json) => _SubTask(
  id: json['id'] as String,
  taskId: json['task_id'] as String,
  title: json['title'] as String,
  isCompleted: json['is_completed'] as bool,
  orderIndex: (json['order_index'] as num).toInt(),
  createdAt: DateTime.parse(json['created_at'] as String),
  updatedAt: DateTime.parse(json['updated_at'] as String),
);

Map<String, dynamic> _$SubTaskToJson(_SubTask instance) => <String, dynamic>{
  'id': instance.id,
  'task_id': instance.taskId,
  'title': instance.title,
  'is_completed': instance.isCompleted,
  'order_index': instance.orderIndex,
  'created_at': instance.createdAt.toIso8601String(),
  'updated_at': instance.updatedAt.toIso8601String(),
};
