part of 'app_list_cubit.dart';

@freezed
class AppListState with _$AppListState {
  const AppListState._();

  const factory AppListState({
    required AppListStatus status,
    String? errorMessage,
    @Default([]) List<DataListModel> apps,
  }) = _AppListState;
  List<DataListModel> get getSelectedApplication =>
      apps.where((e) => e.selected).toList();

  bool get showDeleteButton => apps.any((element) => element.selected == true);
  factory AppListState.initial() => AppListState(status: AppListStatus.initial);
}
