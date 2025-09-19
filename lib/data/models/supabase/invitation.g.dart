// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invitation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Invitation _$InvitationFromJson(Map<String, dynamic> json) => _Invitation(
  id: json['id'] as String,
  homeId: json['home_id'] as String,
  invitedById: json['invited_by_id'] as String,
  invitedEmail: json['invited_email'] as String?,
  invitedUserName: json['invited_user_name'] as String?,
  invitationCode: json['invitation_code'] as String,
  status: json['status'] as String,
  createdAt: DateTime.parse(json['created_at'] as String),
  expiresAt: DateTime.parse(json['expires_at'] as String),
  acceptedAt: json['accepted_at'] == null
      ? null
      : DateTime.parse(json['accepted_at'] as String),
  acceptedById: json['accepted_by_id'] as String?,
);

Map<String, dynamic> _$InvitationToJson(_Invitation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'home_id': instance.homeId,
      'invited_by_id': instance.invitedById,
      'invited_email': instance.invitedEmail,
      'invited_user_name': instance.invitedUserName,
      'invitation_code': instance.invitationCode,
      'status': instance.status,
      'created_at': instance.createdAt.toIso8601String(),
      'expires_at': instance.expiresAt.toIso8601String(),
      'accepted_at': instance.acceptedAt?.toIso8601String(),
      'accepted_by_id': instance.acceptedById,
    };

_Relationship _$RelationshipFromJson(Map<String, dynamic> json) =>
    _Relationship(
      id: json['id'] as String,
      user1Id: json['user1_id'] as String,
      user2Id: json['user2_id'] as String,
      relationshipType: json['relationship_type'] as String,
      homeId: json['home_id'] as String?,
      createdAt: DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$RelationshipToJson(_Relationship instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user1_id': instance.user1Id,
      'user2_id': instance.user2Id,
      'relationship_type': instance.relationshipType,
      'home_id': instance.homeId,
      'created_at': instance.createdAt.toIso8601String(),
    };
