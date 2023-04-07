import 'package:dio/dio.dart';
import 'package:dti_web/domain/global/failures.dart';

class ErrorResponse {
  Failures dioErrorChecker(DioError errorDio) {
    switch (errorDio.type) {
      case DioErrorType.connectionTimeout:
        return Failures.timeOut("TIME OUT");

      case DioErrorType.sendTimeout:
        return Failures.timeOut("TIME OUT");
      case DioErrorType.receiveTimeout:
        return Failures.timeOut("TIME OUT");
      case DioErrorType.badResponse:
        if (errorDio.response!.statusCode == 400) {
          if (errorDio.response!.data['code'] != null) {
            //this is error TOKEN Expired
            return Failures.apiExpired();
          }
        }
        if (errorDio.response!.statusCode == 500) {
          return Failures.serverError();
        }
        break;
      case DioErrorType.cancel:
        return Failures.timeOut("TIME OUT");

      case DioErrorType.unknown:
        return Failures.serverError();
    }
    return Failures.serverError();
  }
}
