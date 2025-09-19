import 'package:freezed_annotation/freezed_annotation.dart';

part 'sub_task.freezed.dart';
part 'sub_task.g.dart';

@freezed
abstract class SubTask with _$SubTask {
  const factory SubTask({
    required String title,
    @Default(false) bool isCompleted,
    String? note,
  }) = _SubTask;

  factory SubTask.fromJson(Map<String, Object?> json) =>
      _$SubTaskFromJson(json);
}
