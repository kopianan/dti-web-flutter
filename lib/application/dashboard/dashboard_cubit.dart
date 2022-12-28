import 'package:bloc/bloc.dart';
import 'package:dti_web/domain/core/simple_visa_model.dart';
import 'package:dti_web/domain/core/visa_application_model.dart';
import 'package:dti_web/domain/dashboard/i_dashboard.dart';
import 'package:dti_web/domain/global/failures.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'dashboard_state.dart';
part 'dashboard_cubit.freezed.dart';

@Injectable()
class DashboardCubit extends Cubit<DashboardState> {
  DashboardCubit(this.iDashboard) : super(const DashboardState.initial());
  final IDashboard iDashboard;

  void getLastData() async {
    emit(const DashboardState.loading());
    try {
      final data = await iDashboard.getSingleData();
      data.fold(
        (l) => emit(DashboardState.error(l)),
        (r) => emit(DashboardState.onGetSingleData(r)),
      );
    } on Exception catch (e) {
      emit(DashboardState.error(Failures.serverError()));
    }
  }

  void deleteSingleData(String firebaseDocId) async {
    emit(const DashboardState.loading());
    try {
      final data = await iDashboard.deleteApplication(firebaseDocId);
      data.fold(
        (l) => emit(DashboardState.error(l)),
        (r) => emit(DashboardState.onDeleteSingleData(r)),
      );
    } on Exception catch (e) {
      emit(DashboardState.error(Failures.serverError()));
    }
  }
}
