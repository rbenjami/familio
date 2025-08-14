import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

import '../../core/firebase/firebase_service.dart';
import '../../core/logging/logger_service.dart';

@singleton
class AuthService {
  final FirebaseService _firebaseService;
  final LoggerService _logger;

  AuthService(this._firebaseService, this._logger);

  /// Stream of authentication state changes
  Stream<User?> get authStateChanges => _firebaseService.auth.authStateChanges();

  /// Get current user
  User? get currentUser => _firebaseService.auth.currentUser;

  /// Check if user is authenticated
  bool get isAuthenticated => currentUser != null;

  /// Sign in with email and password
  Future<UserCredential> signInWithEmailAndPassword(String email, String password) async {
    try {
      _logger.info('Attempting to sign in with email: $email');
      final credential = await _firebaseService.auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      _logger.info('Sign in successful for user: ${credential.user?.uid}');
      return credential;
    } on FirebaseAuthException catch (e) {
      _logger.error('Firebase sign in error: ${e.message}');
      rethrow;
    } catch (e) {
      _logger.error('Sign in error: $e');
      rethrow;
    }
  }

  /// Create user with email and password
  Future<UserCredential> createUserWithEmailAndPassword(String email, String password) async {
    try {
      _logger.info('Attempting to create user with email: $email');
      final credential = await _firebaseService.auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      _logger.info('User created successfully: ${credential.user?.uid}');
      return credential;
    } on FirebaseAuthException catch (e) {
      _logger.error('Firebase create user error: ${e.message}');
      rethrow;
    } catch (e) {
      _logger.error('Create user error: $e');
      rethrow;
    }
  }

  /// Send password reset email
  Future<void> sendPasswordResetEmail(String email) async {
    try {
      _logger.info('Attempting to send password reset email to: $email');
      await _firebaseService.auth.sendPasswordResetEmail(email: email);
      _logger.info('Password reset email sent successfully');
    } on FirebaseAuthException catch (e) {
      _logger.error('Firebase password reset error: ${e.message}');
      rethrow;
    } catch (e) {
      _logger.error('Password reset error: $e');
      rethrow;
    }
  }

  /// Sign out
  Future<void> signOut() async {
    try {
      _logger.info('Attempting to sign out');
      await _firebaseService.auth.signOut();
      _logger.info('Sign out successful');
    } catch (e) {
      _logger.error('Sign out error: $e');
      rethrow;
    }
  }

  /// Update user profile
  Future<void> updateProfile({String? displayName, String? photoURL}) async {
    try {
      final user = currentUser;
      if (user != null) {
        _logger.info('Updating profile for user: ${user.uid}');
        await user.updateDisplayName(displayName);
        if (photoURL != null) {
          await user.updatePhotoURL(photoURL);
        }
        _logger.info('Profile updated successfully');
      }
    } catch (e) {
      _logger.error('Update profile error: $e');
      rethrow;
    }
  }

  /// Send email verification
  Future<void> sendEmailVerification() async {
    try {
      final user = currentUser;
      if (user != null && !user.emailVerified) {
        _logger.info('Sending email verification to: ${user.email}');
        await user.sendEmailVerification();
        _logger.info('Email verification sent');
      }
    } catch (e) {
      _logger.error('Send email verification error: $e');
      rethrow;
    }
  }

  /// Reload user data
  Future<void> reloadUser() async {
    try {
      final user = currentUser;
      if (user != null) {
        await user.reload();
        _logger.info('User data reloaded');
      }
    } catch (e) {
      _logger.error('Reload user error: $e');
      rethrow;
    }
  }
}