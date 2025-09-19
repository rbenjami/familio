import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart' as supabase;

import 'package:familio/main.dart';
import 'package:familio/data/services/auth_service.dart';
import 'package:familio/data/services/user_service.dart';
import 'package:familio/generated/l10n.dart';
import 'auth_event.dart';
import 'auth_state.dart';

@singleton
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthService _authService;
  final UserService _userService;

  AuthBloc(this._authService, this._userService) : super(const AuthState()) {
    on<AuthStatusChanged>(_onAuthStatusChanged);
    on<LoginRequested>(_onLoginRequested);
    on<RegisterRequested>(_onRegisterRequested);
    on<ResetPasswordRequested>(_onResetPasswordRequested);
    on<SignOutRequested>(_onSignOutRequested);

    // Listen to auth state changes
    _authService.authStateStream.listen((supabase.AuthState authState) {
      add(AuthStatusChanged(authState.session != null));
    });
  }

  Future<void> _onLoginRequested(
    LoginRequested event,
    Emitter<AuthState> emit,
  ) async {
    emit(state.copyWith(uiStatus: AuthUiStatus.loading, error: null));
    try {
      logger.info('Attempting to login with email: ${event.email}');

      final response = await _authService.signInWithEmail(
        email: event.email,
        password: event.password,
      );

      if (response.user != null) {
        logger.info('Login successful for user: ${response.user!.id}');
        await _loadCurrentUser(response.user!.id, emit);
      } else {
        logger.error('Login failed: No user returned');
        emit(
          state.copyWith(uiStatus: AuthUiStatus.error, error: 'Login failed'),
        );
      }
    } on supabase.AuthException catch (e) {
      logger.error('Supabase login error: ${e.message}');
      emit(
        state.copyWith(
          uiStatus: AuthUiStatus.error,
          error: _getErrorMessage(e),
        ),
      );
    } catch (e, s) {
      logger.error('Login error: $e', e, s);
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

      final response = await _authService.registerUserWithHome(
        email: event.email,
        password: event.password,
        name: event.name,
        registrationType: event.registrationType,
        homeName: event.homeName,
        invitationCode: event.invitationCode,
        avatar: event.avatar,
        birthDate: event.birthDate,
      );

      if (response.user != null) {
        logger.info('Registration successful for user: ${response.user!.id}');
        await _loadCurrentUser(response.user!.id, emit);
      } else {
        logger.error('Registration failed: No user returned');
        emit(
          state.copyWith(
            uiStatus: AuthUiStatus.error,
            error: 'Registration failed',
          ),
        );
      }
    } on supabase.AuthException catch (e) {
      logger.error('Supabase registration error: ${e.message}');
      emit(
        state.copyWith(
          uiStatus: AuthUiStatus.error,
          error: _getErrorMessage(e),
        ),
      );
    } catch (e, s) {
      logger.error('Registration error: $e', e, s);
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

      await _authService.resetPassword(event.email);
      logger.info('Password reset email sent successfully');
      emit(state.copyWith(uiStatus: AuthUiStatus.unauthenticated));
    } on supabase.AuthException catch (e) {
      logger.error('Supabase password reset error: ${e.message}');
      emit(
        state.copyWith(
          uiStatus: AuthUiStatus.error,
          error: _getErrorMessage(e),
        ),
      );
    } catch (e, s) {
      logger.error('Password reset error: $e', e, s);
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
          currentUser: null,
        ),
      );
    } catch (e, s) {
      logger.error('Sign out error: $e', e, s);
      emit(
        state.copyWith(uiStatus: AuthUiStatus.error, error: 'Sign out failed'),
      );
    }
  }

  Future<void> _onAuthStatusChanged(
    AuthStatusChanged event,
    Emitter<AuthState> emit,
  ) async {
    final user = _authService.currentUser;
    if (event.isAuthenticated && user != null) {
      await _loadCurrentUser(user.id, emit);
    } else {
      emit(
        state.copyWith(
          uiStatus: AuthUiStatus.unauthenticated,
          uid: null,
          email: null,
          currentUser: null,
        ),
      );
    }
  }

  Future<void> _loadCurrentUser(String authId, Emitter<AuthState> emit) async {
    try {
      final user = await _userService.getUserById(authId);
      final supabaseUser = _authService.currentUser;

      if (user != null && supabaseUser != null) {
        emit(
          state.copyWith(
            uiStatus: AuthUiStatus.authenticated,
            uid: authId,
            email: supabaseUser.email!,
            currentUser: user,
          ),
        );
      } else {
        logger.warning('User not found in database for Auth ID: $authId');
        emit(
          state.copyWith(
            uiStatus: AuthUiStatus.error,
            error: 'User profile not found',
          ),
        );
      }
    } catch (e, s) {
      logger.error('Error loading current user: $e', e, s);
      emit(
        state.copyWith(
          uiStatus: AuthUiStatus.error,
          error: 'Failed to load user profile',
        ),
      );
    }
  }

  String _getErrorMessage(supabase.AuthException e) {
    switch (e.message) {
      case 'Invalid login credentials':
        return S.current.auth_error_wrongPassword;
      case 'User already registered':
        return S.current.auth_error_emailInUse;
      case 'Email not confirmed':
        return 'Please confirm your email address';
      case 'Invalid email':
        return S.current.auth_error_invalidEmail;
      case 'Signup disabled':
        return S.current.auth_error_operationNotAllowed;
      default:
        return e.message ?? S.current.auth_error_unknown;
    }
  }
}
