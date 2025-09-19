import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:talker/talker.dart';

import '../models/models.dart' as models;

@singleton
class UserService {
  final SupabaseClient _client;
  final Talker _talker;

  UserService(this._client, this._talker);

  Future<models.User> createUser({
    required String id,
    required String name,
    String? avatar,
    DateTime? birthDate,
  }) async {
    try {
      _talker.info('Creating user profile for id: $id');

      final response = await _client.from('users').insert({
        'id': id,
        'name': name,
        'avatar': avatar,
        'birth_date': birthDate?.toIso8601String(),
      }).select().single();

      final user = models.User.fromJson(response);
      _talker.info('User profile created successfully: ${user.id}');
      return user;
    } catch (e, s) {
      _talker.error('Error creating user profile: $e', e, s);
      rethrow;
    }
  }


  Future<models.User?> getUserById(String userId) async {
    try {
      _talker.info('Fetching user profile for id: $userId');

      final response = await _client
          .from('users')
          .select()
          .eq('id', userId)
          .maybeSingle();

      if (response == null) {
        _talker.info('No user profile found for id: $userId');
        return null;
      }

      final user = models.User.fromJson(response);
      _talker.info('User profile found: ${user.name}');
      return user;
    } catch (e, s) {
      _talker.error('Error fetching user profile: $e', e, s);
      rethrow;
    }
  }

  Future<models.User> updateUser({
    required String userId,
    String? name,
    String? avatar,
    DateTime? birthDate,
  }) async {
    try {
      _talker.info('Updating user profile: $userId');

      final updateData = <String, dynamic>{};
      if (name != null) updateData['name'] = name;
      if (avatar != null) updateData['avatar'] = avatar;
      if (birthDate != null) updateData['birth_date'] = birthDate.toIso8601String();

      final response = await _client
          .from('users')
          .update(updateData)
          .eq('id', userId)
          .select()
          .single();

      final user = models.User.fromJson(response);
      _talker.info('User profile updated successfully: ${user.id}');
      return user;
    } catch (e, s) {
      _talker.error('Error updating user profile: $e', e, s);
      rethrow;
    }
  }

  Future<void> deleteUser(String userId) async {
    try {
      _talker.info('Deleting user profile: $userId');

      await _client.from('users').delete().eq('id', userId);

      _talker.info('User profile deleted successfully: $userId');
    } catch (e, s) {
      _talker.error('Error deleting user profile: $e', e, s);
      rethrow;
    }
  }

  Future<List<models.User>> getUsersByHomeId(String homeId) async {
    try {
      _talker.info('Fetching users for home: $homeId');

      final response = await _client
          .from('users')
          .select('''
            *,
            home_members!inner(home_id)
          ''')
          .eq('home_members.home_id', homeId);

      final users = response.map((json) => models.User.fromJson(json)).toList();
      _talker.info('Found ${users.length} users for home: $homeId');
      return users;
    } catch (e, s) {
      _talker.error('Error fetching users for home: $e', e, s);
      rethrow;
    }
  }
}