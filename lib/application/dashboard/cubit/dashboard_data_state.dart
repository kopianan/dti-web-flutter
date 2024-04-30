part of 'dashboard_data_cubit.dart';

@freezed
class DashboardDataState with _$DashboardDataState {
  const DashboardDataState._();
  const factory DashboardDataState({SimpleVisaModel? simpleVisal}) =
      _DashboardDataState;
  factory DashboardDataState.initial() => const DashboardDataState();
}
