import 'package:brick_offline_first_with_supabase/brick_offline_first_with_supabase.dart';
import 'package:brick_sqlite/brick_sqlite.dart';
import 'package:brick_supabase/brick_supabase.dart';
import 'package:familio/brick/models/user.model.dart';
import 'package:familio/brick/models/home.model.dart';

enum CalendarType { internal, google, outlook, apple }

@ConnectOfflineFirstWithSupabase(
  supabaseConfig: SupabaseSerializable(tableName: 'calendars'),
)
class Calendar extends OfflineFirstWithSupabaseModel {
  @Sqlite(index: true, unique: true)
  @Supabase(unique: true)
  final String id;
  @Supabase(foreignKey: 'user_id')
  final User user;
  @Sqlite(ignore: true)
  String get userId => user.id;
  final String name;
  final bool isVisibleInHome;
  final String color;
  @Supabase(enumAsString: true)
  final CalendarType calendarType;
  final String? externalId;
  final String? accessToken;
  final String? refreshToken;
  final DateTime? lastSyncAt;
  final bool syncEnabled;
  @Supabase(foreignKey: 'home_id')
  final Home? home;
  @Sqlite(ignore: true)
  String? get homeId => home?.id;
  final DateTime createdAt;
  final DateTime updatedAt;

  Calendar({
    required this.id,
    required this.user,
    required this.name,
    required this.isVisibleInHome,
    required this.color,
    required this.calendarType,
    this.externalId,
    this.accessToken,
    this.refreshToken,
    this.lastSyncAt,
    required this.syncEnabled,
    this.home,
    required this.createdAt,
    required this.updatedAt,
  });
}
