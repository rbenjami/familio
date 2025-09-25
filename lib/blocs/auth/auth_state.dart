import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:familio/brick/models/models.dart';

part 'auth_state.freezed.dart';

enum AuthUiStatus { initial, loading, authenticated, unauthenticated, error }

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState({
    @Default(AuthUiStatus.initial) AuthUiStatus uiStatus,
    String? uid,
    String? email,
    User? currentUser,
    String? error,
  }) = _AuthState;
}
