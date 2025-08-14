import 'package:familio/main.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

import 'package:familio/core/firebase/firebase_service.dart';
import 'user_service.dart';

@singleton
class AuthService {
  final FirebaseService _firebaseService;
  final UserService _userService;

  AuthService(this._firebaseService, this._userService);

  /// Stream of authentication state changes
  Stream<User?> get authStateChanges =>
      _firebaseService.auth.authStateChanges();

  /// Get current user
  User? get currentUser => _firebaseService.auth.currentUser;

  /// Check if user is authenticated
  bool get isAuthenticated => currentUser != null;

  /// Sign in with email and password
  Future<UserCredential> signInWithEmailAndPassword(
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
    } on FirebaseAuthException catch (e) {
      logger.error('Firebase sign in error: ${e.message}');
      rethrow;
    } catch (e) {
      logger.error('Sign in error: $e');
      rethrow;
    }
  }

  /// Create user with email and password
  Future<UserCredential> createUserWithEmailAndPassword(
    String email,
    String password,
  ) async {
    try {
      logger.info('Attempting to create user with email: $email');
      final credential = await _firebaseService.auth
          .createUserWithEmailAndPassword(email: email, password: password);
      logger.info('User created successfully: ${credential.user?.uid}');
      return credential;
    } on FirebaseAuthException catch (e) {
      logger.error('Firebase create user error: ${e.message}');
      rethrow;
    } catch (e) {
      logger.error('Create user error: $e');
      rethrow;
    }
  }

  /// Register user with email, password and create Firestore profile
  Future<UserCredential> registerUserWithProfile({
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
    } on FirebaseAuthException catch (e) {
      logger.error('Firebase register user error: ${e.message}');
      rethrow;
    } catch (e) {
      logger.error('Register user error: $e');
      rethrow;
    }
  }

  /// Send password reset email
  Future<void> sendPasswordResetEmail(String email) async {
    try {
      logger.info('Attempting to send password reset email to: $email');
      await _firebaseService.auth.sendPasswordResetEmail(email: email);
      logger.info('Password reset email sent successfully');
    } on FirebaseAuthException catch (e) {
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
