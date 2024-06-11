part of 'dashboard_application_cubit.dart';

@freezed
class DashboardApplicationState with _$DashboardApplicationState {
  factory DashboardApplicationState(
      {required SimpleVisaModel corporateApps,
      required SimpleVisaModel passportOrApps}) = _DashboardApplicationState;
  factory DashboardApplicationState.initial() => DashboardApplicationState(
      corporateApps: SimpleVisaModel(), passportOrApps: SimpleVisaModel());
}
