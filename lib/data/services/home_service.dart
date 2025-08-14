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
