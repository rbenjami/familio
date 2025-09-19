import 'package:freezed_annotation/freezed_annotation.dart';

part 'home.freezed.dart';
part 'home.g.dart';

@freezed
abstract class Home with _$Home {
  const factory Home({
    required String id,
    required String name,
    String? description,
    required String ownerId,
    required bool allowMemberInvite,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _Home;

  factory Home.fromJson(Map<String, dynamic> json) => _$HomeFromJson(json);
}

@freezed
abstract class HomeMember with _$HomeMember {
  const factory HomeMember({
    required String id,
    required String homeId,
    required String userId,
    required bool canCreateTasks,
    required bool canEditTasks,
    required bool canDeleteTasks,
    required bool canInviteMembers,
    required bool canViewAllCalendars,
    required bool isAdmin,
    required DateTime joinedAt,
  }) = _HomeMember;

  factory HomeMember.fromJson(Map<String, dynamic> json) =>
      _$HomeMemberFromJson(json);
}
