import 'package:brick_offline_first_with_supabase/brick_offline_first_with_supabase.dart';
import 'package:brick_sqlite/brick_sqlite.dart';
import 'package:brick_supabase/brick_supabase.dart';
import 'package:familio/brick/models/calendar.model.dart';

enum EventSource { internal, externalSynced }

@ConnectOfflineFirstWithSupabase(
  supabaseConfig: SupabaseSerializable(tableName: 'events'),
)
class Event extends OfflineFirstWithSupabaseModel {
  @Sqlite(index: true, unique: true)
  @Supabase(unique: true)
  final String id;
  @Supabase(foreignKey: 'calendar_id')
  final Calendar calendar;
  @Sqlite(ignore: true)
  String get calendarId => calendar.id;
  final String title;
  final String? description;
  final DateTime startDate;
  final DateTime? endDate;
  final bool? isAllDay;
  @Supabase(enumAsString: true)
  final EventSource? source;
  final String? externalEventId;
  final bool? canEdit;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  Event({
    required this.id,
    required this.calendar,
    required this.title,
    this.description,
    required this.startDate,
    this.endDate,
    this.isAllDay,
    this.source,
    this.externalEventId,
    this.canEdit,
    this.createdAt,
    this.updatedAt,
  });
}
