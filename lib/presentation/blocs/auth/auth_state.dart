import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.freezed.dart';

enum AuthUiStatus { initial, loading, authenticated, unauthenticated, error }

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState({
    @Default(AuthUiStatus.initial) AuthUiStatus uiStatus,
    String? uid,
    String? email,
    String? error,
  }) = _AuthState;
}
