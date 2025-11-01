import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:supabase_flutter/supabase_flutter.dart' as supabase;

import 'package:familio/blocs/auth/auth_bloc.dart';
import 'package:familio/blocs/auth/auth_event.dart';
import 'package:familio/blocs/auth/auth_state.dart';
import 'package:familio/data/services/auth_service.dart';
import 'package:familio/data/services/user_service.dart';
import 'package:familio/brick/models/models.dart';

// Mock classes
class MockAuthService extends Mock implements AuthService {}

class MockUserService extends Mock implements UserService {}

class MockUser extends Mock implements supabase.User {}

class MockAuthResponse extends Mock implements supabase.AuthResponse {}

class MockAuthState extends Mock implements supabase.AuthState {}

class MockSession extends Mock implements supabase.Session {}

void main() {
  late AuthBloc authBloc;
  late MockAuthService mockAuthService;
  late MockUserService mockUserService;

  setUp(() {
    mockAuthService = MockAuthService();
    mockUserService = MockUserService();

    // Setup default stream
    when(() => mockAuthService.authStateStream).thenAnswer(
      (_) => Stream<supabase.AuthState>.empty(),
    );

    authBloc = AuthBloc(mockAuthService, mockUserService);
  });

  tearDown(() {
    authBloc.close();
  });

  group('AuthBloc', () {
    test('initial state is AuthState with initial status', () {
      expect(
        authBloc.state,
        const AuthState(uiStatus: AuthUiStatus.initial),
      );
    });

    group('LoginRequested', () {
      const testEmail = 'test@example.com';
      const testPassword = 'password123';
      const testUserId = 'user-123';

      blocTest<AuthBloc, AuthState>(
        'emits [loading, authenticated] when login succeeds',
        setUp: () {
          final mockUser = MockUser();
          final mockAuthResponse = MockAuthResponse();
          final user = User(
            id: testUserId,
            authId: testUserId,
            name: 'Test User',
            email: testEmail,
            createdAt: DateTime.now(),
            updatedAt: DateTime.now(),
          );

          when(() => mockUser.id).thenReturn(testUserId);
          when(() => mockUser.email).thenReturn(testEmail);
          when(() => mockAuthResponse.user).thenReturn(mockUser);

          when(
            () => mockAuthService.signInWithEmail(
              email: testEmail,
              password: testPassword,
            ),
          ).thenAnswer((_) async => mockAuthResponse);

          when(() => mockUserService.getUserById(testUserId))
              .thenAnswer((_) async => user);

          when(() => mockAuthService.currentUser).thenReturn(mockUser);
        },
        build: () => authBloc,
        act: (bloc) => bloc.add(const LoginRequested(testEmail, testPassword)),
        expect: () => [
          const AuthState(uiStatus: AuthUiStatus.loading, error: null),
          AuthState(
            uiStatus: AuthUiStatus.authenticated,
            uid: testUserId,
            email: testEmail,
            currentUser: User(
              id: testUserId,
              authId: testUserId,
              name: 'Test User',
              email: testEmail,
              createdAt: DateTime.now(),
              updatedAt: DateTime.now(),
            ),
          ),
        ],
        skip: 0,
      );

      blocTest<AuthBloc, AuthState>(
        'emits [loading, error] when login fails with AuthException',
        setUp: () {
          when(
            () => mockAuthService.signInWithEmail(
              email: testEmail,
              password: testPassword,
            ),
          ).thenThrow(
            const supabase.AuthException('Invalid login credentials'),
          );
        },
        build: () => authBloc,
        act: (bloc) => bloc.add(const LoginRequested(testEmail, testPassword)),
        expect: () => [
          const AuthState(uiStatus: AuthUiStatus.loading, error: null),
          isA<AuthState>()
              .having((s) => s.uiStatus, 'uiStatus', AuthUiStatus.error)
              .having((s) => s.error, 'error', isNotNull),
        ],
      );

      blocTest<AuthBloc, AuthState>(
        'emits [loading, error] when login fails with generic exception',
        setUp: () {
          when(
            () => mockAuthService.signInWithEmail(
              email: testEmail,
              password: testPassword,
            ),
          ).thenThrow(Exception('Network error'));
        },
        build: () => authBloc,
        act: (bloc) => bloc.add(const LoginRequested(testEmail, testPassword)),
        expect: () => [
          const AuthState(uiStatus: AuthUiStatus.loading, error: null),
          const AuthState(
            uiStatus: AuthUiStatus.error,
            error: 'An unexpected error occurred',
          ),
        ],
      );

      blocTest<AuthBloc, AuthState>(
        'emits [loading, error] when response has no user',
        setUp: () {
          final mockAuthResponse = MockAuthResponse();
          when(() => mockAuthResponse.user).thenReturn(null);

          when(
            () => mockAuthService.signInWithEmail(
              email: testEmail,
              password: testPassword,
            ),
          ).thenAnswer((_) async => mockAuthResponse);
        },
        build: () => authBloc,
        act: (bloc) => bloc.add(const LoginRequested(testEmail, testPassword)),
        expect: () => [
          const AuthState(uiStatus: AuthUiStatus.loading, error: null),
          const AuthState(uiStatus: AuthUiStatus.error, error: 'Login failed'),
        ],
      );
    });

    group('RegisterRequested', () {
      const testEmail = 'test@example.com';
      const testPassword = 'password123';
      const testName = 'Test User';
      const testHomeName = 'Test Home';
      const testUserId = 'user-123';

      blocTest<AuthBloc, AuthState>(
        'emits [loading, authenticated] when registration succeeds',
        setUp: () {
          final mockUser = MockUser();
          final mockAuthResponse = MockAuthResponse();
          final user = User(
            id: testUserId,
            authId: testUserId,
            name: testName,
            email: testEmail,
            createdAt: DateTime.now(),
            updatedAt: DateTime.now(),
          );

          when(() => mockUser.id).thenReturn(testUserId);
          when(() => mockUser.email).thenReturn(testEmail);
          when(() => mockAuthResponse.user).thenReturn(mockUser);

          when(
            () => mockAuthService.registerUserWithHome(
              email: testEmail,
              password: testPassword,
              name: testName,
              registrationType: RegistrationType.createHome,
              homeName: testHomeName,
              invitationCode: null,
              avatar: null,
              birthDate: null,
            ),
          ).thenAnswer((_) async => mockAuthResponse);

          when(() => mockUserService.getUserById(testUserId))
              .thenAnswer((_) async => user);

          when(() => mockAuthService.currentUser).thenReturn(mockUser);
        },
        build: () => authBloc,
        act: (bloc) => bloc.add(
          const RegisterRequested(
            email: testEmail,
            password: testPassword,
            name: testName,
            registrationType: RegistrationType.createHome,
            homeName: testHomeName,
          ),
        ),
        expect: () => [
          const AuthState(uiStatus: AuthUiStatus.loading, error: null),
          isA<AuthState>()
              .having((s) => s.uiStatus, 'uiStatus', AuthUiStatus.authenticated)
              .having((s) => s.uid, 'uid', testUserId)
              .having((s) => s.email, 'email', testEmail)
              .having((s) => s.currentUser, 'currentUser', isNotNull),
        ],
      );

      blocTest<AuthBloc, AuthState>(
        'emits [loading, error] when registration fails',
        setUp: () {
          when(
            () => mockAuthService.registerUserWithHome(
              email: testEmail,
              password: testPassword,
              name: testName,
              registrationType: RegistrationType.createHome,
              homeName: testHomeName,
              invitationCode: null,
              avatar: null,
              birthDate: null,
            ),
          ).thenThrow(
            const supabase.AuthException('User already registered'),
          );
        },
        build: () => authBloc,
        act: (bloc) => bloc.add(
          const RegisterRequested(
            email: testEmail,
            password: testPassword,
            name: testName,
            registrationType: RegistrationType.createHome,
            homeName: testHomeName,
          ),
        ),
        expect: () => [
          const AuthState(uiStatus: AuthUiStatus.loading, error: null),
          isA<AuthState>()
              .having((s) => s.uiStatus, 'uiStatus', AuthUiStatus.error)
              .having((s) => s.error, 'error', isNotNull),
        ],
      );
    });

    group('ResetPasswordRequested', () {
      const testEmail = 'test@example.com';

      blocTest<AuthBloc, AuthState>(
        'emits [loading, unauthenticated] when password reset succeeds',
        setUp: () {
          when(() => mockAuthService.resetPassword(testEmail))
              .thenAnswer((_) async => {});
        },
        build: () => authBloc,
        act: (bloc) => bloc.add(const ResetPasswordRequested(testEmail)),
        expect: () => [
          const AuthState(uiStatus: AuthUiStatus.loading, error: null),
          const AuthState(uiStatus: AuthUiStatus.unauthenticated),
        ],
      );

      blocTest<AuthBloc, AuthState>(
        'emits [loading, error] when password reset fails',
        setUp: () {
          when(() => mockAuthService.resetPassword(testEmail)).thenThrow(
            const supabase.AuthException('Invalid email'),
          );
        },
        build: () => authBloc,
        act: (bloc) => bloc.add(const ResetPasswordRequested(testEmail)),
        expect: () => [
          const AuthState(uiStatus: AuthUiStatus.loading, error: null),
          isA<AuthState>()
              .having((s) => s.uiStatus, 'uiStatus', AuthUiStatus.error)
              .having((s) => s.error, 'error', isNotNull),
        ],
      );
    });

    group('SignOutRequested', () {
      blocTest<AuthBloc, AuthState>(
        'emits [loading, unauthenticated] when sign out succeeds',
        setUp: () {
          when(() => mockAuthService.signOut()).thenAnswer((_) async => {});
        },
        build: () => authBloc,
        act: (bloc) => bloc.add(const SignOutRequested()),
        expect: () => [
          const AuthState(uiStatus: AuthUiStatus.loading, error: null),
          const AuthState(
            uiStatus: AuthUiStatus.unauthenticated,
            uid: null,
            email: null,
            currentUser: null,
          ),
        ],
      );

      blocTest<AuthBloc, AuthState>(
        'emits [loading, error] when sign out fails',
        setUp: () {
          when(() => mockAuthService.signOut())
              .thenThrow(Exception('Sign out failed'));
        },
        build: () => authBloc,
        act: (bloc) => bloc.add(const SignOutRequested()),
        expect: () => [
          const AuthState(uiStatus: AuthUiStatus.loading, error: null),
          const AuthState(
            uiStatus: AuthUiStatus.error,
            error: 'Sign out failed',
          ),
        ],
      );
    });

    group('AuthStatusChanged', () {
      const testUserId = 'user-123';
      const testEmail = 'test@example.com';

      blocTest<AuthBloc, AuthState>(
        'emits authenticated state when status changes to authenticated',
        setUp: () {
          final mockUser = MockUser();
          final user = User(
            id: testUserId,
            authId: testUserId,
            name: 'Test User',
            email: testEmail,
            createdAt: DateTime.now(),
            updatedAt: DateTime.now(),
          );

          when(() => mockUser.id).thenReturn(testUserId);
          when(() => mockUser.email).thenReturn(testEmail);
          when(() => mockAuthService.currentUser).thenReturn(mockUser);
          when(() => mockUserService.getUserById(testUserId))
              .thenAnswer((_) async => user);
        },
        build: () => authBloc,
        act: (bloc) => bloc.add(const AuthStatusChanged(true)),
        expect: () => [
          isA<AuthState>()
              .having((s) => s.uiStatus, 'uiStatus', AuthUiStatus.authenticated)
              .having((s) => s.uid, 'uid', testUserId)
              .having((s) => s.email, 'email', testEmail)
              .having((s) => s.currentUser, 'currentUser', isNotNull),
        ],
      );

      blocTest<AuthBloc, AuthState>(
        'emits unauthenticated state when status changes to unauthenticated',
        setUp: () {
          when(() => mockAuthService.currentUser).thenReturn(null);
        },
        build: () => authBloc,
        act: (bloc) => bloc.add(const AuthStatusChanged(false)),
        expect: () => [
          const AuthState(
            uiStatus: AuthUiStatus.unauthenticated,
            uid: null,
            email: null,
            currentUser: null,
          ),
        ],
      );
    });
  });
}
