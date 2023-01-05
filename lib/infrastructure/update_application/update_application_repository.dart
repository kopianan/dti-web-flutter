import 'dart:developer';
import 'dart:math' as math;

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:dti_web/core/storage.dart';
import 'package:dti_web/domain/core/document_data_model.dart';
import 'package:dti_web/domain/core/single_visa_response.dart';
import 'package:dti_web/domain/core/visa_application_model.dart';
import 'package:dti_web/domain/global/failures.dart';
import 'package:dti_web/domain/update/i_update_application.dart';
import 'package:dti_web/domain/update/image_upload_response.dart';
import 'package:dti_web/infrastructure/core/error_response.dart';
import 'package:dti_web/utils/constant.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IUpdateApplication)
class IUpdateApplicationRepository extends IUpdateApplication {
  Dio? dio;

  @override
  Future<Either<Failures, List<ImageUploadResponse>>> uploadImagesAndUpdateData(
    VisaApplicationModel visa,
    DocumentDataModel doc,
    List<String> deletedImages, {
    Map<String, dynamic>? imageCollection,
  }) async {
    dio = Dio();
    final storage = Storage();
    try {
      String token = storage.getToken() ?? "";
      List<ImageUploadResponse> imageResponse = [];
      //Cek and uplaod image
      if (doc.imageList != null && doc.imageList!.isNotEmpty) {
        for (var e in doc.imageList!) {
          if (e != null && e.contains('/')) {
            //get image name / path if web then make the file

            final fileName =
                "${DateTime.now().millisecondsSinceEpoch + math.Random().nextInt(20000)}.${e.split('.').last}";

            var formData = FormData.fromMap({
              'docId': doc.id,
              'visaAppId': visa.applicationID,
              'userId': visa.createdBy,
              'file': kIsWeb
                  ? MultipartFile.fromBytes(imageCollection![e],
                      filename: fileName)
                  : MultipartFile.fromFileSync(
                      e,
                      filename: fileName,
                    )
            });
            var dataImage = await dio!.post(
                '${Constant.baseUrl}/application/file/upload',
                options: Options(headers: {'Authorization': 'Bearer $token'}),
                data: formData);
            //prepare data
            final imageUrl = dataImage.data['data'].toString();
            imageResponse.add(
              ImageUploadResponse(
                fileName: fileName,
                downloadUrl: imageUrl,
                appId: visa.applicationID,
                docId: doc.id,
                oldFileName: e,
              ),
            );
          }
        }
        // final multiRequest = doc.imageList!.map((e) async {
        //   if (e != null && e.contains('/')) {
        //     //get image name / path if web then make the file

        //     final fileName =
        //         "${DateTime.now().millisecondsSinceEpoch + math.Random().nextInt(20000)}.${e.split('.').last}";

        //     var formData = FormData.fromMap({
        //       'docId': doc.id,
        //       'visaAppId': visa.applicationID,
        //       'userId': visa.createdBy,
        //       'file': kIsWeb
        //           ? MultipartFile.fromBytes(imageCollection![e],
        //               filename: fileName)
        //           : MultipartFile.fromFileSync(
        //               e,
        //               filename: fileName,
        //             )
        //     });
        //     var result =
        //         dio!.post('${Constant.baseUrl}/application/file/upload',
        //             options: Options(
        //               headers: {
        //                 'Authorization': 'Bearer $token'
        //               },
        //             ),
        //             data: formData);
        //     return result;
        //   }
        // }).toList();

        // final multiResponse = await Future.wait(multiRequest);
      }

      //DELETE IMAGE
      if (deletedImages.isNotEmpty) {
        await Future.delayed(Duration(seconds: 3));
        var result = dio!.post(
          '${Constant.baseUrl}/application/file/delete',
          options: Options(
            headers: {'Authorization': 'Bearer ${storage.getToken()}'},
          ),
          data: {
            "fileName": deletedImages,
            "docId": doc.id,
            "visaAppId": visa.applicationID,
          },
        );
      }

      return Right(imageResponse);
    } on DioError catch (e) {
      ErrorResponse err = ErrorResponse();
      return Left(err.dioErrorChecker(e));
    } catch (e) {
      return Left(Failures.serverError());
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
    return Right(result.data['data']['firebaseDocId']);
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
      print(result);
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

      if (result.data['data'] == null) {
        //ERROR
        return Left(result.data['error']);
      } else {
        return Right(result.data['data']['message']);
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
          if (e.response!.statusCode! == 404) {
            if (e.response!.data['error'] != null) {
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

  @override
  Future<Either<String, SingleVisaResponse>> getUserApplicationByIdWithImages(
      String firebaseDocId) async {
    dio = Dio();
    final storage = Storage();
    print(firebaseDocId);
    try {
      final result = await dio!.get(
        "${Constant.baseUrl}/application/$firebaseDocId",
        options: Options(
          headers: {
            "Authorization": "Bearer ${storage.getToken()}",
          },
        ),
      );

      final visaApps = SingleVisaResponse.fromJson(result.data);
      return Right(visaApps);
    } on Exception catch (e) {
      return Left(e.toString());
    }
  }

  @override
  Future<Either<String, String>> deleteSingleImage(
    String imageName,
    String docId,
    String appId,
  ) async {
    final storage = Storage();
    try {
      var result = await dio!.post(
        '${Constant.baseUrl}/application/file/delete',
        options: Options(
          headers: {
            'Authorization': 'Bearer ${storage.getToken()}',
          },
        ),
        data: {
          "fileName": [imageName],
          "docId": docId,
          "visaAppId": appId,
        },
      );
      if (result.data['code'] == null) {
        return Right(result.data['message']);
      }
      return Left(result.data['message']);
    } on Exception catch (e) {
      return Left("Something wrong");
    }
  }

  @override
  Future<Either<String, String>> updateMultiVisa(String duration) async {
    //   dio = Dio();
    //   final storage = Storage();

    //   try {
    //     final result = await dio!.post(
    //         "${Constant.baseUrl}/application/guarantor/${visa.firebaseDocId}/",
    //         options: Options(
    //           headers: {
    //             "Authorization": "Bearer ${storage.getToken()}",
    //           },
    //         ),
    //         data: {"guarantorDTI": visa.guarantorDTI});

    //     if (result.data['data'] == null) {
    //       //ERROR
    //       return Left(result.data['error']);
    //     } else {
    //       return Right(result.data['data']['message']);
    //     }
    //   } on Exception catch (e) {
    //     return Left("");
    //   }
    throw Exception();
  }
}
