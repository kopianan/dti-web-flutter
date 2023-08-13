part of 'global_user_cubit.dart';

@freezed
class GlobalUserState with _$GlobalUserState {
  factory GlobalUserState({required UserData user, required bool isAgent}) =
      _GlobalUserState;
  factory GlobalUserState.initial() =>
      GlobalUserState(user: UserData.empty(), isAgent: false);
}
