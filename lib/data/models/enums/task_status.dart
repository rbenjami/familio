import 'package:freezed_annotation/freezed_annotation.dart';

part 'task_status.g.dart';

@JsonEnum(fieldRename: FieldRename.snake, alwaysCreate: true)
enum TaskStatus {
  pending,
  inProgress,
  completed,
  cancelled;

  String toJson() => _$TaskStatusEnumMap[this]!;

  factory TaskStatus.fromJson(String name) =>
      _$TaskStatusEnumMap.entries.firstWhere((e) => e.value == name).key;
}
