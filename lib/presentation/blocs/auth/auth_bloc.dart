import 'package:familio/main.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:familio/core/firebase/firebase_service.dart';
import 'package:familio/core/logging/logger_service.dart';
import 'package:familio/data/services/auth_service.dart';
import 'package:familio/di/injection.dart';
import 'package:familio/generated/l10n.dart';
import 'auth_event.dart';
import 'auth_state.dart';

@singleton
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final FirebaseService _firebaseService;
  final AuthService _authService;

  AuthBloc(this._firebaseService, this._authService)
    : super(const AuthState()) {
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
      logger.info('Attempting to login with email: ${event.email}');

      final credential = await _authService.signInWithEmailAndPassword(
        event.email,
        event.password,
      );

      if (credential.user != null) {
        logger.info('Login successful for user: ${credential.user!.uid}');
        emit(
          state.copyWith(
            uiStatus: AuthUiStatus.authenticated,
            uid: credential.user!.uid,
            email: credential.user!.email!,
          ),
        );
      } else {
        logger.error('Login failed: No user returned');
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
      logger.info('Attempting to register with email: ${event.email}');

      final credential = await _authService.registerUserWithProfile(
        email: event.email,
        password: event.password,
        name: event.name,
        avatar: event.avatar,
        birthDate: event.birthDate,
      );

      if (credential.user != null) {
        logger.info(
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
        logger.error('Registration failed: No user returned');
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
      logger.info('Attempting to reset password for email: ${event.email}');

      await _authService.sendPasswordResetEmail(event.email);
      logger.info('Password reset email sent successfully');
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
      logger.info('Attempting to sign out');

      await _authService.signOut();
      logger.info('Sign out successful');
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
        return S.current.auth_error_weakPassword;
      case 'email-already-in-use':
        return S.current.auth_error_emailInUse;
      case 'user-not-found':
        return S.current.auth_error_userNotFound;
      case 'wrong-password':
        return S.current.auth_error_wrongPassword;
      case 'invalid-email':
        return S.current.auth_error_invalidEmail;
      case 'user-disabled':
        return S.current.auth_error_userDisabled;
      case 'too-many-requests':
        return S.current.auth_error_tooManyRequests;
      case 'operation-not-allowed':
        return S.current.auth_error_operationNotAllowed;
      default:
        return e.message ?? S.current.auth_error_unknown;
    }
  }
}
