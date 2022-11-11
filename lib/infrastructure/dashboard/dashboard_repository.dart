import 'package:dio/dio.dart';
import 'package:dti_web/core/storage.dart';
import 'package:dti_web/domain/core/visa_application_model.dart';
import 'package:dartz/dartz.dart';
import 'package:dti_web/domain/dashboard/i_dashboard.dart';
import 'package:dti_web/domain/global/failures.dart';
import 'package:dti_web/infrastructure/core/error_response.dart';
import 'package:dti_web/utils/constant.dart';
import 'package:get/state_manager.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IDashboard)
class DashboardRepository extends IDashboard {
  @override
  Future<Either<Failures, VisaApplicationModel>> getSingleData() async {
    final dio = Dio();
    final storage = Storage();
    try {
      final result = await dio.get(Constant.baseUrl + "/applicationsByUser/",
          options: Options(
            headers: {'Authorization': 'Bearer ${storage.getToken()}'},
          ));
      if (result.data['data'] != null) {
        List listData = result.data['data'];
        if (listData.isEmpty) {
          return Left(Failures.noData("EMPTY"));
        } else {
          final modelData = VisaApplicationModel.fromJson(listData.first);
          return Right(modelData);
        }
      }
      return Left(Failures.generalError(result.toString()));
    } on DioError catch (e) {
      ErrorResponse err = ErrorResponse();
      return Left(err.dioErrorChecker(e));
    }
  }

  @override
  Future<Either<Failures, String>> deleteApplication(
      String firebaseDocId) async {
    final dio = Dio();
    final storage = Storage();

    try {
      final result = await dio.get(
          Constant.baseUrl + "/application/$firebaseDocId/delete",
          options:
              Options(headers: {'Authorization': 'Bearer ${storage.getToken() }'}));
      if (result.data['message'] != null) {
        //SUCCESS
        return Right(result.data['message']);
      }
      if (result.data['error'] != null) {
        //ERROR
        return Left(result.data['error']);
      }
      return Left(Failures.generalError(result.toString()));
    } on DioError catch (e) {
      ErrorResponse err = ErrorResponse();
      return Left(err.dioErrorChecker(e));
    }
  }
}
