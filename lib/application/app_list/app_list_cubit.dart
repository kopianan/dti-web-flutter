import 'package:bloc/bloc.dart';
import 'package:dti_web/domain/app_list/i_app_list.dart';
import 'package:dti_web/domain/core/simple_visa_model.dart';
import 'package:dti_web/domain/global/data_list_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'app_list_state.dart';
part 'app_list_cubit.freezed.dart';

enum AppListStatus { loading, error, initial, success }

@Injectable()
class AppListCubit extends Cubit<AppListState> {
  AppListCubit(this.iAppList) : super(AppListState.initial());
  final IAppList iAppList;
  void updateAllSelected(bool status) {
    var detailList = state.apps;
    final newList =
        detailList.map((a) => a.copyWith(selected: status)).toList();
    emit(state.copyWith(apps: newList));
  }

  void updateSelectedRow(int index) {
    var detailList = state.apps[index];
    final newData = detailList.copyWith(selected: !detailList.selected);

    var newList = state.apps.toList();
    newList.removeAt(index);
    newList.insert(index, newData);
    emit(state.copyWith(apps: newList));
  }

  void getUserApplication() async {
    emit(state.copyWith(status: AppListStatus.loading));
    final result = await iAppList.getUserVisaApplication();
    result.fold(
      (l) => emit(state.copyWith(status: AppListStatus.error, errorMessage: l)),
      (r) {
        final newData =
            r.map((e) => DataListModel(bodyData: e, selected: false)).toList();
        emit(state.copyWith(status: AppListStatus.success, apps: newData));
      },
    );
  }
}
