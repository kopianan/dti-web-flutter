import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
class Failures with _$Failures {
  factory Failures.serverError() = _ServerError;
  factory Failures.apiExpired() = _ApiExpired;
  factory Failures.generalError(String err) = _GeneralError;
  factory Failures.noData(String err) = _NoData;
  factory Failures.timeOut(String err) = _TimeOut;
  factory Failures.authError(String message) = _AuthError;
}
