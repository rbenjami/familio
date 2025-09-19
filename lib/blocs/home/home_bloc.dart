import 'package:familio/main.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import 'package:familio/data/services/home_service.dart';
import 'package:familio/data/models/models.dart';
import 'home_event.dart';
import 'home_state.dart';

@singleton
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomeService _homeService;

  HomeBloc(this._homeService) : super(const HomeState()) {
    on<LoadUserHomes>(_onLoadUserHomes);
    on<SelectHome>(_onSelectHome);
    on<RefreshHomes>(_onRefreshHomes);
  }

  Future<void> _onLoadUserHomes(
    LoadUserHomes event,
    Emitter<HomeState> emit,
  ) async {
    try {
      emit(state.copyWith(uiStatus: HomeUiStatus.loading));

      final user = event.user.data!;

      // Get homes from User's home references
      final homeIds = user.homes.map((home) => home.id).toList();

      if (homeIds.isEmpty) {
        logger.info('User has no homes');
        emit(state.copyWith(userHomes: [], uiStatus: HomeUiStatus.loaded));
        return;
      }

      logger.info('Loading homes for user ${user.name} with homeIds: $homeIds');

      final homesSnapshot = await homesRef
          .whereDocumentId(whereIn: homeIds)
          .get();

      final homes = homesSnapshot.docs;

      final selectedHome = homes.firstOrNull;

      emit(
        state.copyWith(
          userHomes: homes,
          selectedHome: selectedHome,
          uiStatus: HomeUiStatus.loaded,
        ),
      );

      logger.info('Loaded ${homes.length} homes for user ${user.name}');
    } catch (e, s) {
      logger.error('Error in _onLoadUserHomes: $e', e, s);
      emit(state.copyWith(uiStatus: HomeUiStatus.error, error: e.toString()));
    }
  }

  Future<void> _onSelectHome(SelectHome event, Emitter<HomeState> emit) async {
    try {
      logger.info('Selecting home: ${event.home.id}');

      // Find the home in the current list
      HomeDocumentSnapshot? selectedHome;
      try {
        selectedHome = state.userHomes.firstWhere((home) => home == event.home);
      } catch (e) {
        throw Exception('Home not found: ${event.home}');
      }

      // Get user permissions for this home
      final permissions = await _homeService.getUserPermissions(
        event.home.reference,
        event.user,
      );

      emit(
        state.copyWith(
          selectedHome: selectedHome,
          currentUserPermissions: permissions,
        ),
      );

      logger.info('Home selected successfully: ${selectedHome.data!.name}');
    } catch (e) {
      logger.error('Error selecting home: $e');
      emit(state.copyWith(uiStatus: HomeUiStatus.error, error: e.toString()));
    }
  }

  Future<void> _onRefreshHomes(
    RefreshHomes event,
    Emitter<HomeState> emit,
  ) async {
    add(LoadUserHomes(user: event.user));
  }
}
