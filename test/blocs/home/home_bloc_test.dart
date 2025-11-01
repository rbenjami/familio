import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import 'package:familio/blocs/home/home_bloc.dart';
import 'package:familio/blocs/home/home_event.dart';
import 'package:familio/blocs/home/home_state.dart';
import 'package:familio/data/services/home_service.dart';
import 'package:familio/brick/models/models.dart';

// Mock classes
class MockHomeService extends Mock implements HomeService {}

void main() {
  late HomeBloc homeBloc;
  late MockHomeService mockHomeService;

  setUp(() {
    mockHomeService = MockHomeService();
    homeBloc = HomeBloc(mockHomeService);
  });

  tearDown(() {
    homeBloc.close();
  });

  // Test data
  final testUser = User(
    id: 'user-123',
    authId: 'auth-123',
    name: 'Test User',
    email: 'test@example.com',
    createdAt: DateTime.now(),
    updatedAt: DateTime.now(),
  );

  final testHome1 = Home(
    id: 'home-1',
    name: 'Test Home 1',
    createdAt: DateTime.now(),
    updatedAt: DateTime.now(),
  );

  final testHome2 = Home(
    id: 'home-2',
    name: 'Test Home 2',
    createdAt: DateTime.now(),
    updatedAt: DateTime.now(),
  );

  final testPermissions = HomeMemberPermissions(
    canCreateTasks: true,
    canEditTasks: true,
    canDeleteTasks: false,
    canInviteMembers: true,
    canViewAllCalendars: true,
    isAdmin: false,
  );

  group('HomeBloc', () {
    test('initial state is HomeState with initial status', () {
      expect(
        homeBloc.state,
        const HomeState(uiStatus: HomeUiStatus.initial),
      );
    });

    group('LoadUserHomes', () {
      blocTest<HomeBloc, HomeState>(
        'emits [loading, loaded] with homes when homes are loaded successfully',
        setUp: () {
          when(() => mockHomeService.getUserHomes(testUser.id))
              .thenAnswer((_) async => [testHome1, testHome2]);
        },
        build: () => homeBloc,
        act: (bloc) => bloc.add(LoadUserHomes(user: testUser)),
        expect: () => [
          const HomeState(uiStatus: HomeUiStatus.loading),
          HomeState(
            uiStatus: HomeUiStatus.loaded,
            userHomes: [testHome1, testHome2],
            selectedHome: testHome1,
          ),
        ],
      );

      blocTest<HomeBloc, HomeState>(
        'emits [loading, loaded] with empty list when user has no homes',
        setUp: () {
          when(() => mockHomeService.getUserHomes(testUser.id))
              .thenAnswer((_) async => []);
        },
        build: () => homeBloc,
        act: (bloc) => bloc.add(LoadUserHomes(user: testUser)),
        expect: () => [
          const HomeState(uiStatus: HomeUiStatus.loading),
          const HomeState(
            uiStatus: HomeUiStatus.loaded,
            userHomes: [],
          ),
        ],
      );

      blocTest<HomeBloc, HomeState>(
        'emits [loading, error] when loading homes fails',
        setUp: () {
          when(() => mockHomeService.getUserHomes(testUser.id))
              .thenThrow(Exception('Failed to load homes'));
        },
        build: () => homeBloc,
        act: (bloc) => bloc.add(LoadUserHomes(user: testUser)),
        expect: () => [
          const HomeState(uiStatus: HomeUiStatus.loading),
          isA<HomeState>()
              .having((s) => s.uiStatus, 'uiStatus', HomeUiStatus.error)
              .having((s) => s.error, 'error', isNotNull),
        ],
      );
    });

    group('SelectHome', () {
      blocTest<HomeBloc, HomeState>(
        'emits state with selected home and permissions when selection succeeds',
        setUp: () {
          when(
            () => mockHomeService.getUserPermissions(
              homeId: testHome1.id,
              userId: testUser.id,
            ),
          ).thenAnswer((_) async => testPermissions);
        },
        build: () => homeBloc,
        seed: () => HomeState(
          userHomes: [testHome1, testHome2],
          uiStatus: HomeUiStatus.loaded,
        ),
        act: (bloc) => bloc.add(
          SelectHome(home: testHome1, userId: testUser.id),
        ),
        expect: () => [
          HomeState(
            userHomes: [testHome1, testHome2],
            selectedHome: testHome1,
            currentUserPermissions: HomeMemberPermissions(
              canCreateTasks: true,
              canEditTasks: true,
              canDeleteTasks: false,
              canInviteMembers: true,
              canViewAllCalendars: true,
              isAdmin: false,
            ),
            uiStatus: HomeUiStatus.loaded,
          ),
        ],
      );

      blocTest<HomeBloc, HomeState>(
        'emits state with selected home and null permissions when permissions are null',
        setUp: () {
          when(
            () => mockHomeService.getUserPermissions(
              homeId: testHome1.id,
              userId: testUser.id,
            ),
          ).thenAnswer((_) async => null);
        },
        build: () => homeBloc,
        seed: () => HomeState(
          userHomes: [testHome1, testHome2],
          uiStatus: HomeUiStatus.loaded,
        ),
        act: (bloc) => bloc.add(
          SelectHome(home: testHome1, userId: testUser.id),
        ),
        expect: () => [
          HomeState(
            userHomes: [testHome1, testHome2],
            selectedHome: testHome1,
            currentUserPermissions: null,
            uiStatus: HomeUiStatus.loaded,
          ),
        ],
      );

      blocTest<HomeBloc, HomeState>(
        'emits error state when home is not found in userHomes list',
        setUp: () {
          // No setup needed as the home won't be found
        },
        build: () => homeBloc,
        seed: () => const HomeState(
          userHomes: [], // Empty list - home won't be found
          uiStatus: HomeUiStatus.loaded,
        ),
        act: (bloc) => bloc.add(
          SelectHome(home: testHome1, userId: testUser.id),
        ),
        expect: () => [
          isA<HomeState>()
              .having((s) => s.uiStatus, 'uiStatus', HomeUiStatus.error)
              .having((s) => s.error, 'error', contains('Home not found')),
        ],
      );

      blocTest<HomeBloc, HomeState>(
        'emits error state when getting permissions fails',
        setUp: () {
          when(
            () => mockHomeService.getUserPermissions(
              homeId: testHome1.id,
              userId: testUser.id,
            ),
          ).thenThrow(Exception('Failed to get permissions'));
        },
        build: () => homeBloc,
        seed: () => HomeState(
          userHomes: [testHome1, testHome2],
          uiStatus: HomeUiStatus.loaded,
        ),
        act: (bloc) => bloc.add(
          SelectHome(home: testHome1, userId: testUser.id),
        ),
        expect: () => [
          isA<HomeState>()
              .having((s) => s.uiStatus, 'uiStatus', HomeUiStatus.error)
              .having((s) => s.error, 'error', isNotNull),
        ],
      );
    });

    group('RefreshHomes', () {
      blocTest<HomeBloc, HomeState>(
        'triggers LoadUserHomes event',
        setUp: () {
          when(() => mockHomeService.getUserHomes(testUser.id))
              .thenAnswer((_) async => [testHome1]);
        },
        build: () => homeBloc,
        act: (bloc) => bloc.add(RefreshHomes(user: testUser)),
        expect: () => [
          const HomeState(uiStatus: HomeUiStatus.loading),
          HomeState(
            uiStatus: HomeUiStatus.loaded,
            userHomes: [testHome1],
            selectedHome: testHome1,
          ),
        ],
      );
    });
  });
}
