import 'dart:developer';
import 'dart:math' as math;
import 'package:http_parser/http_parser.dart';
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
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IUpdateApplication)
class IUpdateApplicationRepository extends IUpdateApplication {
  Dio? dio;
  bool isPassport(VisaApplicationModel visa) {
    if (visa.subTitle!.toLowerCase().contains('passport')) {
      return true;
    }
    return false;
  }

  @override
  Future<Either<Failures, ImageUploadResponse>> uploadSelfie(
      VisaApplicationModel visa,
      Map<String, dynamic>? imageCollection,
      List<String> deletedImages) async {
    final dio = Dio();
    final storage = Storage();
    try {
      String token = storage.getToken() ?? "";

      //Cek and uplaod image

      final fileName =
          "${DateTime.now().millisecondsSinceEpoch + math.Random().nextInt(20000)}.${imageCollection!.keys.first.split('.').last}";

      var formData = FormData.fromMap({
        'passportAppId': visa.applicationID,
        'docId': 'Selfie',
        'file': kIsWeb
            // ? MultipartFile.fromBytes(imageCollection![e],
            // filename: fileName)
            ? MultipartFile.fromBytes(imageCollection.values.first,
                filename: fileName)
            : MultipartFile.fromFileSync(
                imageCollection.keys.single,
                filename: fileName,
              )
      });

      final dataImage = await dio.post(
        '${dotenv.env['BASE_URL']}/passport/selfie/${visa.firebaseDocId}',
        options: Options(headers: {'Authorization': 'Bearer $token'}),
        data: formData,
      );

      //prepare data
      final imageUrl = dataImage.data['data'].toString();

      //DELETE IMAGE
      if (visa.selfieImage != null) {
        await Future.delayed(Duration(seconds: 3));

        var result = dio.post(
          '${dotenv.env['BASE_URL']}/passport/file/delete',
          options: Options(
            headers: {'Authorization': 'Bearer ${storage.getToken()}'},
          ),
          data: {
            "fileName": deletedImages,
            "docId": "Selfie",
            "passportAppId": visa.applicationID,
          },
        );
      }
      final response =
          ImageUploadResponse(fileName: fileName, downloadUrl: imageUrl);

      return Right(response);
    } on DioError catch (e) {
      ErrorResponse err = ErrorResponse();
      return Left(err.dioErrorChecker(e));
    } catch (e) {
      return Left(Failures.serverError());
    }
  }

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
              'passportAppId': visa.applicationID,
              'userId': visa.createdBy,
              'file': kIsWeb
                  // ? MultipartFile.fromBytes(imageCollection![e],
                  // filename: fileName)
                  ? MultipartFile.fromBytes(
                      imageCollection![e],
                      filename: fileName,
                      // contentType:MediaType(type, subtype)
                    )
                  : MultipartFile.fromFileSync(
                      e,
                      filename: fileName,
                    )
            });
            late Response<dynamic> dataImage;
            if (isPassport(visa)) {
              dataImage = await dio!
                  .post('${dotenv.env['BASE_URL']}/passport/file/upload',
                      options: Options(headers: {
                        'Authorization': 'Bearer $token',
                      }),
                      data: formData);
            } else {
              dataImage = await dio!.post(
                  '${dotenv.env['BASE_URL']}/application/file/upload',
                  options: Options(headers: {'Authorization': 'Bearer $token'}),
                  data: formData);
            }

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
      }

      //DELETE IMAGE
      if (deletedImages.isNotEmpty) {
        await Future.delayed(Duration(seconds: 3));
        late Future<Response<dynamic>> result;
        if (isPassport(visa)) {
          result = dio!.post(
            '${dotenv.env['BASE_URL']}/passport/file/delete',
            options: Options(
              headers: {'Authorization': 'Bearer ${storage.getToken()}'},
            ),
            data: {
              "fileName": deletedImages,
              "docId": doc.id,
              "passportAppId": visa.applicationID,
            },
          );
        } else {
          result = dio!.post(
            '${dotenv.env['BASE_URL']}/application/file/delete',
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
    final result = await dio!.post('${dotenv.env['BASE_URL']}/application',
        options: Options(
          headers: {'Authorization': 'Bearer ${storage.getToken()}'},
        ),
        data: visaApplicationModel.toJson()
        // data: {
        //   "title": visaApplicationModel.title,
        //   "subTitle": visaApplicationModel.subTitle,
        //   "entry": visaApplicationModel.entry,
        //   "price": 0,
        //   "currency": "Rp",
        //   "documents": visaApplicationModel.documents,
        //   "status": "Draft",
        //   "inIndonesia": visaApplicationModel.inIndonesia
        // },
        );
    print(visaApplicationModel.toJson());
    return Right(result.data['data']['firebaseDocId']);
  }

  @override
  Future<Either<String, String>> updateVoaData(
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
      "cityDomicile": null,
      "district": visaApplicationModel.district,
      "inIndonesia": visaApplicationModel.inIndonesia,
      "issuingCountry": visaApplicationModel.issuingCountry,
      "modeOfTransportation": visaApplicationModel.modeOfTransportation,
      "flightNumber": visaApplicationModel.flightNumber,
      "arrivalDate": visaApplicationModel.arrivalDate,
      "guarantorDTI": true
    };
    try {
      final result = await dio!.post(
          "${dotenv.env['BASE_URL']}/application/${visaApplicationModel.firebaseDocId}/",
          options: Options(
            headers: {
              "Authorization": "Bearer ${storage.getToken()}",
            },
          ),
          data: jsonParams);
      if (result.data['data'] == null) {
        //ERROR
        return Left(result.data['data']['message']);
      } else {
        return Right(result.data['data']['message']);
      }
    } on Exception catch (e) {
      return Left("");
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
    try {
      final result = await dio!.post(
          "${dotenv.env['BASE_URL']}/application/${visaApplicationModel.firebaseDocId}/",
          options: Options(
            headers: {
              "Authorization": "Bearer ${storage.getToken()}",
            },
          ),
          data: jsonParams);
      if (result.data['data'] == null) {
        //ERROR
        return Left(result.data['data']['message']);
      } else {
        return Right(result.data['data']['message']);
      }
    } on Exception catch (e) {
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
          "${dotenv.env['BASE_URL']}/application/$firebaseDocId",
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
          "${dotenv.env['BASE_URL']}/application/guarantor/${visa.firebaseDocId}/",
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
  Future<Either<Failures, String>> submitPassport(String firebaseDocId) async {
    final dio = Dio();
    final storage = Storage();

    try {
      final result = await dio.get(
          "${dotenv.env['BASE_URL']}/passport/$firebaseDocId/submit",
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
  Future<Either<Failures, String>> submitVisa(String firebaseDocId) async {
    dio = Dio();
    final storage = Storage();

    try {
      final result = await dio!.get(
          "${dotenv.env['BASE_URL']}/application/$firebaseDocId/submit",
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
    try {
      final result = await dio!.get(
        "${dotenv.env['BASE_URL']}/application/$firebaseDocId",
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
  Future<Either<String, SingleVisaResponse>> getUserPassportByIdWithImages(
      String firebaseDocId) async {
    dio = Dio();
    final storage = Storage();
    try {
      final result = await dio!.get(
        "${dotenv.env['BASE_URL']}/passport/$firebaseDocId",
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
        '${dotenv.env['BASE_URL']}/application/file/delete',
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
  Future<Either<String, String>> updateMultiVisa(
      String duration, String firebaseDocId) async {
    dio = Dio();
    final storage = Storage();

    try {
      final result = await dio!.post(
          "${dotenv.env['BASE_URL']}/application/multiVisaDuration/${firebaseDocId}",
          options: Options(
            headers: {
              "Authorization": "Bearer ${storage.getToken()}",
            },
          ),
          data: {"multiVisaDuration": duration});

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
  Future<Either<String, String>> createUserPassport(bool isNew) async {
    final storage = Storage();
    final dio = Dio();
    var newVisaApps = VisaApplicationModel(
      title: "Passport",
      subTitle: isNew ? "New Passport" : "Renew Passport",
      type: isNew ? "New" : "Renew",
      price: 0,
      status: "Draft",
      documents: isNew ? "A6,P1,P2" : "A2,A3,A6,P1",
      userName:
          storage.getLocalUserData()?.name ?? storage.getLocalUserData()?.email,
    );

    final result = await dio.post(
      "${dotenv.env['BASE_URL']}/passport",
      options: Options(
        headers: {
          "Authorization": "Bearer ${storage.getToken()}",
        },
      ),
      data: newVisaApps.toJson(),
    );

    if (result.data['data'] != null) {
      return Right(result.data['data']['firebaseDocId'].toString());
    }
    return Left(result.data['message'].toString());
  }

  @override
  Future<Either<String, VisaApplicationModel>> getPassportById(
      String firebaseDocId) async {
    dio = Dio();
    final storage = Storage();

    try {
      final result = await dio!.get(
          "${dotenv.env['BASE_URL']}/passport/$firebaseDocId",
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
  Future<Either<String, String>> updatePassportParticularData(
    VisaApplicationModel visaApplicationModel,
  ) async {
    dio = Dio();
    final storage = Storage();
    try {
      final result = await dio!.post(
          "${dotenv.env['BASE_URL']}/passport/${visaApplicationModel.firebaseDocId}/",
          options: Options(
            headers: {
              "Authorization": "Bearer ${storage.getToken()}",
            },
          ),
          data: visaApplicationModel.toJson());
      if (result.data['data'] == null) {
        //ERROR
        return Left(result.data['data']['message']);
      } else {
        return Right(result.data['data']['message']);
      }
    } on Exception catch (e) {
      return Left("");
    }
  }
}
