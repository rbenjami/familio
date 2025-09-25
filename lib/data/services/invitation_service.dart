import 'package:familio/brick/models/invitation.model.dart';
import 'package:familio/brick/models/home.model.dart';
import 'package:familio/brick/models/user.model.dart';
import 'package:familio/brick/repository.dart';
import 'package:familio/main.dart';
import 'package:injectable/injectable.dart';
import 'package:brick_core/core.dart';

@singleton
class InvitationService {
  final Repository _repository;

  InvitationService(this._repository);

  Future<Invitation> createInvitation({
    required String homeId,
    required String invitedById,
    String? invitedEmail,
    String? invitedUserName,
  }) async {
    try {
      logger.info('Creating invitation for home: $homeId');

      final invitationCode = _generateInvitationCode();
      final now = DateTime.now();
      final expiresAt = now.add(const Duration(days: 7));

      final invitation = await _repository.upsert<Invitation>(
        Invitation(
          id: '',
          home: Home.stub(homeId),
          invitedBy: User.stub(invitedById),
          invitedEmail: invitedEmail,
          invitedUserName: invitedUserName,
          invitationCode: invitationCode,
          status: InvitationStatus.pending,
          createdAt: now,
          expiresAt: expiresAt,
        ),
      );

      logger.info('Invitation created successfully: ${invitation.id}');
      return invitation;
    } catch (e, s) {
      logger.error('Error creating invitation: $e', e, s);
      rethrow;
    }
  }

  Future<Invitation?> getInvitationByCode(String invitationCode) async {
    try {
      logger.info('Fetching invitation by code: $invitationCode');

      final invitations = await _repository.get<Invitation>(
        query: Query(
          where: [Where('invitationCode').isExactly(invitationCode)],
        ),
      );

      if (invitations.isEmpty) {
        logger.info('No invitation found with code: $invitationCode');
        return null;
      }

      final invitation = invitations.first;

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
    } catch (e, s) {
      logger.error('Error fetching invitation by code: $e', e, s);
      rethrow;
    }
  }

  Future<Invitation> acceptInvitation({
    required String invitationId,
    required String acceptedById,
  }) async {
    try {
      logger.info('Accepting invitation: $invitationId');

      // Get existing invitation
      final existingInvitation = (await _repository.get<Invitation>(
        query: Query(where: [Where('id').isExactly(invitationId)]),
      )).first;

      if (existingInvitation.expiresAt.isBefore(DateTime.now())) {
        throw Exception('Invitation expired');
      }

      if (existingInvitation.status != InvitationStatus.pending) {
        throw Exception('Invitation not pending');
      }

      final invitation = await _repository.upsert<Invitation>(
        Invitation(
          id: existingInvitation.id,
          home: existingInvitation.home,
          invitedBy: existingInvitation.invitedBy,
          invitedEmail: existingInvitation.invitedEmail,
          invitedUserName: existingInvitation.invitedUserName,
          invitationCode: existingInvitation.invitationCode,
          status: InvitationStatus.accepted,
          createdAt: existingInvitation.createdAt,
          expiresAt: existingInvitation.expiresAt,
          acceptedAt: DateTime.now(),
          acceptedBy: User.stub(acceptedById),
        ),
      );

      logger.info('Invitation accepted successfully: $invitationId');
      return invitation;
    } catch (e, s) {
      logger.error('Error accepting invitation: $e', e, s);
      rethrow;
    }
  }

  Future<Invitation> rejectInvitation(String invitationId) async {
    try {
      logger.info('Rejecting invitation: $invitationId');

      // Get existing invitation
      final existingInvitation = (await _repository.get<Invitation>(
        query: Query(where: [Where('id').isExactly(invitationId)]),
      )).first;

      final invitation = await _repository.upsert<Invitation>(
        Invitation(
          id: existingInvitation.id,
          home: existingInvitation.home,
          invitedBy: existingInvitation.invitedBy,
          invitedEmail: existingInvitation.invitedEmail,
          invitedUserName: existingInvitation.invitedUserName,
          invitationCode: existingInvitation.invitationCode,
          status: InvitationStatus.rejected,
          createdAt: existingInvitation.createdAt,
          expiresAt: existingInvitation.expiresAt,
          acceptedAt: existingInvitation.acceptedAt,
          acceptedBy: existingInvitation.acceptedBy,
        ),
      );

      logger.info('Invitation rejected successfully: $invitationId');
      return invitation;
    } catch (e, s) {
      logger.error('Error rejecting invitation: $e', e, s);
      rethrow;
    }
  }

  Future<List<Invitation>> getInvitationsForHome(String homeId) async {
    try {
      logger.info('Fetching invitations for home: $homeId');

      final invitations = await _repository.get<Invitation>(
        query: Query(
          where: [Where('home', value: Where('id').isExactly(homeId))],
        ),
      );

      logger.info('Found ${invitations.length} invitations for home: $homeId');
      return invitations;
    } catch (e, s) {
      logger.error('Error fetching invitations for home: $e', e, s);
      rethrow;
    }
  }

  Future<List<Invitation>> getPendingInvitationsForUser(String userId) async {
    try {
      logger.info('Fetching pending invitations for user: $userId');

      final invitations = await _repository.get<Invitation>(
        query: Query(
          where: [
            Where('invited_by', value: Where('id').isExactly(userId)),
            Where('status').isExactly(InvitationStatus.pending),
          ],
        ),
      );

      logger.info(
        'Found ${invitations.length} pending invitations for user: $userId',
      );
      return invitations;
    } catch (e, s) {
      logger.error('Error fetching pending invitations for user: $e', e, s);
      rethrow;
    }
  }

  Future<void> deleteInvitation(String invitationId) async {
    try {
      logger.info('Deleting invitation: $invitationId');

      final invitation = (await _repository.get<Invitation>(
        query: Query(where: [Where('id').isExactly(invitationId)]),
      )).first;

      await _repository.delete<Invitation>(invitation);

      logger.info('Invitation deleted successfully: $invitationId');
    } catch (e, s) {
      logger.error('Error deleting invitation: $e', e, s);
      rethrow;
    }
  }

  Future<void> expireOldInvitations() async {
    try {
      logger.info('Expiring old invitations');

      final pendingInvitations = await _repository.get<Invitation>(
        query: Query(
          where: [Where('status').isExactly(InvitationStatus.pending)],
        ),
      );

      final now = DateTime.now();
      final expiredInvitations = pendingInvitations
          .where((invitation) => invitation.expiresAt.isBefore(now))
          .toList();

      for (final invitation in expiredInvitations) {
        await _repository.upsert<Invitation>(
          Invitation(
            id: invitation.id,
            home: invitation.home,
            invitedBy: invitation.invitedBy,
            invitedEmail: invitation.invitedEmail,
            invitedUserName: invitation.invitedUserName,
            invitationCode: invitation.invitationCode,
            status: InvitationStatus.expired,
            createdAt: invitation.createdAt,
            expiresAt: invitation.expiresAt,
            acceptedAt: invitation.acceptedAt,
            acceptedBy: invitation.acceptedBy,
          ),
        );
      }

      logger.info('Expired ${expiredInvitations.length} old invitations');
    } catch (e, s) {
      logger.error('Error expiring old invitations: $e', e, s);
      rethrow;
    }
  }

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
