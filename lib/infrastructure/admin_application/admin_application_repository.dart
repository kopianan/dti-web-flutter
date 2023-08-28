import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:dti_web/core/storage.dart';
import 'package:dti_web/domain/admin_application/i_admin_application.dart';
import 'package:dti_web/domain/app_list/i_app_list.dart';
import 'package:dti_web/domain/core/simple_visa_model.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IAdminApplication)
class AdminApplicationRepository extends IAdminApplication {
  AdminApplicationRepository(this.dio);
  final Dio dio;
  final storage = Storage();
  @override
  Future<Either<String, List<SimpleVisaModel>>> getAllUserApplication() async {
    try {
      final result = await dio.get('${dotenv.env['BASE_URL']}/applications',
          options: Options(
            headers: {'Authorization': 'Bearer ${storage.getToken()}'},
          ));

      final listData = (result.data['data'] as List)
          .map((e) => SimpleVisaModel.fromJson(e))
          .toList();
      listData.sort(
        (a, b) => a.createdDate.compareTo(b.createdDate),
      );
      return Right(listData);
    } on Exception catch (e) {
      log(e.toString());
      return left("");
    }
  }
}
