// ignore_for_file: invalid_annotation_target

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:familio/data/models/enums/calendar_type.dart';
import 'package:familio/data/models/models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
abstract class User with _$User {
  @firestoreSerializable
  const factory User({
    @Id() @Default('unset') @JsonKey(includeToJson: false) String id,
    required String name,
    String? avatar,
    DateTime? birthDate,
    String? firebaseAuthId,
    List<String>? relationshipIds,
  }) = _User;

  factory User.fromJson(Map<String, Object?> json) => _$UserFromJson(json);
}

@freezed
abstract class Calendar with _$Calendar {
  @firestoreSerializable
  const factory Calendar({
    @Id() @Default('unset') @JsonKey(includeToJson: false) String id,
    required String name,
    required bool isVisibleInHome,
    required String color,
    required CalendarType type,
    // For external calendars
    String? externalId,
    String? accessToken,
    String? refreshToken,
    DateTime? lastSyncAt,
    @Default(true) bool syncEnabled,
    // For internal calendars
    String? homeId,
  }) = _Calendar;

  factory Calendar.fromJson(Map<String, Object?> json) =>
      _$CalendarFromJson(json);
}

@freezed
abstract class Event with _$Event {
  @firestoreSerializable
  const factory Event({
    @Id() @Default('unset') @JsonKey(includeToJson: false) String id,
    required String title,
    String? description,
    required DateTime startDate,
    DateTime? endDate,
    required bool isAllDay,
    required EventSource source,
    String? externalEventId,
    required bool canEdit,
    List<String>? attendeeUserIds,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _Event;

  factory Event.fromJson(Map<String, Object?> json) => _$EventFromJson(json);
}

@Collection<User>('users')
@Collection<Calendar>('users/*/calendars')
@Collection<Event>('users/*/calendars/*/events')
final usersRef = UserCollectionReference();
