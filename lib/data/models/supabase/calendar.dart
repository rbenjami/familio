import 'package:freezed_annotation/freezed_annotation.dart';

part 'calendar.freezed.dart';
part 'calendar.g.dart';

@freezed
abstract class Calendar with _$Calendar {
  const factory Calendar({
    required String id,
    required String userId,
    required String name,
    required bool isVisibleInHome,
    required String color,
    required String calendarType,
    String? externalId,
    String? accessToken,
    String? refreshToken,
    DateTime? lastSyncAt,
    required bool syncEnabled,
    String? homeId,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _Calendar;

  factory Calendar.fromJson(Map<String, dynamic> json) =>
      _$CalendarFromJson(json);
}

@freezed
abstract class Event with _$Event {
  const factory Event({
    required String id,
    required String calendarId,
    required String title,
    String? description,
    required DateTime startDate,
    DateTime? endDate,
    required bool isAllDay,
    required String source,
    String? externalEventId,
    required bool canEdit,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _Event;

  factory Event.fromJson(Map<String, dynamic> json) =>
      _$EventFromJson(json);
}

@freezed
abstract class EventAttendee with _$EventAttendee {
  const factory EventAttendee({
    required String id,
    required String eventId,
    required String userId,
    required DateTime createdAt,
  }) = _EventAttendee;

  factory EventAttendee.fromJson(Map<String, dynamic> json) =>
      _$EventAttendeeFromJson(json);
}
