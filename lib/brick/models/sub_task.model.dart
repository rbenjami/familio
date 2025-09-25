import 'package:brick_offline_first_with_supabase/brick_offline_first_with_supabase.dart';
import 'package:brick_sqlite/brick_sqlite.dart';
import 'package:brick_supabase/brick_supabase.dart';
import 'package:familio/brick/models/task.model.dart';

@ConnectOfflineFirstWithSupabase(
  supabaseConfig: SupabaseSerializable(tableName: 'sub_tasks'),
)
class SubTask extends OfflineFirstWithSupabaseModel {
  @Sqlite(index: true, unique: true)
  @Supabase(unique: true)
  final String id;
  @Supabase(foreignKey: 'task_id')
  final Task task;
  @Sqlite(ignore: true)
  String get taskId => task.id;
  final String title;
  final bool isCompleted;
  final int orderIndex;
  final DateTime createdAt;
  final DateTime? updatedAt;

  SubTask({
    required this.id,
    required this.task,
    required this.title,
    required this.isCompleted,
    required this.orderIndex,
    required this.createdAt,
    this.updatedAt,
  });

  SubTask copyWith({
    String? id,
    Task? task,
    String? title,
    bool? isCompleted,
    int? orderIndex,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return SubTask(
      id: id ?? this.id,
      task: task ?? this.task,
      title: title ?? this.title,
      isCompleted: isCompleted ?? this.isCompleted,
      orderIndex: orderIndex ?? this.orderIndex,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}
