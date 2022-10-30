import 'dart:convert';
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:dti_web/domain/application/i_application.dart';
import 'package:dti_web/domain/core/visa_application_model.dart';
import 'package:dti_web/utils/constant.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IApplication)
class ApplicationRepository extends IApplication {
  Dio? dio;

  @override
  Future<Either<String, String>> createNewApplicationDocument(
      VisaApplicationModel visaApplicationModel) async {
    dio = Dio();
    final result = await dio!.post('${Constant.baseUrl}/application',
        options: Options(
          headers: {'Authorization': 'Bearer ${Constant.header}'},
        ),
        data: visaApplicationModel.toJson());
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
  Future<Either<String, String>> updateApplicationDocument(
      VisaApplicationModel visaApplicationModel) async {
    dio = Dio();
    print(visaApplicationModel.toJson());
    //TODO: change id from visaapplicationModel
    try {
      final result = await dio!.post(
          "${Constant.baseUrl}/application/${visaApplicationModel.firebaseDocId}/",
          options: Options(
            headers: {
              "Authorization": "Bearer ${Constant.header}",
            },
          ),
          data: visaApplicationModel.toJson());
      print(result);
      print(json.encode(visaApplicationModel));
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
}
