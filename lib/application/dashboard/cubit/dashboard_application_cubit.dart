import 'package:bloc/bloc.dart';
import 'package:dti_web/domain/core/simple_visa_model.dart';
import 'package:dti_web/domain/dashboard/i_dashboard.dart';
import 'package:dti_web/domain/global/failures.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'dashboard_application_state.dart';
part 'dashboard_application_cubit.freezed.dart';

@injectable
class DashboardApplicationCubit extends Cubit<DashboardApplicationState> {
  DashboardApplicationCubit(this.iDashboard)
      : super(const DashboardApplicationState.initial());
  final IDashboard iDashboard;
  void getLastCorporateApplication() async {
    emit(const DashboardApplicationState.loading());
    try {
      final data = await iDashboard.getLastCorporationApplication();
      data.fold(
        (l) => emit(DashboardApplicationState.error(l)),
        (r) => emit(DashboardApplicationState.onGetCorporateApplication(r)),
      );
    } on Exception {
      emit(DashboardApplicationState.error(Failures.serverError()));
    }
  }
}
