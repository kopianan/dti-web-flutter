import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:dti_web/application/global/global_user_cubit.dart';
import 'package:dti_web/injection.dart';

class DefaultInterceptor extends Interceptor {
  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    log('REQUEST[${options.method}] => PATH: ${options.path}');
    final needRefresh = getIt<GlobalUserCubit>().state.needRefreshToken();

    if (needRefresh) {
      //refresh the token here
      final newToken = await getIt<GlobalUserCubit>().refreshToken();
      if (newToken != null) {
        options.headers['Authorization'] = 'Bearer $newToken';
        return handler.next(options);
      }
      return handler.reject(
        DioError.requestCancelled(
            requestOptions: options, reason: "Expired, need resign"),
      );
    }

    super.onRequest(options, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    final resp = err.response!;

    print(getIt<GlobalUserCubit>().state.user);

    if (resp.data['code'] == 'auth/id-token-expired') {
      //Expected is expired token
      //can refresh token here.
      log(resp.data['message']);
      print("SHOULD LOGOUT");
      getIt<GlobalUserCubit>().logOutUser();
    }
    if (resp.data['error'] == "Invalid token") {
      getIt<GlobalUserCubit>().logOutUser();
    }
    // if (resp?.statusCode == 400) {
    //   log(resp?.data);
    //   if (resp?.data['code'] == 'auth/id-token-expired') {
    //     //Expected is expired token
    //     //can refresh token here.
    //     log(resp?.data['message']);
    //   }
    // }
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    log('RESPONSE[${response.statusCode}] => PATH: ${response.requestOptions.path}');
    super.onResponse(response, handler);
  }
}
