import 'package:familio/main.dart';
import 'package:injectable/injectable.dart';

import '../models/models.dart';

@singleton
class UserService {
  UserService();

  /// Create a new user document in Firestore
  Future<User> createUser({
    required String firebaseAuthId,
    required String name,
    required String email,
    String? avatar,
    DateTime? birthDate,
  }) async {
    try {
      logger.info('Creating user document for: $email');

      final user = User(
        id: firebaseAuthId, // Use Firebase Auth UID as document ID
        name: name,
        avatar: avatar,
        birthDate: birthDate,
        firebaseAuthId: firebaseAuthId,
        relationshipIds: [], // Empty list initially
      );

      // Save to Firestore using the ODM reference
      await usersRef.doc(firebaseAuthId).set(user);

      logger.info('User document created successfully: $firebaseAuthId');
      return user;
    } catch (e) {
      logger.error('Error creating user document: $e');
      rethrow;
    }
  }

  /// Get user by Firebase Auth ID
  Future<User?> getUserByFirebaseAuthId(String firebaseAuthId) async {
    try {
      logger.info('Fetching user document: $firebaseAuthId');

      final docSnapshot = await usersRef.doc(firebaseAuthId).get();

      if (docSnapshot.exists) {
        final user = docSnapshot.data!;
        logger.info('User document found: ${user.name}');
        return user;
      } else {
        logger.info('No user document found for: $firebaseAuthId');
        return null;
      }
    } catch (e) {
      logger.error('Error fetching user document: $e');
      rethrow;
    }
  }

  /// Update user profile
  Future<User> updateUser(User user) async {
    try {
      logger.info('Updating user document: ${user.id}');

      await usersRef.doc(user.id).set(user);

      logger.info('User document updated successfully: ${user.id}');
      return user;
    } catch (e) {
      logger.error('Error updating user document: $e');
      rethrow;
    }
  }

  /// Delete user document
  Future<void> deleteUser(String firebaseAuthId) async {
    try {
      logger.info('Deleting user document: $firebaseAuthId');

      await usersRef.doc(firebaseAuthId).delete();

      logger.info('User document deleted successfully: $firebaseAuthId');
    } catch (e) {
      logger.error('Error deleting user document: $e');
      rethrow;
    }
  }
}
