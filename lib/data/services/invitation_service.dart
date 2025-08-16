import 'package:familio/main.dart';
import 'package:injectable/injectable.dart';
import 'package:uuid/uuid.dart';

import '../models/models.dart';

@singleton
class InvitationService {
  InvitationService();

  /// Create a new invitation
  Future<Invitation> createInvitation({
    required HomeDocumentReference home,
    required UserDocumentReference invitedBy,
    String? invitedEmail,
    String? invitedUserName,
  }) async {
    try {
      logger.info('Creating invitation for home: $home');

      final invitationCode = _generateInvitationCode();
      final now = DateTime.now();
      final expiresAt = now.add(const Duration(days: 7)); // Expire after 7 days

      final invitation = Invitation(
        id: const Uuid().v4(),
        home: home.reference,
        invitedEmail: invitedEmail,
        invitedUserName: invitedUserName,
        invitedBy: invitedBy.reference,
        status: InvitationStatus.pending,
        createdAt: now,
        expiresAt: expiresAt,
        invitationCode: invitationCode,
      );

      // Save to Firestore using ODM reference
      await invitationsRef.doc(invitation.id).set(invitation);

      logger.info('Invitation created successfully: ${invitation.id}');
      return invitation;
    } catch (e) {
      logger.error('Error creating invitation: $e');
      rethrow;
    }
  }

  /// Get invitation by code
  Future<InvitationDocumentSnapshot?> getInvitationByCode(
    String invitationCode,
  ) async {
    try {
      logger.info('Fetching invitation by code: $invitationCode');

      final querySnapshot = await invitationsRef
          .whereInvitationCode(isEqualTo: invitationCode)
          .get();

      if (querySnapshot.docs.isNotEmpty) {
        final invitation = querySnapshot.docs.first.data;

        // Check if invitation is still valid
        if (invitation.expiresAt.isBefore(DateTime.now())) {
          logger.info('Invitation expired: ${invitation.id}');
          return null;
        }

        if (invitation.status != InvitationStatus.pending) {
          logger.info('Invitation not pending: ${invitation.id}');
          return null;
        }

        logger.info('Valid invitation found: ${invitation.id}');
        return querySnapshot.docs.first;
      } else {
        logger.info('No invitation found with code: $invitationCode');
        return null;
      }
    } catch (e) {
      logger.error('Error fetching invitation by code: $e');
      rethrow;
    }
  }

  /// Accept an invitation
  Future<InvitationDocumentSnapshot> acceptInvitation(
    InvitationDocumentSnapshot invitation,
  ) async {
    try {
      logger.info('Accepting invitation: ${invitation.id}');

      if (!invitation.exists) {
        throw Exception('Invitation not found: ${invitation.id}');
      }

      final invitationData = invitation.data!;

      // Check if invitation is still valid
      if (invitationData.expiresAt.isBefore(DateTime.now())) {
        throw Exception('Invitation expired');
      }

      if (invitationData.status != InvitationStatus.pending) {
        throw Exception('Invitation not pending');
      }

      // Update invitation status
      final updatedInvitation = invitationData.copyWith(
        status: InvitationStatus.accepted,
      );

      await invitationsRef.doc(invitation.id).set(updatedInvitation);

      logger.info('Invitation accepted successfully: $invitation');
      return invitation;
    } catch (e) {
      logger.error('Error accepting invitation: $e');
      rethrow;
    }
  }

  /// Generate a random invitation code
  String _generateInvitationCode() {
    const chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
    const length = 8;

    final random = DateTime.now().millisecondsSinceEpoch;
    String code = '';

    for (int i = 0; i < length; i++) {
      code += chars[(random + i) % chars.length];
    }

    return code;
  }
}
