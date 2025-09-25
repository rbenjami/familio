import 'package:familio/main.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import 'package:familio/data/services/home_service.dart';
import 'package:familio/brick/models/models.dart';
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

      final user = event.user;

      logger.info('Loading homes for user ${user.name}');

      final homes = await _homeService.getUserHomes(user.id);

      if (homes.isEmpty) {
        logger.info('User has no homes');
        emit(state.copyWith(userHomes: [], uiStatus: HomeUiStatus.loaded));
        return;
      }

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
      Home? selectedHome;
      try {
        selectedHome = state.userHomes.firstWhere(
          (home) => home.id == event.home.id,
        );
      } catch (e) {
        throw Exception('Home not found: ${event.home.id}');
      }

      // Get user permissions for this home
      final permissions = await _homeService.getUserPermissions(
        homeId: event.home.id,
        userId: event.userId,
      );

      emit(
        state.copyWith(
          selectedHome: selectedHome,
          currentUserPermissions: permissions != null
              ? HomeMemberPermissions(
                  canCreateTasks: permissions.canCreateTasks,
                  canEditTasks: permissions.canEditTasks,
                  canDeleteTasks: permissions.canDeleteTasks,
                  canInviteMembers: permissions.canInviteMembers,
                  canViewAllCalendars: permissions.canViewAllCalendars,
                  isAdmin: permissions.isAdmin,
                )
              : null,
        ),
      );

      logger.info('Home selected successfully: ${selectedHome.name}');
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
