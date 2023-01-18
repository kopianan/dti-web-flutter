import 'package:country_code_picker/country_code_picker.dart';
import 'package:dio/dio.dart';
import 'package:dti_web/core/storage.dart';
import 'package:dartz/dartz.dart';
import 'package:dti_web/domain/global/failures.dart';
import 'package:dti_web/domain/other/i_other.dart';
import 'package:dti_web/domain/questionnaire/questionnaire_data_model.dart';
import 'package:dti_web/domain/questionnaire/questionnaire_model.dart';
import 'package:dti_web/env/env.dart';
import 'package:dti_web/utils/constant.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IOther)
class OtherRepository extends IOther {
  @override
  Future<Either<String, String>> getImageUrl(
      {required String applicationId,
      required String documentId,
      required String fileName}) async {
    Dio dio = Dio();
    Storage storage = Storage();
    try {
      final result = await dio.post('${Env.baseUrl}/downloadURL',
          data: {
            "appId": applicationId,
            "docId": documentId,
            "nameFile": fileName
          },
          options: Options(
            headers: {'Authorization': 'Bearer ${storage.getToken()}'},
          ));

      return Right(result.data['downloadUrl']);
    } catch (e) {
      print(e);
      return Left("Can not get download url");
    }
  }

  @override
  Future<Either<Failures, QuestionnaireDataModel>>
      getQuestionnaireList() async {
    Dio dio = Dio();
    Storage storage = Storage();
    try {
      final data = await dio.get('${Env.baseUrl}/master/questionnaire',
          options: Options(
            headers: {'Authorization': 'Bearer ${storage.getToken()}'},
          ));

      if (data.data['data'] != null) {
        final rawData = data.data['data'];
        return Right(QuestionnaireDataModel.fromJson(rawData));
      }
      return Left(Failures.generalError("Something Wrong"));
    } on DioError catch (e) {
      if (e.type == DioErrorType.response) {
        if (e.response!.statusCode! == 404) {
          if (e.response!.data['error'] != null) {
            return Left(Failures.generalError(e.response!.data['error']));
          }
          return Left(Failures.generalError("Something wrong"));
        } else if (e.response?.statusCode! == 403) {
          //authorization
          return Left(Failures.apiExpired());
        }
      }
      return Left(Failures.serverError());
    }
  }

  @override
  Future<Either<Failures, String>> generateOtp(
    CountryCode countryCode,
    String phoneNumber,
    String channel,
  ) async {
    final _dio = Dio();
    Storage storage = Storage();
    var _newNumber = phoneNumber;

    if (_newNumber.startsWith('0') && (countryCode.dialCode == "+62")) {
      _newNumber = _newNumber.replaceFirst('0', countryCode.dialCode!);
    } else {
      _newNumber = countryCode.dialCode! + _newNumber;
    }
    var _requst = {
      "to": _newNumber,
      "channel": channel,
    };
    print(_requst); 
    try {
      var _result = await _dio.post(
          "https://us-central1-doortoid-mobile.cloudfunctions.net/api/generateOTP",
          data: _requst,
          options: Options(
            headers: {'Authorization': 'Bearer ${storage.getToken()}'},
          ));
      var status = _result.data['status'];
      if (status == "success") {
        return right(status);
      }
      return left(Failures.generalError("something wrong"));
    } on Exception catch (e) {
      return left(Failures.serverError());
    }
  }

  @override
  Future<Either<Failures, String>> verifyOtp(
      {required String phoneNumber,
      required String code,
      required CountryCode countryCode}) async {
    Dio _dio = Dio();
    Storage storage = Storage();

    var _newNumber = phoneNumber;
    //remove the first

    if (_newNumber.startsWith('0')) {
      _newNumber = _newNumber.replaceFirst('0', '');
    } else if (_newNumber.contains('+')) {
      _newNumber = _newNumber.replaceFirst(countryCode.dialCode!, '');
    } else {
      _newNumber = _newNumber;
    }

    var requst = {
      "countryCode": countryCode.dialCode,
      "mobileNumber": _newNumber.trim(),
      "codeOtp": code,
    };
    print(requst);
    try {
      var _result = await _dio.post(
          "http://127.0.0.1:5002/doortoid-mobile/us-central1/api/verifyOTP",
          data: requst,
          options: Options(
            headers: {'Authorization': 'Bearer ${storage.getToken()}'},
          ));
      try {
        var status = _result.data['status'];
        if (status == "approved") {
          return right(status);
        }
      } catch (e) {
        return Left(Failures.generalError("Failed"));
      }

      return Left(Failures.generalError("Failed"));
    } on Exception catch (e) {
      return left(Failures.serverError());
    }
  }
}
