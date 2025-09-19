import 'package:familio/main.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'user_service.dart';
import 'home_service.dart';
import 'invitation_service.dart';
import '../models/models.dart' as models;

@singleton
class AuthService {
  final SupabaseClient _client;
  final UserService _userService;
  final HomeService _homeService;
  final InvitationService _invitationService;

  AuthService(
    this._client,
    this._userService,
    this._homeService,
    this._invitationService,
  );

  // Auth state
  User? get currentUser => _client.auth.currentUser;
  bool get isAuthenticated => currentUser != null;
  Stream<AuthState> get authStateStream => _client.auth.onAuthStateChange;

  // Sign up with email and password
  Future<AuthResponse> signUpWithEmail({
    required String email,
    required String password,
    String? name,
  }) async {
    try {
      logger.info('Attempting to sign up with email: $email');

      final response = await _client.auth.signUp(
        email: email,
        password: password,
        data: name != null ? {'name': name} : null,
      );

      if (response.user != null) {
        logger.info('Sign up successful for user: ${response.user!.id}');

        // Create user profile in our users table
        await _createUserProfile(response.user!);
      }

      return response;
    } catch (e, stackTrace) {
      logger.error('Sign up failed', e, stackTrace);
      rethrow;
    }
  }

  // Sign in with email and password
  Future<AuthResponse> signInWithEmail({
    required String email,
    required String password,
  }) async {
    try {
      logger.info('Attempting to sign in with email: $email');

      final response = await _client.auth.signInWithPassword(
        email: email,
        password: password,
      );

      if (response.user != null) {
        logger.info('Sign in successful for user: ${response.user!.id}');

        // Ensure user profile exists
        await _ensureUserProfile();
      }

      return response;
    } catch (e, stackTrace) {
      logger.error('Sign in failed', e, stackTrace);
      rethrow;
    }
  }

  // Sign out
  Future<void> signOut() async {
    try {
      logger.info('Attempting to sign out');
      await _client.auth.signOut();
      logger.info('Sign out successful');
    } catch (e, stackTrace) {
      logger.error('Sign out failed', e, stackTrace);
      rethrow;
    }
  }

  // Reset password
  Future<void> resetPassword(String email) async {
    try {
      logger.info('Attempting to reset password for email: $email');
      await _client.auth.resetPasswordForEmail(email);
      logger.info('Password reset email sent successfully');
    } catch (e, stackTrace) {
      logger.error('Password reset failed', e, stackTrace);
      rethrow;
    }
  }

  // Register user with home creation or invitation
  Future<AuthResponse> registerUserWithHome({
    required String email,
    required String password,
    required String name,
    required models.RegistrationType registrationType,
    String? homeName,
    String? invitationCode,
    String? avatar,
    DateTime? birthDate,
  }) async {
    try {
      logger.info('Attempting to register user with home: $email');

      // Call Edge Function to handle registration
      final response = await _client.functions.invoke(
        'register-user',
        body: {
          'email': email,
          'password': password,
          'displayName': name,
          'homeName': registrationType == models.RegistrationType.createHome
              ? homeName
              : null,
        },
      );

      if (response.status != 200) {
        final error = response.data['error'] ?? 'Registration failed';
        throw Exception(error);
      }

      final data = response.data;
      logger.info('User registered via Edge Function: ${data['user']['id']}');

      // Sign in the user after registration
      final authResponse = await _client.auth.signInWithPassword(
        email: email,
        password: password,
      );

      // Handle invitation if joining existing home
      if (registrationType == models.RegistrationType.joinHome) {
        if (invitationCode == null || invitationCode.isEmpty) {
          throw Exception('Invitation code is required for joining a home');
        }

        // Find and validate invitation
        final invitation = await _invitationService.getInvitationByCode(
          invitationCode,
        );
        if (invitation == null) {
          throw Exception('Invalid or expired invitation code');
        }

        // Accept the invitation
        await _invitationService.acceptInvitation(
          invitationId: invitation.id,
          acceptedById: data['user']['id'],
        );

        // Add user as member to the home
        await _homeService.addMemberToHome(
          homeId: invitation.homeId,
          userId: data['user']['id'],
          permissions: _homeService.getDefaultMemberPermissions(),
        );

        logger.info('User joined home via invitation: ${invitation.id}');
      }

      logger.info(
        'User registration with home completed successfully: ${authResponse.user?.id}',
      );
      return authResponse;
    } catch (e, stackTrace) {
      logger.error('Register user with home error: $e', e, stackTrace);
      rethrow;
    }
  }

  // Create user profile in our database
  Future<void> _createUserProfile(User user) async {
    try {
      final name =
          user.userMetadata?['name'] as String? ??
          user.email?.split('@').first ??
          'User';

      await _userService.createUser(id: user.id, name: name);

      logger.info('User profile created successfully for: ${user.id}');
    } catch (e, stackTrace) {
      logger.error('Failed to create user profile', e, stackTrace);
      // Don't rethrow here as auth was successful
    }
  }

  // Get current user profile
  Future<Map<String, dynamic>?> getCurrentUserProfile() async {
    if (!isAuthenticated) return null;

    try {
      final response = await _client
          .from('users')
          .select()
          .eq('id', currentUser!.id)
          .maybeSingle();

      return response;
    } catch (e, stackTrace) {
      logger.error('Failed to get user profile', e, stackTrace);
      return null;
    }
  }

  // Update user profile
  Future<void> updateUserProfile({
    String? name,
    String? avatar,
    DateTime? birthDate,
  }) async {
    if (!isAuthenticated) throw Exception('User not authenticated');

    try {
      final updates = <String, dynamic>{
        'updated_at': DateTime.now().toIso8601String(),
      };

      if (name != null) updates['name'] = name;
      if (avatar != null) updates['avatar'] = avatar;
      if (birthDate != null) {
        updates['birth_date'] = birthDate.toIso8601String();
      }

      await _client
          .from('users')
          .update(updates)
          .eq('id', currentUser!.id);

      logger.info('User profile updated successfully');
    } catch (e, stackTrace) {
      logger.error('Failed to update user profile', e, stackTrace);
      rethrow;
    }
  }

  // Ensure user profile exists (using Edge Function)
  Future<void> _ensureUserProfile() async {
    try {
      final token = _client.auth.currentSession?.accessToken;
      if (token == null) return;

      final response = await _client.functions.invoke(
        'ensure-user-profile',
        headers: {
          'Authorization': 'Bearer $token',
        },
      );

      if (response.status == 200) {
        final data = response.data;
        if (data['created'] == true) {
          logger.info('User profile created via Edge Function: ${data['user']['id']}');
        } else {
          logger.info('User profile already exists: ${data['user']['id']}');
        }
      }
    } catch (e, stackTrace) {
      logger.error('Failed to ensure user profile', e, stackTrace);
      // Don't rethrow - this is a best-effort operation
    }
  }
}
