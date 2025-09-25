import 'package:brick_offline_first_with_supabase/brick_offline_first_with_supabase.dart';
import 'package:brick_sqlite/brick_sqlite.dart';
import 'package:brick_supabase/brick_supabase.dart';
import 'package:familio/brick/models/task.model.dart';
import 'package:familio/brick/models/user.model.dart';

@ConnectOfflineFirstWithSupabase(
  supabaseConfig: SupabaseSerializable(tableName: 'task_assignees'),
)
class TaskAssignee extends OfflineFirstWithSupabaseModel {
  @Sqlite(index: true, unique: true)
  @Supabase(unique: true)
  final String id;
  @Supabase(foreignKey: 'task_id')
  final Task task;
  @Sqlite(ignore: true)
  String get taskId => task.id;
  @Supabase(foreignKey: 'user_id')
  final User user;
  @Sqlite(ignore: true)
  String get userId => user.id;

  final DateTime assignedAt;

  TaskAssignee({
    required this.id,
    required this.task,
    required this.user,
    required this.assignedAt,
  });
}
