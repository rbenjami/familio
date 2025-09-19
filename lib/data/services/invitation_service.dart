import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:talker/talker.dart';

import '../models/models.dart';

enum InvitationStatus { pending, accepted, rejected, expired }

@singleton
class InvitationService {
  final SupabaseClient _client;
  final Talker _talker;

  InvitationService(this._client, this._talker);

  Future<Invitation> createInvitation({
    required String homeId,
    required String invitedById,
    String? invitedEmail,
    String? invitedUserName,
  }) async {
    try {
      _talker.info('Creating invitation for home: $homeId');

      final invitationCode = _generateInvitationCode();
      final now = DateTime.now();
      final expiresAt = now.add(const Duration(days: 7));

      final response = await _client
          .from('invitations')
          .insert({
            'home_id': homeId,
            'invited_by_id': invitedById,
            'invited_email': invitedEmail,
            'invited_user_name': invitedUserName,
            'invitation_code': invitationCode,
            'status': InvitationStatus.pending.name,
            'expires_at': expiresAt.toIso8601String(),
          })
          .select()
          .single();

      final invitation = Invitation.fromJson(response);
      _talker.info('Invitation created successfully: ${invitation.id}');
      return invitation;
    } catch (e, s) {
      _talker.error('Error creating invitation: $e', e, s);
      rethrow;
    }
  }

  Future<Invitation?> getInvitationByCode(String invitationCode) async {
    try {
      _talker.info('Fetching invitation by code: $invitationCode');

      final response = await _client
          .from('invitations')
          .select()
          .eq('invitation_code', invitationCode)
          .maybeSingle();

      if (response == null) {
        _talker.info('No invitation found with code: $invitationCode');
        return null;
      }

      final invitation = Invitation.fromJson(response);

      if (invitation.expiresAt.isBefore(DateTime.now())) {
        _talker.info('Invitation expired: ${invitation.id}');
        return null;
      }

      if (invitation.status != InvitationStatus.pending.name) {
        _talker.info('Invitation not pending: ${invitation.id}');
        return null;
      }

      _talker.info('Valid invitation found: ${invitation.id}');
      return invitation;
    } catch (e, s) {
      _talker.error('Error fetching invitation by code: $e', e, s);
      rethrow;
    }
  }

  Future<Invitation> acceptInvitation({
    required String invitationId,
    required String acceptedById,
  }) async {
    try {
      _talker.info('Accepting invitation: $invitationId');

      final invitation = await _client
          .from('invitations')
          .select()
          .eq('id', invitationId)
          .single();

      final invitationData = Invitation.fromJson(invitation);

      if (invitationData.expiresAt.isBefore(DateTime.now())) {
        throw Exception('Invitation expired');
      }

      if (invitationData.status != InvitationStatus.pending.name) {
        throw Exception('Invitation not pending');
      }

      final response = await _client
          .from('invitations')
          .update({
            'status': InvitationStatus.accepted.name,
            'accepted_at': DateTime.now().toIso8601String(),
            'accepted_by_id': acceptedById,
          })
          .eq('id', invitationId)
          .select()
          .single();

      final updatedInvitation = Invitation.fromJson(response);
      _talker.info('Invitation accepted successfully: $invitationId');
      return updatedInvitation;
    } catch (e, s) {
      _talker.error('Error accepting invitation: $e', e, s);
      rethrow;
    }
  }

  Future<Invitation> rejectInvitation(String invitationId) async {
    try {
      _talker.info('Rejecting invitation: $invitationId');

      final response = await _client
          .from('invitations')
          .update({'status': InvitationStatus.rejected.name})
          .eq('id', invitationId)
          .select()
          .single();

      final invitation = Invitation.fromJson(response);
      _talker.info('Invitation rejected successfully: $invitationId');
      return invitation;
    } catch (e, s) {
      _talker.error('Error rejecting invitation: $e', e, s);
      rethrow;
    }
  }

  Future<List<Invitation>> getInvitationsForHome(String homeId) async {
    try {
      _talker.info('Fetching invitations for home: $homeId');

      final response = await _client
          .from('invitations')
          .select()
          .eq('home_id', homeId)
          .order('created_at', ascending: false);

      final invitations = response
          .map((json) => Invitation.fromJson(json))
          .toList();
      _talker.info('Found ${invitations.length} invitations for home: $homeId');
      return invitations;
    } catch (e, s) {
      _talker.error('Error fetching invitations for home: $e', e, s);
      rethrow;
    }
  }

  Future<List<Invitation>> getPendingInvitationsForUser(String userId) async {
    try {
      _talker.info('Fetching pending invitations for user: $userId');

      final response = await _client
          .from('invitations')
          .select()
          .eq('invited_by_id', userId)
          .eq('status', InvitationStatus.pending.name)
          .order('created_at', ascending: false);

      final invitations = response
          .map((json) => Invitation.fromJson(json))
          .toList();
      _talker.info(
        'Found ${invitations.length} pending invitations for user: $userId',
      );
      return invitations;
    } catch (e, s) {
      _talker.error('Error fetching pending invitations for user: $e', e, s);
      rethrow;
    }
  }

  Future<void> deleteInvitation(String invitationId) async {
    try {
      _talker.info('Deleting invitation: $invitationId');

      await _client.from('invitations').delete().eq('id', invitationId);

      _talker.info('Invitation deleted successfully: $invitationId');
    } catch (e, s) {
      _talker.error('Error deleting invitation: $e', e, s);
      rethrow;
    }
  }

  Future<void> expireOldInvitations() async {
    try {
      _talker.info('Expiring old invitations');

      await _client
          .from('invitations')
          .update({'status': InvitationStatus.expired.name})
          .lt('expires_at', DateTime.now().toIso8601String())
          .eq('status', InvitationStatus.pending.name);

      _talker.info('Old invitations expired successfully');
    } catch (e, s) {
      _talker.error('Error expiring old invitations: $e', e, s);
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
