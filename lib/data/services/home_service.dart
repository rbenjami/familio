import 'package:familio/main.dart';
import 'package:injectable/injectable.dart';

import '../models/models.dart';

@singleton
class HomeService {
  HomeService();

  /// Create a new home
  Future<HomeDocumentSnapshot> createHome({
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
        owner: usersRef.doc(ownerId).reference,
        settings: const HomeSettings(allowMemberInvite: true),
      );

      // Save to Firestore using ODM reference
      final homeDoc = await homesRef.add(home);

      // Create member document for the owner
      final ownerMember = Member(
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

      await homeDoc.members.doc(ownerId).set(ownerMember);

      logger.info('Home created successfully: ${homeDoc.id}');
      return homeDoc.get();
    } catch (e) {
      logger.error('Error creating home: $e');
      rethrow;
    }
  }

  /// Add member to home
  Future<void> addMemberToHome({
    required HomeDocumentReference home,
    required UserDocumentReference user,
    required MemberPermissions permissions,
  }) async {
    try {
      logger.info('Adding member $user to home $home');

      // Create member document
      final member = Member(permissions: permissions, joinedAt: DateTime.now());

      await home.members.doc(user.id).set(member);

      logger.info('Member added successfully to home: $home');
    } catch (e) {
      logger.error('Error adding member to home: $e');
      rethrow;
    }
  }

  /// Get user permissions for a specific home
  Future<MemberPermissions?> getUserPermissions(
    HomeDocumentReference home,
    UserDocumentReference user,
  ) async {
    try {
      logger.info(
        'Getting user permissions for home: ${home.id}, user: ${user.id}',
      );

      final memberDoc = await home.members.doc(user.id).get();

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
