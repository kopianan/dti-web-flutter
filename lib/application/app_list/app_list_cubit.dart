import 'package:bloc/bloc.dart';
import 'package:dti_web/domain/app_list/i_app_list.dart';
import 'package:dti_web/domain/core/simple_visa_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'app_list_state.dart';
part 'app_list_cubit.freezed.dart';

@Injectable()
class AppListCubit extends Cubit<AppListState> {
  AppListCubit(this.iAppList) : super(const AppListState.initial());
  final IAppList iAppList;

  void getUserApplication() async {
    emit(AppListState.onLoading()); 
    final result = await iAppList.getUserVisaApplication();
    result.fold(
      (l) => emit(AppListState.onError(l)),
      (r) => emit(AppListState.onGetUsersApplication(r)),
    );
  }
}
