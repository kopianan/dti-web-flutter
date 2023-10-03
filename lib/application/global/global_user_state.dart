part of 'global_user_cubit.dart';

@freezed
class GlobalUserState with _$GlobalUserState {
  const GlobalUserState._();
  factory GlobalUserState({
    required UserData user,
    required bool isAgent,
    required String? token,
    @Default(false) bool logOut,
    String? message,
  }) = _GlobalUserState;
  factory GlobalUserState.initial() => GlobalUserState(
        user: UserData.empty(),
        isAgent: false,
        token: null,
      );

  bool needRefreshToken() {
    const refreshDiff = Duration(minutes: 30);
    if (token == null) {
      return false;
    }
    log(token.toString());

    final exp = JwtDecoder.getExpirationDate(token!);

    final now = DateTime.now();
    final diff = exp.difference(now);

    if (diff < refreshDiff) {
      return true;
    }
    return false;
  }
}
