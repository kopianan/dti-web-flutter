import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dti_web/core/storage.dart';
import 'package:dti_web/domain/auth/user_data.dart';
import 'package:dti_web/domain/other/i_other.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

part 'global_user_state.dart';
part 'global_user_cubit.freezed.dart';

@lazySingleton
class GlobalUserCubit extends Cubit<GlobalUserState> {
  GlobalUserCubit(this.iOther) : super(GlobalUserState.initial());
  final IOther iOther;
  void setUserDatata(UserData user) {
    final token = Storage().getToken();
    emit(state.copyWith(user: user, token: token));
  }

  Future<String?> refreshToken() async {
    final data = await iOther.refreshToken();
    return data.fold(
      (l) => null,
      (r) {
        print("TOKEN $r");
        return r;
      },
    );
  }

  void logOutUserBecauseTokenExpired() async {
    emit(state.copyWith(
        logOut: true, message: "Token was expired, Please re-login"));
  }
}
