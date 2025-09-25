import 'package:brick_offline_first_with_supabase/brick_offline_first_with_supabase.dart';
import 'package:brick_sqlite/brick_sqlite.dart';
import 'package:brick_supabase/brick_supabase.dart';
import 'package:familio/brick/models/event.model.dart';
import 'package:familio/brick/models/user.model.dart';

@ConnectOfflineFirstWithSupabase(
  supabaseConfig: SupabaseSerializable(tableName: 'event_attendees'),
)
class EventAttendee extends OfflineFirstWithSupabaseModel {
  @Sqlite(index: true, unique: true)
  @Supabase(unique: true)
  final String id;
  @Supabase(foreignKey: 'event_id')
  final Event event;
  @Sqlite(ignore: true)
  String get eventId => event.id;
  @Supabase(foreignKey: 'user_id')
  final User user;
  @Sqlite(ignore: true)
  String get userId => user.id;
  final DateTime? createdAt;

  EventAttendee({
    required this.id,
    required this.event,
    required this.user,
    this.createdAt,
  });
}
