import 'package:bloc/bloc.dart';
import 'package:dti_web/domain/core/simple_visa_model.dart';
import 'package:dti_web/domain/dashboard/i_dashboard.dart';
import 'package:dti_web/domain/global/failures.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'dashboard_application_state.dart';
part 'dashboard_application_cubit.freezed.dart';

@singleton
class DashboardApplicationCubit extends Cubit<DashboardApplicationState> {
  DashboardApplicationCubit(this.iDashboard)
      : super(DashboardApplicationState.initial());
  final IDashboard iDashboard;

  void setLastCorporate(SimpleVisaModel visa) {
    emit(state.copyWith(corporateApps: visa));
  }

  void setLastApps(SimpleVisaModel visa) {
    emit(state.copyWith(passportOrApps: visa));
  }
}
