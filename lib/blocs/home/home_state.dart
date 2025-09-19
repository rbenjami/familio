import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:familio/data/models/models.dart';
import 'package:familio/data/services/home_service.dart';

part 'home_state.freezed.dart';

@freezed
abstract class HomeState with _$HomeState {
  const factory HomeState({
    @Default([]) List<Home> userHomes,
    Home? selectedHome,
    HomeMemberPermissions? currentUserPermissions,
    @Default(HomeUiStatus.initial) HomeUiStatus uiStatus,
    String? error,
  }) = _HomeState;
}

enum HomeUiStatus { initial, loading, loaded, error }
