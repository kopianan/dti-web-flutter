part of 'auth_cubit.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;

  const factory AuthState.loading() = _Loading;
  const factory AuthState.error(String error) = _Error;
  const factory AuthState.onError(Failures error) = _OnError;

  //LOGIN
  const factory AuthState.onSignOut() = _OnSignOut;
  const factory AuthState.authorized() = _Authorized;
  const factory AuthState.unAuthorized() = _UnAuthorized;
  const factory AuthState.onLoginSuccess(String token) = _OnLoginSuccess;
  const factory AuthState.onRegisterSuccess(String token) = _OnRegisterSuccess;
  const factory AuthState.onResetPassword(String message) = _OnResetPassword;
  const factory AuthState.onGetUserData(UserData userData) = _OnGetUserData;
}
