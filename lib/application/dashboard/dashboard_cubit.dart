import 'package:bloc/bloc.dart';
import 'package:dti_web/domain/core/simple_visa_model.dart';
import 'package:dti_web/domain/dashboard/i_dashboard.dart';
import 'package:dti_web/domain/global/failures.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'dashboard_state.dart';
part 'dashboard_cubit.freezed.dart';

@LazySingleton()
class DashboardCubit extends Cubit<DashboardState> {
  DashboardCubit(this.iDashboard) : super(const DashboardState.initial());
  final IDashboard iDashboard;

  void getLastPassportAndApplicationData() async {

    emit(const DashboardState.loading());
    try {
      final data = await iDashboard.getLastPassportAndApplication();
      data.fold(
        (l) => emit(DashboardState.error(l)),
        (r) => emit(DashboardState.onGetSingleData(r)),
      );
    } on Exception {
      emit(DashboardState.error(Failures.serverError()));
    }
  }

  // void getLastData() async {
  //   emit(const DashboardState.loading());
  //   try {
  //     final data = await iDashboard.getSingleData();
  //     data.fold(
  //       (l) => emit(DashboardState.error(l)),
  //       (r) => emit(DashboardState.onGetSingleData(r)),
  //     );
  //   } on Exception {
  //     emit(DashboardState.error(Failures.serverError()));
  //   }
  // }

  void getLastPassport() async {
    emit(const DashboardState.loading());
    try {
      final data = await iDashboard.getSinglePassport();
      data.fold(
        (l) => emit(DashboardState.error(l)),
        (r) => emit(DashboardState.onGetSingleData(r)),
      );
    } on Exception {
      emit(DashboardState.error(Failures.serverError()));
    }
  }

  void deleteSingleData(SimpleVisaModel visa, int appsType) async {
    emit(const DashboardState.loading());
    try {
      final data = await iDashboard.deleteApplication(visa.firebaseDocId!);
      data.fold(
        (l) => emit(DashboardState.error(l)),
        (r) => emit(DashboardState.onDeleteSingleData(visa, appsType)),
      );
    } on Exception {
      emit(DashboardState.error(Failures.serverError()));
    }
  }

  void deleteSinglePassport(SimpleVisaModel visa, int appType) async {
    emit(const DashboardState.loading());
    try {
      final data = await iDashboard.deleteSinglePassport(visa.firebaseDocId!);
      data.fold(
        (l) => emit(DashboardState.error(l)),
        (r) => emit(DashboardState.onDeletePassport(visa, appType)),
      );
    } on Exception {
      emit(DashboardState.error(Failures.serverError()));
    }
  }
}
