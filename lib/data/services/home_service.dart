import 'package:familio/main.dart';
import 'package:injectable/injectable.dart';
import 'package:uuid/uuid.dart';

import '../models/models.dart';
import '../models/core/home_settings.dart';

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
      
      final homeId = const Uuid().v4();
      final now = DateTime.now();
      
      final home = Home(
        id: homeId,
        name: name,
        description: description,
        createdAt: now,
        ownerId: ownerId,
        memberIds: [ownerId], // Owner is automatically a member
        settings: const HomeSettings(
          allowMemberInvite: true,
        ),
      );
      
      // Save to Firestore using ODM reference
      await homesRef.doc(homeId).set(home);
      
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
      return home;
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
      final homeDoc = await homesRef.doc(homeId).get();
      if (!homeDoc.exists) {
        throw Exception('Home not found: $homeId');
      }
      
      final home = homeDoc.data!;
      
      // Check if user is already a member
      if (home.memberIds.contains(userId)) {
        logger.info('User already a member of home: $userId');
        return;
      }
      
      // Add user to memberIds list
      final updatedMemberIds = [...home.memberIds, userId];
      final updatedHome = home.copyWith(memberIds: updatedMemberIds);
      
      await homesRef.doc(homeId).set(updatedHome);
      
      // Create member document
      final member = Member(
        userId: userId,
        permissions: permissions,
        joinedAt: DateTime.now(),
      );
      
      await homesRef.doc(homeId).members.doc(userId).set(member);
      
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