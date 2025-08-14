import 'package:familio/main.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:injectable/injectable.dart';

import 'package:familio/core/firebase/firebase_service.dart';
import '../models/models.dart';
import 'user_service.dart';
import 'home_service.dart';
import 'invitation_service.dart';

@singleton
class AuthService {
  final FirebaseService _firebaseService;
  final UserService _userService;
  final HomeService _homeService;
  final InvitationService _invitationService;

  AuthService(
    this._firebaseService,
    this._userService,
    this._homeService,
    this._invitationService,
  );

  /// Stream of authentication state changes
  Stream<firebase_auth.User?> get authStateChanges =>
      _firebaseService.auth.authStateChanges();

  /// Get current user
  firebase_auth.User? get currentUser => _firebaseService.auth.currentUser;

  /// Check if user is authenticated
  bool get isAuthenticated => currentUser != null;

  /// Sign in with email and password
  Future<firebase_auth.UserCredential> signInWithEmailAndPassword(
    String email,
    String password,
  ) async {
    try {
      logger.info('Attempting to sign in with email: $email');
      final credential = await _firebaseService.auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      logger.info('Sign in successful for user: ${credential.user?.uid}');
      return credential;
    } on firebase_auth.FirebaseAuthException catch (e) {
      logger.error('Firebase sign in error: ${e.message}');
      rethrow;
    } catch (e) {
      logger.error('Sign in error: $e');
      rethrow;
    }
  }

  /// Create user with email and password
  Future<firebase_auth.UserCredential> createUserWithEmailAndPassword(
    String email,
    String password,
  ) async {
    try {
      logger.info('Attempting to create user with email: $email');
      final credential = await _firebaseService.auth
          .createUserWithEmailAndPassword(email: email, password: password);
      logger.info('User created successfully: ${credential.user?.uid}');
      return credential;
    } on firebase_auth.FirebaseAuthException catch (e) {
      logger.error('Firebase create user error: ${e.message}');
      rethrow;
    } catch (e) {
      logger.error('Create user error: $e');
      rethrow;
    }
  }

  /// Register user with email, password and create Firestore profile
  Future<firebase_auth.UserCredential> registerUserWithProfile({
    required String email,
    required String password,
    required String name,
    String? avatar,
    DateTime? birthDate,
  }) async {
    try {
      logger.info('Attempting to register user with profile: $email');

      // Create Firebase Auth user
      final credential = await _firebaseService.auth
          .createUserWithEmailAndPassword(email: email, password: password);

      if (credential.user != null) {
        logger.info('Firebase Auth user created: ${credential.user!.uid}');

        // Create Firestore user document
        await _userService.createUser(
          firebaseAuthId: credential.user!.uid,
          name: name,
          email: email,
          avatar: avatar,
          birthDate: birthDate,
        );

        logger.info(
          'User profile created successfully: ${credential.user!.uid}',
        );
      }

      return credential;
    } on firebase_auth.FirebaseAuthException catch (e) {
      logger.error('Firebase register user error: ${e.message}');
      rethrow;
    } catch (e) {
      logger.error('Register user error: $e');
      rethrow;
    }
  }

  /// Register user with home creation or invitation
  Future<firebase_auth.UserCredential> registerUserWithHome({
    required String email,
    required String password,
    required String name,
    required RegistrationType registrationType,
    String? homeName,
    String? invitationCode,
    String? avatar,
    DateTime? birthDate,
  }) async {
    try {
      logger.info('Attempting to register user with home: $email');

      // Create Firebase Auth user
      final credential = await _firebaseService.auth
          .createUserWithEmailAndPassword(email: email, password: password);

      if (credential.user == null) {
        throw Exception('User creation failed');
      }

      final userId = credential.user!.uid;
      logger.info('Firebase Auth user created: $userId');

      // Create Firestore user document with empty homeIds initially
      await _userService.createUser(
        firebaseAuthId: userId,
        name: name,
        email: email,
        avatar: avatar,
        birthDate: birthDate,
      );

      String homeId;

      if (registrationType == RegistrationType.createHome) {
        if (homeName == null || homeName.isEmpty) {
          throw Exception('Home name is required for creating a home');
        }

        // Create new home
        final home = await _homeService.createHome(
          name: homeName,
          ownerId: userId,
        );
        homeId = home.id;

        logger.info('New home created: $homeId');
      } else {
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

        homeId = invitation.homeId;

        // Accept the invitation
        await _invitationService.acceptInvitation(invitation.id, userId);

        // Add user as member to the home
        await _homeService.addMemberToHome(
          homeId: homeId,
          userId: userId,
          permissions: _homeService.getDefaultMemberPermissions(),
        );

        logger.info('User joined home via invitation: $homeId');
      }

      logger.info(
        'User registration with home completed successfully: $userId',
      );
      return credential;
    } on firebase_auth.FirebaseAuthException catch (e) {
      logger.error('Firebase register user with home error: ${e.message}');
      rethrow;
    } catch (e) {
      logger.error('Register user with home error: $e');
      rethrow;
    }
  }

  /// Send password reset email
  Future<void> sendPasswordResetEmail(String email) async {
    try {
      logger.info('Attempting to send password reset email to: $email');
      await _firebaseService.auth.sendPasswordResetEmail(email: email);
      logger.info('Password reset email sent successfully');
    } on firebase_auth.FirebaseAuthException catch (e) {
      logger.error('Firebase password reset error: ${e.message}');
      rethrow;
    } catch (e) {
      logger.error('Password reset error: $e');
      rethrow;
    }
  }

  /// Sign out
  Future<void> signOut() async {
    try {
      logger.info('Attempting to sign out');
      await _firebaseService.auth.signOut();
      logger.info('Sign out successful');
    } catch (e) {
      logger.error('Sign out error: $e');
      rethrow;
    }
  }

  /// Update user profile
  Future<void> updateProfile({String? displayName, String? photoURL}) async {
    try {
      final user = currentUser;
      if (user != null) {
        logger.info('Updating profile for user: ${user.uid}');
        await user.updateDisplayName(displayName);
        if (photoURL != null) {
          await user.updatePhotoURL(photoURL);
        }
        logger.info('Profile updated successfully');
      }
    } catch (e) {
      logger.error('Update profile error: $e');
      rethrow;
    }
  }

  /// Send email verification
  Future<void> sendEmailVerification() async {
    try {
      final user = currentUser;
      if (user != null && !user.emailVerified) {
        logger.info('Sending email verification to: ${user.email}');
        await user.sendEmailVerification();
        logger.info('Email verification sent');
      }
    } catch (e) {
      logger.error('Send email verification error: $e');
      rethrow;
    }
  }

  /// Reload user data
  Future<void> reloadUser() async {
    try {
      final user = currentUser;
      if (user != null) {
        await user.reload();
        logger.info('User data reloaded');
      }
    } catch (e) {
      logger.error('Reload user error: $e');
      rethrow;
    }
  }
}
