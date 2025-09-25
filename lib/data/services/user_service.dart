import 'package:familio/brick/models/user.model.dart';
import 'package:familio/brick/repository.dart';
import 'package:familio/main.dart';
import 'package:injectable/injectable.dart';
import 'package:brick_core/core.dart';

@singleton
class UserService {
  final Repository _repository;

  UserService(this._repository);

  Future<User> createUser({
    required String id,
    required String name,
    String? avatar,
    DateTime? birthDate,
  }) async {
    try {
      logger.info('Creating user profile for id: $id');

      final user = await _repository.upsert<User>(
        User(
          id: id,
          name: name,
          avatar: avatar,
          birthDate: birthDate,
          createdAt: DateTime.now(),
          updatedAt: DateTime.now(),
        ),
      );

      logger.info('User profile created successfully: ${user.id}');
      return user;
    } catch (e, s) {
      logger.error('Error creating user profile: $e', e, s);
      rethrow;
    }
  }

  Future<User> getUserById(String userId) async {
    try {
      logger.info('Fetching user: $userId');

      final users = await _repository.get<User>(
        query: Query(where: [Where('id').isExactly(userId)]),
      );

      if (users.isEmpty) {
        throw Exception('User not found');
      }

      final user = users.first;

      logger.info('User found: ${user.name}');
      return user;
    } catch (e, s) {
      logger.error('Error fetching user: $e', e, s);
      rethrow;
    }
  }

  Future<User> updateUser({
    required String userId,
    String? name,
    String? avatar,
    DateTime? birthDate,
  }) async {
    try {
      logger.info('Updating user: $userId');

      // Get existing user
      final existingUser = await getUserById(userId);

      final user = await _repository.upsert<User>(
        User(
          id: existingUser.id,
          name: name ?? existingUser.name,
          avatar: avatar ?? existingUser.avatar,
          birthDate: birthDate ?? existingUser.birthDate,
          createdAt: existingUser.createdAt,
          updatedAt: DateTime.now(),
        ),
      );

      logger.info('User updated successfully: ${user.id}');
      return user;
    } catch (e, s) {
      logger.error('Error updating user: $e', e, s);
      rethrow;
    }
  }

  Future<void> deleteUser(String userId) async {
    try {
      logger.info('Deleting user: $userId');

      final user = await getUserById(userId);

      await _repository.delete<User>(user);

      logger.info('User deleted successfully: $userId');
    } catch (e, s) {
      logger.error('Error deleting user: $e', e, s);
      rethrow;
    }
  }
}
