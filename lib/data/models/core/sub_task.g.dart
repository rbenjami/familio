// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sub_task.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SubTask _$SubTaskFromJson(Map<String, dynamic> json) => _SubTask(
  title: json['title'] as String,
  isCompleted: json['isCompleted'] as bool? ?? false,
  note: json['note'] as String?,
);

Map<String, dynamic> _$SubTaskToJson(_SubTask instance) => <String, dynamic>{
  'title': instance.title,
  'isCompleted': instance.isCompleted,
  'note': instance.note,
};
