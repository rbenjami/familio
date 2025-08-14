import 'package:familio/main.dart';
import 'package:injectable/injectable.dart';
import 'package:uuid/uuid.dart';

import '../models/models.dart';

@singleton
class InvitationService {
  InvitationService();

  /// Create a new invitation
  Future<Invitation> createInvitation({
    required String homeId,
    required String invitedBy,
    String? invitedEmail,
    String? invitedUserName,
  }) async {
    try {
      logger.info('Creating invitation for home: $homeId');
      
      final invitationCode = _generateInvitationCode();
      final now = DateTime.now();
      final expiresAt = now.add(const Duration(days: 7)); // Expire after 7 days
      
      final invitation = Invitation(
        id: const Uuid().v4(),
        homeId: homeId,
        invitedEmail: invitedEmail,
        invitedUserName: invitedUserName,
        invitedBy: invitedBy,
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
  Future<Invitation?> getInvitationByCode(String invitationCode) async {
    try {
      logger.info('Fetching invitation by code: $invitationCode');
      
      final querySnapshot = await invitationsRef.whereInvitationCode(isEqualTo: invitationCode).get();
      
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
        return invitation;
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
  Future<Invitation> acceptInvitation(String invitationId, String acceptedByUserId) async {
    try {
      logger.info('Accepting invitation: $invitationId');
      
      final invitationDoc = await invitationsRef.doc(invitationId).get();
      if (!invitationDoc.exists) {
        throw Exception('Invitation not found: $invitationId');
      }
      
      final invitation = invitationDoc.data!;
      
      // Check if invitation is still valid
      if (invitation.expiresAt.isBefore(DateTime.now())) {
        throw Exception('Invitation expired');
      }
      
      if (invitation.status != InvitationStatus.pending) {
        throw Exception('Invitation not pending');
      }
      
      // Update invitation status
      final updatedInvitation = invitation.copyWith(
        status: InvitationStatus.accepted,
      );
      
      await invitationsRef.doc(invitationId).set(updatedInvitation);
      
      logger.info('Invitation accepted successfully: $invitationId');
      return updatedInvitation;
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