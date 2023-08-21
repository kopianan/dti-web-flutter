import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:dti_web/core/storage.dart';
import 'package:dti_web/domain/app_list/i_app_list.dart';
import 'package:dti_web/domain/core/simple_visa_model.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IAppList)
class AppListRepository extends IAppList {
  AppListRepository(this.dio);
  final Dio dio;
  final storage = Storage();
  @override
  Future<Either<String, List<SimpleVisaModel>>> getUserVisaApplication(
      bool isAgent) async {
    //ONLY GET APPLICATION, NOT PASSPORT
    // final result =
    // await dio!.get('${dotenv.env['BASE_URL']}/applicationsByUser',
    //     options: Options(
    //       headers: {'Authorization': 'Bearer ${storage.getToken()}'},
    //     ));
    try {
      final result = (isAgent)
          //AGENT
          ? await dio.get('${dotenv.env['BASE_URL']}/overallApplicationsByUser',
              options: Options(
                headers: {'Authorization': 'Bearer ${storage.getToken()}'},
              ))
          //ADMIN
          : await dio.get('${dotenv.env['BASE_URL']}/applications',
              options: Options(
                headers: {'Authorization': 'Bearer ${storage.getToken()}'},
              ));

      final listData = (result.data['data'] as List)
          .map((e) => SimpleVisaModel.fromJson(e))
          .toList();
      listData.sort(
        (a, b) => a.createdDate!.compareTo(b.createdDate!),
      );
      return Right(listData);
    } on Exception catch (e) {
      log(e.toString());
      return left("");
    }
  }

//   @override
//   Future<Either<String, String>> createNewApplicationDocument(
//       VisaApplicationModel visaApplicationModel) async {
//     dio = Dio();
//     final result = await dio!.post('${dotenv.env['BASE_URL']}/application',
//         options: Options(
//           headers: {'Authorization': 'Bearer ${Constant.header}'},
//         ),
//         data: visaApplicationModel.toJson());
//     if (result.data['code'] != null) {
//       //ERROR
//       return Left(result.data['message']);
//     } else {
//       return Right(result.data['message']);
//     }
//   }
}
