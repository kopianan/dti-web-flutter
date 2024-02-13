import 'package:dio/dio.dart';
import 'package:dti_web/core/mixin/core_mixin.dart';
import 'package:dti_web/domain/global/failures.dart';

class ErrorHandling with CoreMixin {
  Failures onDioErrorHandle(DioError err) {
    print(err); 
    if (err.error == DioErrorType.sendTimeout) {
      return Failures.apiExpired();
    } else if (err.error == DioErrorType.badResponse) {
      if (err.response!.statusCode == 400) {
        return Failures.generalError(err.response!.data.toString());
      }
      if (err.response!.statusCode == 404) {
        return Failures.generalError(err.response!.data['error']);
      }
    }
    return Failures.serverError();
  }
}
