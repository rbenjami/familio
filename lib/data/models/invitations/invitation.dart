import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:familio/data/models/models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'invitation.freezed.dart';
part 'invitation.g.dart';

@freezed
abstract class Invitation with _$Invitation {
  // ignore: invalid_annotation_target
  @firestoreSerializable
  const factory Invitation({
    @Id() required String id,
    required String homeId,
    String? invitedEmail,
    String? invitedUserName,
    required String invitedBy,
    required InvitationStatus status,
    required DateTime createdAt,
    required DateTime expiresAt,
    required String invitationCode,
  }) = _Invitation;

  factory Invitation.fromJson(Map<String, Object?> json) =>
      _$InvitationFromJson(json);
}

@Collection<Invitation>('invitations')
final invitationsRef = InvitationCollectionReference();
