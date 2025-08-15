import 'package:familio/main.dart';
import 'package:injectable/injectable.dart';

import '../models/models.dart';

@singleton
class HomeService {
  HomeService();

  /// Create a new home
  Future<Home> createHome({
    required String name,
    required String ownerId,
    String? description,
  }) async {
    try {
      logger.info('Creating home: $name for owner: $ownerId');

      final now = DateTime.now();

      final home = Home(
        name: name,
        description: description,
        createdAt: now,
        ownerId: ownerId,
        settings: const HomeSettings(allowMemberInvite: true),
      );

      // Save to Firestore using ODM reference
      final homeId = (await homesRef.add(home)).id;

      // Create member document for the owner
      final ownerMember = Member(
        userId: ownerId,
        permissions: MemberPermissions(
          canCreateTasks: true,
          canEditTasks: true,
          canDeleteTasks: true,
          canInviteMembers: true,
          canViewAllCalendars: true,
          isAdmin: true,
        ),
        joinedAt: now,
      );

      await homesRef.doc(homeId).members.doc(ownerId).set(ownerMember);

      logger.info('Home created successfully: $homeId');
      return home.copyWith(id: homeId);
    } catch (e) {
      logger.error('Error creating home: $e');
      rethrow;
    }
  }

  /// Add member to home
  Future<void> addMemberToHome({
    required String homeId,
    required String userId,
    required MemberPermissions permissions,
  }) async {
    try {
      logger.info('Adding member $userId to home $homeId');

      // Get the home document
      final homeRef = homesRef.doc(homeId);
      final homeDoc = await homeRef.get();

      if (!homeDoc.exists) {
        throw Exception('Home not found: $homeId');
      }

      final members = await homeRef.members.get();

      // Check if user is already a member
      if (members.docs.any((doc) => doc.id == userId)) {
        logger.info('User already a member of home: $userId');
        return;
      }

      // Create member document
      final member = Member(
        userId: userId,
        permissions: permissions,
        joinedAt: DateTime.now(),
      );

      await homeRef.members.doc(userId).set(member);

      logger.info('Member added successfully to home: $homeId');
    } catch (e) {
      logger.error('Error adding member to home: $e');
      rethrow;
    }
  }

  /// Get home by ID
  Future<Home?> getHomeById(String homeId) async {
    try {
      logger.info('Fetching home: $homeId');

      final homeDoc = await homesRef.doc(homeId).get();

      if (homeDoc.exists) {
        final home = homeDoc.data!;
        logger.info('Home found: ${home.name}');
        return home;
      } else {
        logger.info('No home found with ID: $homeId');
        return null;
      }
    } catch (e) {
      logger.error('Error fetching home: $e');
      rethrow;
    }
  }

  /// Get homes by IDs
  Future<List<Home>> getHomesByIds(List<String> homeIds) async {
    try {
      logger.info('Fetching homes for homes: $homeIds ');

      final homes = await homesRef.whereDocumentId(whereIn: homeIds).get();
      logger.info('Found ${homes.docs.length} of ${homeIds.length} homes');
      return homes.docs.map((doc) => doc.data).toList();
    } catch (e) {
      logger.error('Error fetching homes: $e');
      rethrow;
    }
  }

  /// Get homes stream where user is a member
  Stream<List<Home>> getUserHomesStream(String userId) {
    try {
      logger.info('Getting homes stream for user: $userId');

      return homesRef.snapshots().asyncMap((homesSnapshot) async {
        final userHomes = <Home>[];

        // Check each home to see if user is a member
        for (final homeDoc in homesSnapshot.docs) {
          final home = homeDoc.data;
          final membersSnapshot = await homesRef.doc(home.id).members.get();

          // Check if user is a member of this home
          final isMember = membersSnapshot.docs.any(
            (memberDoc) => memberDoc.id == userId,
          );

          if (isMember) {
            userHomes.add(home);
          }
        }

        return userHomes;
      });
    } catch (e) {
      logger.error('Error getting user homes stream: $e');
      rethrow;
    }
  }

  /// Get user permissions for a specific home
  Future<MemberPermissions?> getUserPermissions(
    String homeId,
    String userId,
  ) async {
    try {
      logger.info('Getting user permissions for home: $homeId, user: $userId');

      final memberDoc = await homesRef.doc(homeId).members.doc(userId).get();

      if (memberDoc.exists) {
        final member = memberDoc.data;
        logger.info('Found permissions for user in home');
        return member?.permissions;
      } else {
        logger.info('User is not a member of this home');
        return null;
      }
    } catch (e) {
      logger.error('Error getting user permissions: $e');
      rethrow;
    }
  }

  /// Get default member permissions for new members
  MemberPermissions getDefaultMemberPermissions() {
    return MemberPermissions(
      canCreateTasks: true,
      canEditTasks: false,
      canDeleteTasks: false,
      canInviteMembers: false,
      canViewAllCalendars: true,
      isAdmin: false,
    );
  }
}
