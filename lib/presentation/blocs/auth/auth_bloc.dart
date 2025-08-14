import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../../core/firebase/firebase_service.dart';
import '../../../core/logging/logger_service.dart';
import '../../../di/injection.dart';
import 'auth_event.dart';
import 'auth_state.dart';

@singleton
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final FirebaseService _firebaseService;
  final LoggerService _logger;

  AuthBloc(this._firebaseService, this._logger) : super(const AuthState()) {
    on<AuthStatusChanged>(_onAuthStatusChanged);
    on<LoginRequested>(_onLoginRequested);
    on<RegisterRequested>(_onRegisterRequested);
    on<ResetPasswordRequested>(_onResetPasswordRequested);
    on<SignOutRequested>(_onSignOutRequested);

    // Listen to auth state changes
    _firebaseService.auth.authStateChanges().listen((User? user) {
      add(AuthStatusChanged(user != null));
    });
  }

  Future<void> _onLoginRequested(
    LoginRequested event,
    Emitter<AuthState> emit,
  ) async {
    emit(state.copyWith(uiStatus: AuthUiStatus.loading, error: null));
    try {
      _logger.info('Attempting to login with email: ${event.email}');

      final credential = await _firebaseService.auth.signInWithEmailAndPassword(
        email: event.email,
        password: event.password,
      );

      if (credential.user != null) {
        _logger.info('Login successful for user: ${credential.user!.uid}');
        emit(
          state.copyWith(
            uiStatus: AuthUiStatus.authenticated,
            uid: credential.user!.uid,
            email: credential.user!.email!,
          ),
        );
      } else {
        _logger.error('Login failed: No user returned');
        emit(
          state.copyWith(uiStatus: AuthUiStatus.error, error: 'Login failed'),
        );
      }
    } on FirebaseAuthException catch (e, s) {
      getIt<LoggerService>().error('Firebase login error: ${e.message}', e, s);
      emit(
        state.copyWith(
          uiStatus: AuthUiStatus.error,
          error: _getErrorMessage(e),
        ),
      );
    } catch (e, s) {
      getIt<LoggerService>().error('Login error: $e', e, s);
      emit(
        state.copyWith(
          uiStatus: AuthUiStatus.error,
          error: 'An unexpected error occurred',
        ),
      );
    }
  }

  Future<void> _onRegisterRequested(
    RegisterRequested event,
    Emitter<AuthState> emit,
  ) async {
    emit(state.copyWith(uiStatus: AuthUiStatus.loading, error: null));
    try {
      _logger.info('Attempting to register with email: ${event.email}');

      final credential = await _firebaseService.auth
          .createUserWithEmailAndPassword(
            email: event.email,
            password: event.password,
          );

      if (credential.user != null) {
        _logger.info(
          'Registration successful for user: ${credential.user!.uid}',
        );
        emit(
          state.copyWith(
            uiStatus: AuthUiStatus.authenticated,
            uid: credential.user!.uid,
            email: credential.user!.email!,
          ),
        );
      } else {
        _logger.error('Registration failed: No user returned');
        emit(
          state.copyWith(
            uiStatus: AuthUiStatus.error,
            error: 'Registration failed',
          ),
        );
      }
    } on FirebaseAuthException catch (e, s) {
      getIt<LoggerService>().error(
        'Firebase registration error: ${e.message}',
        e,
        s,
      );
      emit(
        state.copyWith(
          uiStatus: AuthUiStatus.error,
          error: _getErrorMessage(e),
        ),
      );
    } catch (e, s) {
      getIt<LoggerService>().error('Registration error: $e', e, s);
      emit(
        state.copyWith(
          uiStatus: AuthUiStatus.error,
          error: 'An unexpected error occurred',
        ),
      );
    }
  }

  Future<void> _onResetPasswordRequested(
    ResetPasswordRequested event,
    Emitter<AuthState> emit,
  ) async {
    emit(state.copyWith(uiStatus: AuthUiStatus.loading, error: null));
    try {
      _logger.info('Attempting to reset password for email: ${event.email}');

      await _firebaseService.auth.sendPasswordResetEmail(email: event.email);
      _logger.info('Password reset email sent successfully');
      emit(state.copyWith(uiStatus: AuthUiStatus.unauthenticated));
    } on FirebaseAuthException catch (e, s) {
      getIt<LoggerService>().error(
        'Firebase password reset error: ${e.message}',
        e,
        s,
      );
      emit(
        state.copyWith(
          uiStatus: AuthUiStatus.error,
          error: _getErrorMessage(e),
        ),
      );
    } catch (e, s) {
      getIt<LoggerService>().error('Password reset error: $e', e, s);
      emit(
        state.copyWith(
          uiStatus: AuthUiStatus.error,
          error: 'An unexpected error occurred',
        ),
      );
    }
  }

  Future<void> _onSignOutRequested(
    SignOutRequested event,
    Emitter<AuthState> emit,
  ) async {
    emit(state.copyWith(uiStatus: AuthUiStatus.loading, error: null));
    try {
      _logger.info('Attempting to sign out');

      await _firebaseService.auth.signOut();
      _logger.info('Sign out successful');
      emit(
        state.copyWith(
          uiStatus: AuthUiStatus.unauthenticated,
          uid: null,
          email: null,
        ),
      );
    } catch (e, s) {
      getIt<LoggerService>().error('Sign out error: $e', e, s);
      emit(
        state.copyWith(uiStatus: AuthUiStatus.error, error: 'Sign out failed'),
      );
    }
  }

  Future<void> _onAuthStatusChanged(
    AuthStatusChanged event,
    Emitter<AuthState> emit,
  ) async {
    final user = _firebaseService.auth.currentUser;
    if (event.isAuthenticated && user != null) {
      emit(
        state.copyWith(
          uiStatus: AuthUiStatus.authenticated,
          uid: user.uid,
          email: user.email!,
        ),
      );
    } else {
      emit(
        state.copyWith(
          uiStatus: AuthUiStatus.unauthenticated,
          uid: null,
          email: null,
        ),
      );
    }
  }

  String _getErrorMessage(FirebaseAuthException e) {
    switch (e.code) {
      case 'weak-password':
        return 'The password provided is too weak.';
      case 'email-already-in-use':
        return 'The account already exists for that email.';
      case 'user-not-found':
        return 'No user found for that email.';
      case 'wrong-password':
        return 'Wrong password provided for that user.';
      case 'invalid-email':
        return 'The email address is not valid.';
      case 'user-disabled':
        return 'This user account has been disabled.';
      case 'too-many-requests':
        return 'Too many requests. Try again later.';
      case 'operation-not-allowed':
        return 'This operation is not allowed.';
      default:
        return e.message ?? 'An authentication error occurred.';
    }
  }
}
