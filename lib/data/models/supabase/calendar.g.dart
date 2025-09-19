// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calendar.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Calendar _$CalendarFromJson(Map<String, dynamic> json) => _Calendar(
  id: json['id'] as String,
  userId: json['user_id'] as String,
  name: json['name'] as String,
  isVisibleInHome: json['is_visible_in_home'] as bool,
  color: json['color'] as String,
  calendarType: json['calendar_type'] as String,
  externalId: json['external_id'] as String?,
  accessToken: json['access_token'] as String?,
  refreshToken: json['refresh_token'] as String?,
  lastSyncAt: json['last_sync_at'] == null
      ? null
      : DateTime.parse(json['last_sync_at'] as String),
  syncEnabled: json['sync_enabled'] as bool,
  homeId: json['home_id'] as String?,
  createdAt: DateTime.parse(json['created_at'] as String),
  updatedAt: DateTime.parse(json['updated_at'] as String),
);

Map<String, dynamic> _$CalendarToJson(_Calendar instance) => <String, dynamic>{
  'id': instance.id,
  'user_id': instance.userId,
  'name': instance.name,
  'is_visible_in_home': instance.isVisibleInHome,
  'color': instance.color,
  'calendar_type': instance.calendarType,
  'external_id': instance.externalId,
  'access_token': instance.accessToken,
  'refresh_token': instance.refreshToken,
  'last_sync_at': instance.lastSyncAt?.toIso8601String(),
  'sync_enabled': instance.syncEnabled,
  'home_id': instance.homeId,
  'created_at': instance.createdAt.toIso8601String(),
  'updated_at': instance.updatedAt.toIso8601String(),
};

_Event _$EventFromJson(Map<String, dynamic> json) => _Event(
  id: json['id'] as String,
  calendarId: json['calendar_id'] as String,
  title: json['title'] as String,
  description: json['description'] as String?,
  startDate: DateTime.parse(json['start_date'] as String),
  endDate: json['end_date'] == null
      ? null
      : DateTime.parse(json['end_date'] as String),
  isAllDay: json['is_all_day'] as bool,
  source: json['source'] as String,
  externalEventId: json['external_event_id'] as String?,
  canEdit: json['can_edit'] as bool,
  createdAt: DateTime.parse(json['created_at'] as String),
  updatedAt: DateTime.parse(json['updated_at'] as String),
);

Map<String, dynamic> _$EventToJson(_Event instance) => <String, dynamic>{
  'id': instance.id,
  'calendar_id': instance.calendarId,
  'title': instance.title,
  'description': instance.description,
  'start_date': instance.startDate.toIso8601String(),
  'end_date': instance.endDate?.toIso8601String(),
  'is_all_day': instance.isAllDay,
  'source': instance.source,
  'external_event_id': instance.externalEventId,
  'can_edit': instance.canEdit,
  'created_at': instance.createdAt.toIso8601String(),
  'updated_at': instance.updatedAt.toIso8601String(),
};

_EventAttendee _$EventAttendeeFromJson(Map<String, dynamic> json) =>
    _EventAttendee(
      id: json['id'] as String,
      eventId: json['event_id'] as String,
      userId: json['user_id'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$EventAttendeeToJson(_EventAttendee instance) =>
    <String, dynamic>{
      'id': instance.id,
      'event_id': instance.eventId,
      'user_id': instance.userId,
      'created_at': instance.createdAt.toIso8601String(),
    };
