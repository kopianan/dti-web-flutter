part of 'dashboard_cubit.dart';

@freezed
class DashboardState with _$DashboardState {
  const factory DashboardState.initial() = _Initial;
  const factory DashboardState.loading() = _Loading;
  const factory DashboardState.error(Failures err) = _Error;
  const factory DashboardState.onGetSingleData(VisaApplicationModel visa) =
      _OnGetSingleData;
  const factory DashboardState.onDeleteSingleData(String message) =
      _OnDeleteSingleData;
}
