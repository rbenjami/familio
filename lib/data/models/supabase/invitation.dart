import 'package:freezed_annotation/freezed_annotation.dart';

part 'invitation.freezed.dart';
part 'invitation.g.dart';

@freezed
abstract class Invitation with _$Invitation {
  const factory Invitation({
    required String id,
    required String homeId,
    required String invitedById,
    String? invitedEmail,
    String? invitedUserName,
    required String invitationCode,
    required String status,
    required DateTime createdAt,
    required DateTime expiresAt,
    DateTime? acceptedAt,
    String? acceptedById,
  }) = _Invitation;

  factory Invitation.fromJson(Map<String, dynamic> json) =>
      _$InvitationFromJson(json);
}

@freezed
abstract class Relationship with _$Relationship {
  const factory Relationship({
    required String id,
    required String user1Id,
    required String user2Id,
    required String relationshipType,
    String? homeId,
    required DateTime createdAt,
  }) = _Relationship;

  factory Relationship.fromJson(Map<String, dynamic> json) =>
      _$RelationshipFromJson(json);
}
