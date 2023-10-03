import 'package:bloc/bloc.dart';
import 'package:dti_web/domain/admin_application/i_admin_application.dart';
import 'package:dti_web/domain/core/simple_visa_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'admin_application_state.dart';
part 'admin_application_cubit.freezed.dart';

@injectable
class AdminApplicationCubit extends Cubit<AdminApplicationState> {
  AdminApplicationCubit(this.iAdminApplication)
      : super(const AdminApplicationState.initial());

  final IAdminApplication iAdminApplication;
  
  void getAllUserVisa() async {
    emit(const AdminApplicationState.loading());
    final result = await iAdminApplication.getAllUserApplication();
    result.fold(
      (l) => emit(const AdminApplicationState.error()),
      (r) {
        var visa = r.toList();

        try {
          visa.sort((a, b) => b.createdDate!.compareTo(a.createdDate!));
        } on Exception {
          // TODO
        }
        emit(AdminApplicationState.getAllUserVisa(visa));
      },
    );
  }
}
