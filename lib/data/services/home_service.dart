import 'package:familio/brick/models/home.model.dart';
import 'package:familio/brick/models/user.model.dart';
import 'package:familio/brick/models/home_member.model.dart';
import 'package:familio/brick/repository.dart';
import 'package:familio/main.dart';
import 'package:injectable/injectable.dart';
import 'package:brick_core/core.dart';

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
  final Repository _repository;

  HomeService(this._repository);

  Future<Home> createHome({
    required String name,
    required String ownerId,
    String? description,
  }) async {
    try {
      logger.info('Creating home: $name for owner: $ownerId');

      final home = await _repository.upsert<Home>(
        Home(
          id: '',
          name: name,
          description: description,
          owner: User.stub(ownerId),
          allowMemberInvite: true,
          createdAt: DateTime.now(),
          updatedAt: DateTime.now(),
        ),
      );

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

      final member = await _repository.upsert<HomeMember>(
        HomeMember(
          id: '',
          home: Home.stub(homeId),
          user: User.stub(userId),
          canCreateTasks: permissions.canCreateTasks,
          canEditTasks: permissions.canEditTasks,
          canDeleteTasks: permissions.canDeleteTasks,
          canInviteMembers: permissions.canInviteMembers,
          canViewAllCalendars: permissions.canViewAllCalendars,
          isAdmin: permissions.isAdmin,
          joinedAt: DateTime.now(),
        ),
      );

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

      // Get home members for this user, then extract the homes
      final members = await _repository.get<HomeMember>(
        query: Query(
          where: [Where('user', value: Where('id').isExactly(userId))],
        ),
      );

      final homes = members.map((member) => member.home).toList();
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

      final home = (await _repository.get<Home>(
        query: Query(where: [Where('id').isExactly(homeId)]),
      )).first;

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

      final members = await _repository.get<HomeMember>(
        query: Query(
          where: [
            Where('home', value: Where('id').isExactly(homeId)),
            Where('user', value: Where('id').isExactly(userId)),
          ],
        ),
      );

      if (members.isEmpty) {
        logger.info('User is not a member of this home');
        return null;
      }

      final member = members.first;
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

      final members = await _repository.get<HomeMember>(
        query: Query(
          where: [Where('home', value: Where('id').isExactly(homeId))],
        ),
      );
      logger.info('Found ${members.length} members for home: $homeId');
      return members;
    } catch (e, s) {
      logger.error('Error fetching home members: $e', e, s);
      rethrow;
    }
  }

  Future<List<User>> getHomeUserMembers(String homeId) async {
    try {
      logger.info('Fetching users for home: $homeId');

      final members = await _repository.get<HomeMember>(
        query: Query(
          where: [Where('home', value: Where('id').isExactly(homeId))],
        ),
      );

      final users = members.map((member) => member.user).toList();
      logger.info('Found ${users.length} users for home: $homeId');
      return users;
    } catch (e, s) {
      logger.error('Error fetching home users: $e', e, s);
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

      // First get the existing home
      final existingHome = (await _repository.get<Home>(
        query: Query(where: [Where('id').isExactly(homeId)]),
      )).first;

      final home = await _repository.upsert<Home>(
        Home(
          id: existingHome.id,
          name: name ?? existingHome.name,
          description: description ?? existingHome.description,
          owner: existingHome.owner,
          allowMemberInvite:
              allowMemberInvite ?? existingHome.allowMemberInvite,
          createdAt: existingHome.createdAt,
          updatedAt: DateTime.now(),
        ),
      );
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

      final members = await _repository.get<HomeMember>(
        query: Query(
          where: [
            Where('home', value: Where('id').isExactly(homeId)),
            Where('user', value: Where('id').isExactly(userId)),
          ],
        ),
      );

      if (members.isNotEmpty) {
        await _repository.delete<HomeMember>(members.first);
      }

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
