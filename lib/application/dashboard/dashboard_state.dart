part of 'dashboard_cubit.dart';

@freezed
class DashboardState with _$DashboardState {
  const factory DashboardState.initial() = _Initial;
  const factory DashboardState.loading() = _Loading;
  const factory DashboardState.error(Failures err) = _Error;
  const factory DashboardState.onGetSingleAppsData(SimpleVisaModel visa) =
      _OnGetSingleAppsData;
  const factory DashboardState.onGetSinglePassportData(SimpleVisaModel visa) =
      _OnGetSinglePassportData;
  const factory DashboardState.onGetSingleCorpData(SimpleVisaModel visa) =
      _OnGetSingleCorpData;
  const factory DashboardState.onDeleteSingleData(
      SimpleVisaModel deletedVisa, int appType) = _OnDeleteSingleData;
  const factory DashboardState.onDeletePassport(
      SimpleVisaModel deletedVisa, int appType) = _OnDeletePassport;
  const factory DashboardState.onDeleteCorporateApps(
      SimpleVisaModel deletedVisa, int appType) = _OnDeleteCorporateApps;
}
