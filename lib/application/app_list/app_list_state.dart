part of 'app_list_cubit.dart';

@freezed
class AppListState with _$AppListState {
  const factory AppListState.initial() = _Initial;
  const factory AppListState.onLoading() = _OnLoading;
  const factory AppListState.onError(String errMsg) = _OnError;
  const factory AppListState.onGetUsersApplication(List<SimpleVisaModel> apps) =
      _OnGetUsersApplication;
}
