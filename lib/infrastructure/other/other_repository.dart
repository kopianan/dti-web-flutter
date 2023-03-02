import 'dart:convert';

import 'package:country_code_picker/country_code_picker.dart';
import 'package:dio/dio.dart';
import 'package:dti_web/core/storage.dart';
import 'package:dartz/dartz.dart';
import 'package:dti_web/domain/core/country_nationality.dart';
import 'package:dti_web/domain/core/document_data_model.dart';
import 'package:dti_web/domain/global/failures.dart';
import 'package:dti_web/domain/other/i_other.dart';
import 'package:dti_web/domain/questionnaire/questionnaire_data_model.dart';

import 'package:flutter_dotenv/flutter_dotenv.dart';
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
      final result = await dio.post('${dotenv.env['BASE_URL']}/downloadURL',
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
      return const Left("Can not get download url");
    }
  }

  @override
  Future<Either<Failures, QuestionnaireDataModel>>
      getQuestionnaireList() async {
    Dio dio = Dio();
    Storage storage = Storage();
    try {
      final data =
          await dio.get('${dotenv.env['BASE_URL']}/master/questionnaire',
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
    final dio = Dio();
    Storage storage = Storage();
    var newNumber = phoneNumber;

    if (newNumber.startsWith('0') && (countryCode.dialCode == "+62")) {
      newNumber = newNumber.replaceFirst('0', countryCode.dialCode!);
    } else {
      newNumber = countryCode.dialCode! + newNumber;
    }
    var requst = {
      "to": newNumber,
      "channel": channel,
    };
    try {
      var result = await dio.post("${dotenv.env['BASE_URL']}/generateOTP",
          data: requst,
          options: Options(
            headers: {'Authorization': 'Bearer ${storage.getToken()}'},
          ));
      var status = result.data['status'];
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
    Dio dio = Dio();
    Storage storage = Storage();

    var newNumber = phoneNumber;
    //remove the first

    if (newNumber.startsWith('0')) {
      newNumber = newNumber.replaceFirst('0', '');
    } else if (newNumber.contains('+')) {
      newNumber = newNumber.replaceFirst(countryCode.dialCode!, '');
    } else {
      newNumber = newNumber;
    }

    var requst = {
      "countryCode": countryCode.dialCode,
      "mobileNumber": newNumber.trim(),
      "codeOtp": code,
    };
    try {
      var result = await dio.post('${dotenv.env['BASE_URL']}/verifyOTPNew',
          data: requst,
          options: Options(
            headers: {'Authorization': 'Bearer ${storage.getToken()}'},
          ));
      try {
        var status = result.data['status'];
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

  @override
  Future<Either<Failures, List<DocumentDataModel>>>
      getApplicationMasterData() async {
    Dio dio = Dio();
    Storage storage = Storage();
    try {
      final data = await dio.get('${dotenv.env['BASE_URL']}/master/application',
          options: Options(
            headers: {'Authorization': 'Bearer ${storage.getToken()}'},
          ));

      if (data.data['data'] != null) {
        List rawData = data.data['data']['document_list'];
        return Right(rawData
            .map(
              (e) => DocumentDataModel.fromJson(e),
            )
            .toList());
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
  Future<Either<Failures, dynamic>> getLocation() async {
    Dio dio = Dio();
    Storage storage = Storage();
    try {
      final data = await dio.get('${dotenv.env['BASE_URL']}/master/location',
          options: Options(
            headers: {'Authorization': 'Bearer ${storage.getToken()}'},
          ));

      if (data.data['data'] != null) {
        final _nationality =
            data.data['data']['nationality'] as Map<String, dynamic>;
        var _nationalityList = _nationality.entries.map((element) {
          var _newNationality = CountryNationality(
            code: element.key,
            name: element.value,
          );
          return _newNationality;
        }).toList();
        Storage().setNationality(json.encode(_nationalityList));

        print(_nationality.length);
        return Right("");
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
  Future<Either<Failures, String>> contactUs(String name, String title) async {
    final dio = Dio();
    Storage storage = Storage();

    try {
      var result = await dio.post('${dotenv.env['BASE_URL']}/userContactUs',
          data: {
            'name': name,
            'title': title,
          },
          options: Options(
            headers: {'Authorization': 'Bearer ${storage.getToken()}'},
          ));
      var data = result.data['data'];
      if (data != null) {
        return right(data['message']);
      }
      return left(Failures.generalError("something wrong"));
    } on Exception catch (e) {
      return left(Failures.serverError());
    }
  }

  @override
  Future<Either<Failures, dynamic>> sendFeedback(
      int rating, String comment) async {
    final dio = Dio();
    Storage storage = Storage();

    try {
      var user = storage.getLocalUserData();
      var result = await dio.post('${dotenv.env['BASE_URL']}/userFeedback',
          data: {
            "name": user?.name ?? user?.email ?? "no name",
            "rating": rating,
            "comment": comment,
          },
          options: Options(
            headers: {'Authorization': 'Bearer ${storage.getToken()}'},
          ));
      var data = result.data['data'];
      if (data != null) {
        return right(data['message']);
      }
      return left(Failures.generalError("something wrong"));
    } on Exception catch (e) {
      return left(Failures.serverError());
    }
  }
}
