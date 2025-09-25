import 'package:brick_offline_first_with_supabase/brick_offline_first_with_supabase.dart';
import 'package:brick_sqlite/brick_sqlite.dart';
import 'package:brick_supabase/brick_supabase.dart';
import 'package:familio/brick/models/home.model.dart';
import 'package:familio/brick/models/user.model.dart';

@ConnectOfflineFirstWithSupabase(
  supabaseConfig: SupabaseSerializable(tableName: 'home_members'),
)
class HomeMember extends OfflineFirstWithSupabaseModel {
  @Sqlite(index: true, unique: true)
  @Supabase(unique: true)
  final String id;
  @Supabase(foreignKey: 'home_id')
  final Home home;
  @Sqlite(ignore: true)
  String get homeId => home.id;
  @Supabase(foreignKey: 'user_id')
  final User user;
  @Sqlite(ignore: true)
  String get userId => user.id;
  final bool canCreateTasks;
  final bool canEditTasks;
  final bool canDeleteTasks;
  final bool canInviteMembers;
  final bool canViewAllCalendars;
  final bool isAdmin;
  final DateTime joinedAt;

  HomeMember({
    required this.id,
    required this.home,
    required this.user,
    required this.canCreateTasks,
    required this.canEditTasks,
    required this.canDeleteTasks,
    required this.canInviteMembers,
    required this.canViewAllCalendars,
    required this.isAdmin,
    required this.joinedAt,
  });
}
