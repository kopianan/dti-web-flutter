import 'dart:convert';
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:dti_web/core/storage.dart';
import 'package:dti_web/domain/application/i_application.dart';
import 'package:dti_web/domain/core/document_data_model.dart';
import 'package:dti_web/domain/core/visa_application_model.dart';
import 'package:dti_web/domain/global/failures.dart';
import 'package:dti_web/domain/update/i_update_application.dart';
import 'package:dti_web/infrastructure/core/error_response.dart';
import 'package:dti_web/utils/constant.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IUpdateApplication)
class IUpdateApplicationRepository extends IUpdateApplication {
  Dio? dio;

  @override
  Future<Either<Failures, String>> uploadImagesAndUpdateData(
      VisaApplicationModel visa, DocumentDataModel doc) async {
    dio = Dio();
    final storage = Storage();
    try {
      // doc.imageList!.forEach((element) async {
      //   var formData = FormData.fromMap({
      //     'docId': doc.id,
      //     'visaAppId': visa.applicationID,
      //     'userId': visa.createdBy,
      //     'file': MultipartFile.fromFileSync(doc.imageList!.single!,
      //         filename: DateTime.now().millisecondsSinceEpoch.toString())
      //   });
      // });

      //  final result = await dio!.post(
      //   '${Constant.baseUploadUrl}/fileUpload',
      //   options: Options(
      //     headers: {'Authorization': 'Bearer ${storage.getToken()}'},
      //   ),
      //   data: formData,
      // );
      // log(result.toString(), name: "UPLOAD FILE");
      // if (result.data['downloadURL'] != null) {
      //   return Right(result.data['downloadURL']);
      // }
      // return Left(
      //     Failures.generalError(result.data['message'] ?? "Something wrong"));
      print(doc.imageList);
      print(visa.applicationID);
      print(visa.createdBy);
      final multiRequest = doc.imageList!.map((e) async {
        if (e != null) {
          var formData = FormData.fromMap({
            'docId': doc.id,
            'visaAppId': visa.applicationID,
            'userId': visa.createdBy,
            'file': await MultipartFile.fromFile(
              e,
              filename:
                  "${DateTime.now().millisecondsSinceEpoch}.${e.split('.').last}",
            )
          });
          var result = dio!.post('${Constant.baseUrl}/application/file/upload',
              options: Options(
                headers: {'Authorization': 'Bearer ${storage.getToken()}'},
              ),
              data: formData);
          return result;
        }
      }).toList();

      final multiResponse = await Future.wait(multiRequest);
      return Right("Success Upload photo");
    } on DioError catch (e) {
      ErrorResponse err = ErrorResponse();
      return Left(err.dioErrorChecker(e));
    } catch (e) {
      print(e);
      throw Exception();
    }
  }

  @override
  Future<Either<String, String>> createNewApplicationDocument(
      VisaApplicationModel visaApplicationModel) async {
    dio = Dio();
    final storage = Storage();
    final result = await dio!.post('${Constant.baseUrl}/application',
        options: Options(
          headers: {'Authorization': 'Bearer ${storage.getToken()}'},
        ),
        data: visaApplicationModel.toJson());
    if (result.data['firebaseDocId'] != null) {
      return Right(result.data['firebaseDocId']);
    }

    if (result.data['code'] != null) {
      //ERROR
      return Left(result.data['message']);
    } else {
      String msg = result.data['message'].toString();
      String id = msg.split(' ')[1];
      log(id, name: "ID DOCS");
      return Right(id);
    }
  }

