part of 'dashboard_application_cubit.dart';

@freezed
class DashboardApplicationState with _$DashboardApplicationState {
  const factory DashboardApplicationState.initial() = _Initial;
  const factory DashboardApplicationState.loading() = _Loading;
  const factory DashboardApplicationState.error(Failures err) = _Error;
  const factory DashboardApplicationState.onGetCorporateApplication(
      SimpleVisaModel visa) = _OnGetCorporateApplication;
}
