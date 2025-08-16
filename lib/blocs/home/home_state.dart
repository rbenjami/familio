import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:familio/data/models/models.dart';

part 'home_state.freezed.dart';

@freezed
abstract class HomeState with _$HomeState {
  const factory HomeState({
    @Default([]) List<HomeDocumentSnapshot> userHomes,
    HomeDocumentSnapshot? selectedHome,
    MemberPermissions? currentUserPermissions,
    @Default(HomeUiStatus.initial) HomeUiStatus uiStatus,
    String? error,
  }) = _HomeState;
}

enum HomeUiStatus { initial, loading, loaded, error }
