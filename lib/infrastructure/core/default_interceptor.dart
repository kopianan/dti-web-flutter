import 'package:dio/dio.dart';

class DefaultInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    print('REQUEST[${options.method}] => PATH: ${options.path}');
    super.onRequest(options, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    final resp = err.response;

    if (resp?.statusCode == 400) {
      print(resp?.data);
      if (resp?.data['code'] == 'auth/id-token-expired') {
        //Expected is expired token
        //can refresh token here.
        print(resp?.data['message']);
      }
    }
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    print(
        'RESPONSE[${response.statusCode}] => PATH: ${response.requestOptions.path}');
    super.onResponse(response, handler);
  }
}
