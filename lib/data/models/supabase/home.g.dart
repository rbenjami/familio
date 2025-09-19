// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Home _$HomeFromJson(Map<String, dynamic> json) => _Home(
  id: json['id'] as String,
  name: json['name'] as String,
  description: json['description'] as String?,
  ownerId: json['owner_id'] as String,
  allowMemberInvite: json['allow_member_invite'] as bool,
  createdAt: DateTime.parse(json['created_at'] as String),
  updatedAt: DateTime.parse(json['updated_at'] as String),
);

Map<String, dynamic> _$HomeToJson(_Home instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'description': instance.description,
  'owner_id': instance.ownerId,
  'allow_member_invite': instance.allowMemberInvite,
  'created_at': instance.createdAt.toIso8601String(),
  'updated_at': instance.updatedAt.toIso8601String(),
};

_HomeMember _$HomeMemberFromJson(Map<String, dynamic> json) => _HomeMember(
  id: json['id'] as String,
  homeId: json['home_id'] as String,
  userId: json['user_id'] as String,
  canCreateTasks: json['can_create_tasks'] as bool,
  canEditTasks: json['can_edit_tasks'] as bool,
  canDeleteTasks: json['can_delete_tasks'] as bool,
  canInviteMembers: json['can_invite_members'] as bool,
  canViewAllCalendars: json['can_view_all_calendars'] as bool,
  isAdmin: json['is_admin'] as bool,
  joinedAt: DateTime.parse(json['joined_at'] as String),
);

Map<String, dynamic> _$HomeMemberToJson(_HomeMember instance) =>
    <String, dynamic>{
      'id': instance.id,
      'home_id': instance.homeId,
      'user_id': instance.userId,
      'can_create_tasks': instance.canCreateTasks,
      'can_edit_tasks': instance.canEditTasks,
      'can_delete_tasks': instance.canDeleteTasks,
      'can_invite_members': instance.canInviteMembers,
      'can_view_all_calendars': instance.canViewAllCalendars,
      'is_admin': instance.isAdmin,
      'joined_at': instance.joinedAt.toIso8601String(),
    };
