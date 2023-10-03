import 'dart:developer';
import 'dart:math' as math;
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:dti_web/core/storage.dart';
import 'package:dti_web/domain/core/channel_type.dart';
import 'package:dti_web/domain/core/document_data_model.dart';
import 'package:dti_web/domain/core/single_visa_response.dart';
import 'package:dti_web/domain/core/visa_application_model.dart';
import 'package:dti_web/domain/global/failures.dart';
import 'package:dti_web/domain/update/i_update_application.dart';
import 'package:dti_web/domain/update/image_upload_response.dart';

import 'package:dti_web/infrastructure/core/error_response.dart';
import 'package:dti_web/utils/error_handling.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IUpdateApplication)
class IUpdateApplicationRepository extends IUpdateApplication {
  IUpdateApplicationRepository(this.dio);
  final Dio dio;
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
        await Future.delayed(const Duration(seconds: 3));

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
              dataImage = await dio.post(
                  '${dotenv.env['BASE_URL']}/passport/file/upload',
                  options: Options(headers: {
                    'Authorization': 'Bearer $token',
                  }),
                  data: formData);
            } else {
              dataImage = await dio.post(
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
        await Future.delayed(const Duration(seconds: 3));
        late Future<Response<dynamic>> result;
        if (isPassport(visa)) {
          result = dio.post(
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
          result = dio.post(
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
  Future<Either<Failures, String>> createNewApplicationDocument(
      VisaApplicationModel visaApplicationModel) async {
    final storage = Storage();
    try {
      final result = await dio.post('${dotenv.env['BASE_URL']}/application',
          options: Options(
              headers: {'Authorization': 'Bearer ${storage.getToken()}'}),
          data: visaApplicationModel.toJson());
      log(visaApplicationModel.toJson().toString());
      return Right(result.data['data']['firebaseDocId']);
    } on DioError catch (e) {
      return left(ErrorHandling().onDioErrorHandle(e));
    }
  }

  @override
  Future<Either<Failures, String>> updateVoaData(
      VisaApplicationModel visaApplicationModel) async {
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
      "motherName": visaApplicationModel.motherName,
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
      "guarantorDTI": true,
      "lastUpdatedChannel": ChannelType.website.getChannelType
    };
    try {
      final result = await dio.post(
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
    } on DioError catch (e) {
      return left(ErrorHandling().onDioErrorHandle(e));
    } on Exception {
      return left(Failures.serverError());
    }
  }

  @override
  Future<Either<Failures, String>> updateParticularData(
      VisaApplicationModel visaApplicationModel) async {
    final storage = Storage();
    final jsonParams = {
      "firstName": visaApplicationModel.firstName,
      "lastName": visaApplicationModel.lastName,
      "placeOfBirth": visaApplicationModel.placeOfBirth,
      "dateOfBirth": visaApplicationModel.dateOfBirth,
      "motherName": visaApplicationModel.motherName,
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
      "issuingCountry": visaApplicationModel.issuingCountry,
      "lastUpdatedChannel": ChannelType.website.getChannelType
    };
    try {
      final result = await dio.post(
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
    } on DioError catch (e) {
      return left(ErrorHandling().onDioErrorHandle(e));
    } on Exception {
      return left(Failures.serverError());
    }
  }

  @override
  Future<Either<Failures, VisaApplicationModel>> getUserApplicationById(
      String firebaseDocId) async {
    final storage = Storage();

    try {
      final result = await dio.get(
          "${dotenv.env['BASE_URL']}/application/$firebaseDocId",
          options: Options(
              headers: {"Authorization": "Bearer ${storage.getToken()}"}));

      dynamic data = result.data['data'];
      final visaApps = VisaApplicationModel.fromJson(data);
      return Right(visaApps);
    } on DioError catch (e) {
      return left(ErrorHandling().onDioErrorHandle(e));
    }
  }

  @override
  Future<Either<Failures, String>> updateGuarantor(
      VisaApplicationModel visa) async {
    final storage = Storage();

    try {
      final result = await dio.post(
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
    } on DioError catch (e) {
      return left(ErrorHandling().onDioErrorHandle(e));
    } on Exception {
      return left(Failures.serverError());
    }
  }

  @override
  Future<Either<Failures, String>> submitPassport(String firebaseDocId) async {
    final storage = Storage();

    try {
      final result = await dio.get(
          "${dotenv.env['BASE_URL']}/passport/$firebaseDocId/submit",
          options: Options(
              headers: {"Authorization": "Bearer ${storage.getToken()}"}));

      return Right(result.toString());
    } on DioError catch (e) {
      return left(ErrorHandling().onDioErrorHandle(e));
    }
  }

  @override
  Future<Either<Failures, String>> submitVisa(String firebaseDocId) async {
    final storage = Storage();

    try {
      final result = await dio.get(
          "${dotenv.env['BASE_URL']}/application/$firebaseDocId/submit",
          options: Options(
              headers: {"Authorization": "Bearer ${storage.getToken()}"}));

      return Right(result.toString());
    } on DioError catch (e) {
      return left(ErrorHandling().onDioErrorHandle(e));
    }
  }

  @override
  Future<Either<Failures, SingleVisaResponse>> getUserApplicationByIdWithImages(
      String firebaseDocId) async {
    final storage = Storage();
    try {
      final result = await dio.get(
        "${dotenv.env['BASE_URL']}/application/$firebaseDocId",
        options: Options(
          headers: {
            "Authorization": "Bearer ${storage.getToken()}",
          },
        ),
      );

      final visaApps = SingleVisaResponse.fromJson(result.data);
      return Right(visaApps);
    } on DioError catch (e) {
      return left(ErrorHandling().onDioErrorHandle(e));
    } on Exception {
      return Left(Failures.serverError());
    }
  }

  @override
  Future<Either<Failures, SingleVisaResponse>> getUserPassportByIdWithImages(
      String firebaseDocId) async {
    final storage = Storage();
    try {
      final result = await dio.get(
        "${dotenv.env['BASE_URL']}/passport/$firebaseDocId",
        options: Options(
          headers: {
            "Authorization": "Bearer ${storage.getToken()}",
          },
        ),
      );

      final visaApps = SingleVisaResponse.fromJson(result.data);
      return Right(visaApps);
    } on DioError catch (e) {
      return left(ErrorHandling().onDioErrorHandle(e));
    } on Exception {
      return Left(Failures.serverError());
    }
  }

  @override
  Future<Either<Failures, String>> deleteSingleImage(
    String imageName,
    String docId,
    String appId,
  ) async {
    final storage = Storage();
    try {
      var result = await dio.post(
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
    } on DioError catch (e) {
      return left(ErrorHandling().onDioErrorHandle(e));
    } on Exception {
      return Left(Failures.serverError());
    }
  }

  @override
  Future<Either<Failures, String>> updateMultiVisa(
      String duration, String firebaseDocId) async {
    final storage = Storage();

    try {
      final result = await dio.post(
          "${dotenv.env['BASE_URL']}/application/multiVisaDuration/$firebaseDocId",
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
    } on DioError catch (e) {
      return left(ErrorHandling().onDioErrorHandle(e));
    } on Exception {
      return left(Failures.serverError());
    }
  }

  @override
  Future<Either<Failures, String>> createUserPassport(bool isNew) async {
    final storage = Storage();
    var newVisaApps = VisaApplicationModel(
      title: "Passport",
      subTitle: isNew ? "New Passport" : "Renew Passport",
      type: isNew ? "New" : "Renew",
      price: 0,
      status: "Draft",
      documents: isNew ? "A6,P1,P2" : "A2,A3,A6,P1",
      createdChannel: ChannelType.website.getChannelType,
      userName:
          storage.getLocalUserData()?.name ?? storage.getLocalUserData()?.email,
    );

    try {
      final result = await dio.post(
        "${dotenv.env['BASE_URL']}/passport",
        options: Options(
          headers: {
            "Authorization": "Bearer ${storage.getToken()}",
          },
        ),
        data: newVisaApps.toJson(),
      );

      return Right(result.data['data']['firebaseDocId'].toString());
    } on DioError catch (e) {
      return left(ErrorHandling().onDioErrorHandle(e));
    } on Exception {
      return left(Failures.serverError());
    }
  }

  @override
  Future<Either<Failures, VisaApplicationModel>> getPassportById(
      String firebaseDocId) async {
    final storage = Storage();

    try {
      final result = await dio.get(
          "${dotenv.env['BASE_URL']}/passport/$firebaseDocId",
          options: Options(
              headers: {"Authorization": "Bearer ${storage.getToken()}"}));

      dynamic data = result.data['data'];
      final visaApps = VisaApplicationModel.fromJson(data);
      return Right(visaApps);
    } on DioError catch (e) {
      return left(ErrorHandling().onDioErrorHandle(e));
    } on Exception {
      return left(Failures.serverError());
    }
  }

  @override
  Future<Either<Failures, String>> updatePassportParticularData(
    VisaApplicationModel visaApplicationModel,
  ) async {
    final storage = Storage();
    try {
      final result = await dio.post(
          "${dotenv.env['BASE_URL']}/passport/${visaApplicationModel.firebaseDocId}/",
          options: Options(
            headers: {
              "Authorization": "Bearer ${storage.getToken()}",
            },
          ),
          data: visaApplicationModel.toJson());

      return Right(result.data['data']['message']);
    } on DioError catch (e) {
      return left(ErrorHandling().onDioErrorHandle(e));
    } on Exception {
      return left(Failures.serverError());
    }
  }

  @override
  Future<Either<Failures, String>> rejectApplication(
      String firebaseDocId, String notes) async {
    final storage = Storage();
    try {
      final result = await dio.post(
        "${dotenv.env['BASE_URL']}/application/$firebaseDocId/reject",
        data: {'rejectionNote': notes},
        options: Options(
          headers: {
            "Authorization": "Bearer ${storage.getToken()}",
          },
        ),
      );

      return Right(result.data['data']['message']);
    } on DioError catch (e) {
      return left(ErrorHandling().onDioErrorHandle(e));
    } on Exception {
      return left(Failures.serverError());
    }
  }

  @override
  Future<Either<Failures, String>> pendingPaymentApplication(
      String firebaseDocId, double price) async {
    final storage = Storage();
    try {
      final result = await dio.post(
        "${dotenv.env['BASE_URL']}/application/$firebaseDocId/pendingPayment",
        data: {'price': price},
        options: Options(
          headers: {
            "Authorization": "Bearer ${storage.getToken()}",
          },
        ),
      );
      if (result.data['data'] == null) {
        //ERROR
        return Left(result.data['error']);
      } else {
        return Right(result.data['data']['message']);
      }
    } on DioError catch (e) {
      return left(ErrorHandling().onDioErrorHandle(e));
    }
  }
}
