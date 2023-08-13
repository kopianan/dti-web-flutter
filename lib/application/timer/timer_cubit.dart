import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dti_web/core/storage.dart';
import 'package:dti_web/domain/other/i_other.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

part 'timer_state.dart';
part 'timer_cubit.freezed.dart';

@LazySingleton()
class TimerCubit extends Cubit<TimerState> {
  TimerCubit(this.iOther) : super(TimerState.initial());
  IOther iOther;

  void startTimer() async {
    final storage = Storage();

    //inspect token expiration

    final remaining = Duration(seconds: 10);
    const oneSec = Duration(seconds: 1);
    String token =
        "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJPbmxpbmUgSldUIEJ1aWxkZXIiLCJpYXQiOjE2Nzk3MjMwODUsImV4cCI6MTY3OTcyMzQ0NSwiYXVkIjoid3d3LmV4YW1wbGUuY29tIiwic3ViIjoianJvY2tldEBleGFtcGxlLmNvbSIsIkdpdmVuTmFtZSI6IkpvaG5ueSIsIlN1cm5hbWUiOiJSb2NrZXQiLCJFbWFpbCI6Impyb2NrZXRAZXhhbXBsZS5jb20iLCJSb2xlIjpbIk1hbmFnZXIiLCJQcm9qZWN0IEFkbWluaXN0cmF0b3IiXX0.W5YYh05I5Z2wa5xfac-Xn1rxUwa2Lc1K4hfAKvOkdbM";

    emit(state.copyWith(
        timer: Timer.periodic(
      oneSec,
      (Timer timer) {
        final decodedToken = JwtDecoder.getRemainingTime(token);
        if (decodedToken.inSeconds == 0) {
          timer.cancel();
          startTimer();
        } else {
          // if (_start < 10) {
          //   //check remaingin
          //   if (remaining.inSeconds < 10) {
          //     iOther.refreshToken().then((value) {
          //       log(value);
          //       //re run  timer
          //       startTimer(10);
          //     });
          //   }
          // }
        }
      },
    )));
  }

  void refreshToken() {}
}
