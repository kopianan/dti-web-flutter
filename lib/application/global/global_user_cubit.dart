import 'package:bloc/bloc.dart';
import 'package:dti_web/core/storage.dart';
import 'package:dti_web/domain/auth/user_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'global_user_state.dart';
part 'global_user_cubit.freezed.dart';

@lazySingleton
class GlobalUserCubit extends Cubit<GlobalUserState> {
  GlobalUserCubit() : super(GlobalUserState.initial());

  void setUserDatata(UserData user) {
    emit(state.copyWith(user: user));
  }

  void logOutUser() async {
    await Storage().deleteStorage();
    emit(state.copyWith(logOut: true));
  }
}
