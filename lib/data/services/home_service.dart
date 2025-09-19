import 'package:familio/data/models/supabase/home.dart';
import 'package:familio/main.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class HomeMemberPermissions {
  final bool canCreateTasks;
  final bool canEditTasks;
  final bool canDeleteTasks;
  final bool canInviteMembers;
  final bool canViewAllCalendars;
  final bool isAdmin;

  const HomeMemberPermissions({
    required this.canCreateTasks,
    required this.canEditTasks,
    required this.canDeleteTasks,
    required this.canInviteMembers,
    required this.canViewAllCalendars,
    required this.isAdmin,
  });
}

@singleton
class HomeService {
  final SupabaseClient _client;

  HomeService(this._client);

  Future<Home> createHome({
    required String name,
    required String ownerId,
    String? description,
  }) async {
    try {
      logger.info('Creating home: $name for owner: $ownerId');

      final response = await _client
          .from('homes')
          .insert({
            'name': name,
            'description': description,
            'owner_id': ownerId,
            'allow_member_invite': true,
          })
          .select()
          .single();

      final home = Home.fromJson(response);

      await addMemberToHome(
        homeId: home.id,
        userId: ownerId,
        permissions: const HomeMemberPermissions(
          canCreateTasks: true,
          canEditTasks: true,
          canDeleteTasks: true,
          canInviteMembers: true,
          canViewAllCalendars: true,
          isAdmin: true,
        ),
      );

      logger.info('Home created successfully: ${home.id}');
      return home;
    } catch (e, s) {
      logger.error('Error creating home: $e', e, s);
      rethrow;
    }
  }

  Future<HomeMember> addMemberToHome({
    required String homeId,
    required String userId,
    required HomeMemberPermissions permissions,
  }) async {
    try {
      logger.info('Adding member $userId to home $homeId');

      final response = await _client
          .from('home_members')
          .insert({
            'home_id': homeId,
            'user_id': userId,
            'can_create_tasks': permissions.canCreateTasks,
            'can_edit_tasks': permissions.canEditTasks,
            'can_delete_tasks': permissions.canDeleteTasks,
            'can_invite_members': permissions.canInviteMembers,
            'can_view_all_calendars': permissions.canViewAllCalendars,
            'is_admin': permissions.isAdmin,
          })
          .select()
          .single();

      final member = HomeMember.fromJson(response);
      logger.info('Member added successfully to home: $homeId');
      return member;
    } catch (e, s) {
      logger.error('Error adding member to home: $e', e, s);
      rethrow;
    }
  }

  Future<List<Home>> getUserHomes(String userId) async {
    try {
      logger.info('Fetching homes for user: $userId');

      final response = await _client
          .from('homes')
          .select('''
            *,
            home_members!inner(user_id)
          ''')
          .eq('home_members.user_id', userId);

      final homes = response.map((json) => Home.fromJson(json)).toList();
      logger.info('Found ${homes.length} homes for user: $userId');
      return homes;
    } catch (e, s) {
      logger.error('Error fetching user homes: $e', e, s);
      rethrow;
    }
  }

  Future<Home> getHomeById(String homeId) async {
    try {
      logger.info('Fetching home: $homeId');

      final response = await _client
          .from('homes')
          .select()
          .eq('id', homeId)
          .single();

      final home = Home.fromJson(response);
      logger.info('Home found: ${home.name}');
      return home;
    } catch (e, s) {
      logger.error('Error fetching home: $e', e, s);
      rethrow;
    }
  }

  Future<HomeMember?> getUserPermissions({
    required String homeId,
    required String userId,
  }) async {
    try {
      logger.info('Getting user permissions for home: $homeId, user: $userId');

      final response = await _client
          .from('home_members')
          .select()
          .eq('home_id', homeId)
          .eq('user_id', userId)
          .maybeSingle();

      if (response == null) {
        logger.info('User is not a member of this home');
        return null;
      }

      final member = HomeMember.fromJson(response);
      logger.info('Found permissions for user in home');
      return member;
    } catch (e, s) {
      logger.error('Error getting user permissions: $e', e, s);
      rethrow;
    }
  }

  Future<List<HomeMember>> getHomeMembers(String homeId) async {
    try {
      logger.info('Fetching members for home: $homeId');

      final response = await _client
          .from('home_members')
          .select()
          .eq('home_id', homeId);

      final members = response
          .map((json) => HomeMember.fromJson(json))
          .toList();
      logger.info('Found ${members.length} members for home: $homeId');
      return members;
    } catch (e, s) {
      logger.error('Error fetching home members: $e', e, s);
      rethrow;
    }
  }

  Future<Home> updateHome({
    required String homeId,
    String? name,
    String? description,
    bool? allowMemberInvite,
  }) async {
    try {
      logger.info('Updating home: $homeId');

      final updateData = <String, dynamic>{};
      if (name != null) updateData['name'] = name;
      if (description != null) updateData['description'] = description;
      if (allowMemberInvite != null)
        updateData['allow_member_invite'] = allowMemberInvite;

      final response = await _client
          .from('homes')
          .update(updateData)
          .eq('id', homeId)
          .select()
          .single();

      final home = Home.fromJson(response);
      logger.info('Home updated successfully: ${home.id}');
      return home;
    } catch (e, s) {
      logger.error('Error updating home: $e', e, s);
      rethrow;
    }
  }

  Future<void> removeMemberFromHome({
    required String homeId,
    required String userId,
  }) async {
    try {
      logger.info('Removing member $userId from home $homeId');

      await _client
          .from('home_members')
          .delete()
          .eq('home_id', homeId)
          .eq('user_id', userId);

      logger.info('Member removed successfully from home: $homeId');
    } catch (e, s) {
      logger.error('Error removing member from home: $e', e, s);
      rethrow;
    }
  }

  HomeMemberPermissions getDefaultMemberPermissions() {
    return const HomeMemberPermissions(
      canCreateTasks: true,
      canEditTasks: false,
      canDeleteTasks: false,
      canInviteMembers: false,
      canViewAllCalendars: true,
      isAdmin: false,
    );
  }
}
