import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:dti_web/core/storage.dart';
import 'package:dti_web/domain/admin_application/i_admin_application.dart';
import 'package:dti_web/domain/core/simple_visa_model.dart';
import 'package:dti_web/domain/global/failures.dart';
import 'package:dti_web/utils/error_handling.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IAdminApplication)
class AdminApplicationRepository extends IAdminApplication {
  AdminApplicationRepository(this.dio);
  final Dio dio;
  final storage = Storage();
  @override
  Future<Either<Failures, List<SimpleVisaModel>>>
      getAllUserApplication() async {
    try {
      final result = await dio.get('${dotenv.env['BASE_URL']}/applications',
          options: Options(
            headers: {'Authorization': 'Bearer ${storage.getToken()}'},
          ));

      final listData = (result.data['data'] as List)
          .map((e) => SimpleVisaModel.fromJson(e))
          .toList();
      try {
        listData.sort((a, b) => a.createdDate!.compareTo(b.createdDate!));
      } on Exception {
        // TODO
      }
      return Right(listData);
    } on DioError catch (e) {
      return left(ErrorHandling().onDioErrorHandle(e));
    } on Exception {
      return left(Failures.serverError());
    }
  }
}