  @override
  Future<Either<String, String>> updateParticularData(
      VisaApplicationModel visaApplicationModel) async {
    dio = Dio();
    final storage = Storage();
    final jsonParams = {
      "firstName": visaApplicationModel.firstName,
      "lastName": visaApplicationModel.lastName,
      "placeOfBirth": visaApplicationModel.placeOfBirth,
      "dateOfBirth": visaApplicationModel.dateOfBirth,
      "gender": visaApplicationModel.gender,
      "nationality": visaApplicationModel.nationality!.toUpperCase(),
      "relationshipStatus": visaApplicationModel.relationshipStatus,
      "mobileCountryCode": visaApplicationModel.mobileCountryCode,
      "mobileDialCode": visaApplicationModel.mobileDialCode,
      "mobileNumber": visaApplicationModel.mobileNumber,
      "deportedFlag": visaApplicationModel.deportedFlag,
      "overstayedFlag": visaApplicationModel.overstayedFlag,
      "passportNumber": visaApplicationModel.passportNumber,
      "dateOfIssue": visaApplicationModel.dateOfIssue,
      "dateOfExpiration": visaApplicationModel.dateOfExpiration,
      "address": visaApplicationModel.address,
      "province": visaApplicationModel.province,
      "city": visaApplicationModel.city,
      "cityDomicile": visaApplicationModel.cityDomicile,
      "district": visaApplicationModel.district,
      "inIndonesia": visaApplicationModel.inIndonesia,
      "issuingCountry": visaApplicationModel.issuingCountry
    };
    log(jsonParams.toString(), name: "JSON PARAMS");
    try {
      final result = await dio!.post(
          "${Constant.baseUrl}/application/${visaApplicationModel.firebaseDocId}/",
          options: Options(
            headers: {
              "Authorization": "Bearer ${storage.getToken()}",
            },
          ),
          data: jsonParams);
      log(result.toString(), name: "RESULT UPDATE");
      if (result.data['code'] != null) {
        //ERROR
        return Left(result.data['message']);
      } else {
        return Right(result.data['message']);
      }
    } on Exception catch (e) {
      print(e);
      return Left("");
    }
  }

  @override
  Future<Either<String, VisaApplicationModel>> getUserApplicationById(
      String firebaseDocId) async {
    dio = Dio();
    final storage = Storage();

    try {
      final result = await dio!.get(
          "${Constant.baseUrl}/application/$firebaseDocId",
          options: Options(
              headers: {"Authorization": "Bearer ${storage.getToken()}"}));

      if (result.data['data'] != null) {
        dynamic data = result.data['data'];
        final visaApps = VisaApplicationModel.fromJson(data);
        return Right(visaApps);
      }
      return Left(result.toString());
    } on Exception catch (e) {
      return Left(e.toString());
    }
  }

  @override
  Future<Either<String, String>> updateGuarantor(
      VisaApplicationModel visa) async {
    dio = Dio();
    final storage = Storage();

    try {
      final result = await dio!.post(
          "${Constant.baseUrl}/application/guarantor/${visa.firebaseDocId}/",
          options: Options(
            headers: {
              "Authorization": "Bearer ${storage.getToken()}",
            },
          ),
          data: {"guarantorDTI": visa.guarantorDTI});
      print(result);
      if (result.data['code'] != null) {
        //ERROR
        return Left(result.data['message']);
      } else {
        return Right(result.data['message']);
      }
    } on Exception catch (e) {
      return Left("");
    }
  }

  @override
  Future<Either<Failures, String>> submitVisa(String firebaseDocId) async {
    dio = Dio();
    final storage = Storage();

    try {
      final result = await dio!.get(
          "${Constant.baseUrl}/application/$firebaseDocId/submit",
          options: Options(
              headers: {"Authorization": "Bearer ${storage.getToken()}"}));

      return Right(result.toString());
    } on DioError catch (e) {
      switch (e.type) {
        case DioErrorType.connectTimeout:
          // TODO: Handle this case.
          break;
        case DioErrorType.sendTimeout:
          // TODO: Handle this case.
          break;
        case DioErrorType.receiveTimeout:
          // TODO: Handle this case.
          break;
        case DioErrorType.response:
          print(e.response);
          print(e.response!.statusCode!);
          if (e.response!.statusCode! == 404) {
            if (e.response!.data['error']) {
              return Left(Failures.generalError(e.response!.data['error']));
            }
            return Left(Failures.generalError("Something wrong"));
          }
          break;
        case DioErrorType.cancel:
          // TODO: Handle this case.
          break;
        case DioErrorType.other:
          // TODO: Handle this case.
          break;
      }
      return Left(Failures.serverError());
    }
  }
}
