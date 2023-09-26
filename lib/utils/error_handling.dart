import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:dti_web/application/global/global_user_cubit.dart';
import 'package:dti_web/core/mixin/core_mixin.dart';
import 'package:dti_web/domain/global/failures.dart';
import 'package:dti_web/injection.dart';
import 'package:flutter/material.dart';

class ErrorHandling with CoreMixin {
  Failures onDioErrorHandle(DioError err) {
    if (err.error == DioErrorType.sendTimeout) {
      return Failures.apiExpired();
    }
    return Failures.serverError();
  }

  void checkFailuresError(BuildContext context, Failures failure) {
    failure.map(
      serverError: (e) {},
      apiExpired: (e) {
        log("ERROR DIALOG SHOULD BE SHOW");
        showErrDialog(
          context,
          title: "Token Expired",
          desc: "Token was expired, please re-login user",
          okText: "Login",
          btnOkOnPress: () {
            getIt<GlobalUserCubit>().logOutUser();
          },
        );
      },
      generalError: (e) {},
      noData: (e) {},
      timeOut: (e) {},
      authError: (e) {},
      browserIsSafari: (e) {},
    );
  }
}
