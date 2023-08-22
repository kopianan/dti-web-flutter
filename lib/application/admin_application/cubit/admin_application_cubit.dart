import 'package:bloc/bloc.dart';
import 'package:dti_web/domain/app_list/i_app_list.dart';
import 'package:dti_web/domain/core/simple_visa_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'admin_application_state.dart';
part 'admin_application_cubit.freezed.dart';

@injectable
class AdminApplicationCubit extends Cubit<AdminApplicationState> {
  AdminApplicationCubit(this.iApplist) : super(const AdminApplicationState.initial());

  final IAppList iApplist;

  void getAllCustomer() async {
    emit(const AdminApplicationState.loading());
    final result = await iApplist.getUserVisaApplication(false);
    result.fold(
      (l) => emit(const AdminApplicationState.error()),
      (r) {
        var visa = r.toList();
        
        visa.sort((a, b) => b.usedByDate.compareTo(a.usedByDate));
        emit(AdminApplicationState.getAllUserVisa(visa));
      },
    );
  }
}
