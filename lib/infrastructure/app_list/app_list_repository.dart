import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:dti_web/core/storage.dart';
import 'package:dti_web/domain/app_list/i_app_list.dart';
import 'package:dti_web/domain/application/i_application.dart';
import 'package:dti_web/domain/core/simple_visa_model.dart';
import 'package:dti_web/domain/core/visa_application_model.dart';
import 'package:dti_web/env/env.dart';
import 'package:dti_web/utils/constant.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IAppList)
class AppListRepository extends IAppList {
  Dio? dio;
  final storage = Storage();
  @override
  Future<Either<String, List<SimpleVisaModel>>> getUserVisaApplication() async {
    dio = Dio();
    final result = await dio!.get('${Env.baseUrl}/applicationsByUser',
        options: Options(
          headers: {'Authorization': 'Bearer ${storage.getToken()}'},
        )); 
    final listData = (result.data['data'] as List)
        .map((e) => SimpleVisaModel.fromJson(e))
        .toList();
    return Right(listData);
  }

//   @override
//   Future<Either<String, String>> createNewApplicationDocument(
//       VisaApplicationModel visaApplicationModel) async {
//     dio = Dio();
//     final result = await dio!.post('${Env.baseUrl}/application',
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
