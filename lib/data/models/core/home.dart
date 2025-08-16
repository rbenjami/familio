// ignore_for_file: invalid_annotation_target

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:familio/data/models/converters.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:familio/data/models/models.dart';

part 'home.freezed.dart';
part 'home.g.dart';

@freezed
abstract class Home with _$Home {
  @firestoreSerializable
  const factory Home({
    @Id() @Default('unset') @JsonKey(includeToJson: false) String id,
    required String name,
    String? description,
    required DateTime createdAt,
    required DocumentReference<User> owner,
    required HomeSettings settings,
  }) = _Home;

  factory Home.fromJson(Map<String, Object?> json) => _$HomeFromJson(json);
}

@freezed
abstract class HomeSettings with _$HomeSettings {
  @firestoreSerializable
  const factory HomeSettings({required bool allowMemberInvite}) = _HomeSettings;

  factory HomeSettings.fromJson(Map<String, Object?> json) =>
      _$HomeSettingsFromJson(json);
}

@freezed
abstract class Member with _$Member {
  @firestoreSerializable
  const factory Member({
    required MemberPermissions permissions,
    required DateTime joinedAt,
  }) = _Member;

  factory Member.fromJson(Map<String, Object?> json) => _$MemberFromJson(json);
}

@freezed
abstract class MemberPermissions with _$MemberPermissions {
  @firestoreSerializable
  const factory MemberPermissions({
    required bool canCreateTasks,
    required bool canEditTasks,
    required bool canDeleteTasks,
    required bool canInviteMembers,
    required bool canViewAllCalendars,
    required bool isAdmin,
  }) = _MemberPermissions;

  factory MemberPermissions.fromJson(Map<String, Object?> json) =>
      _$MemberPermissionsFromJson(json);
}

@freezed
abstract class Task with _$Task {
  @firestoreSerializable
  const factory Task({
    @Id() @Default('unset') @JsonKey(includeToJson: false) String id,
    required String title,
    String? description,
    required List<DocumentReference<User>> assignedTo,
    required DocumentReference<User> createdBy,
    required TaskStatus status,
    DateTime? dueDate,
    required Priority priority,
    required DateTime createdAt,
    required DateTime updatedAt,
    @Default(TaskType.simple) TaskType type,
    DateTime? startDate,
    int? estimatedDurationMinutes,
    @Default([]) List<SubTask> subTasks,
    @Default([]) List<String> tags,
    String? location,
  }) = _Task;

  factory Task.fromJson(Map<String, Object?> json) => _$TaskFromJson(json);
}

@Collection<Home>('homes')
@Collection<Member>('homes/*/members')
@Collection<Task>('homes/*/tasks')
final homesRef = HomeCollectionReference();

extension DocumentReferenceHomeExtension on DocumentReference<Home> {
  HomeDocumentReference get ref => homesRef.doc(id);
}

extension TaskDocumentReferenceExtension on TaskDocumentReference {
  TaskDocumentReference get ref => home.tasks.doc(id);
  HomeDocumentReference get home => homesRef.doc(parent.parent.id);
  DocumentReference<Home> get homeRef => home.reference;
}

extension DocumentReferenceTaskExtension on DocumentReference<Task> {
  TaskDocumentReference get ref =>
      homesRef.doc(parent.parent!.id).tasks.doc(id);
}

extension DocumentSnapshotTaskExtension on DocumentSnapshot<Task> {
  TaskDocumentSnapshot get snapshot => TaskDocumentSnapshot._(this);
}

extension QueryDocumentSnapshotTaskExtension on QueryDocumentSnapshot<Task> {
  TaskQueryDocumentSnapshot get snapshot => TaskQueryDocumentSnapshot._(this);
}
