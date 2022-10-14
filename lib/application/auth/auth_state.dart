part of 'auth_cubit.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;

  const factory AuthState.loading() = _Loading;
  const factory AuthState.error(String error) = _Error;

  //LOGIN
  const factory AuthState.onLoginSuccess(String token) = _OnLoginSuccess;
}
