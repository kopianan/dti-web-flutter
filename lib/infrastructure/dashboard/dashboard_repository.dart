import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:dti_web/core/storage.dart';
import 'package:dti_web/domain/core/simple_visa_model.dart';
import 'package:dartz/dartz.dart';
import 'package:dti_web/domain/dashboard/i_dashboard.dart';
import 'package:dti_web/domain/global/failures.dart';

import 'package:dti_web/infrastructure/core/error_response.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IDashboard)
class DashboardRepository extends IDashboard {
  @override
  Future<Either<Failures, SimpleVisaModel>> getSingleData() async {
    final dio = Dio();
    final storage = Storage();
    try {
      final result =
          await dio.get("${dotenv.env['BASE_URL']}/applicationsByUser/1",
              options: Options(
                headers: {'Authorization': 'Bearer ${storage.getToken()}'},
              ));
      if (result.data['data'] != null) {
        List listData = result.data['data'];
        if (listData.isEmpty) {
          return Left(Failures.noData("EMPTY"));
        } else {
          final modelData = SimpleVisaModel.fromJson(listData.first);
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
  Future<Either<Failures, SimpleVisaModel>>
      getLastPassportAndApplication() async {
    final dio = Dio();
    final storage = Storage();
    log(storage.getToken().toString());
    try {
      final result =
          await dio.get("${dotenv.env['BASE_URL']}/overallApplicationsByUser/1",
              options: Options(
                headers: {'Authorization': 'Bearer ${storage.getToken()}'},
              ));
      if (result.data['data'] != null) {
        List listData = result.data['data'];
        if (listData.isEmpty) {
          return Left(Failures.noData("EMPTY"));
        } else {
          final modelData = SimpleVisaModel.fromJson(listData.first);
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
  Future<Either<Failures, String>> deleteSinglePassport(
      String firebaseDocId) async {
    final dio = Dio();
    final storage = Storage();

    try {
      final result = await dio.get(
          "${dotenv.env['BASE_URL']}/passport/$firebaseDocId/delete",
          options: Options(
              headers: {'Authorization': 'Bearer ${storage.getToken()}'}));
      if (result.data['data'] != null) {
        //SUCCESS
        log(result.toString());
        return Right(result.data['data']['message']);
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
          "${dotenv.env['BASE_URL']}/application/$firebaseDocId/delete",
          options: Options(
              headers: {'Authorization': 'Bearer ${storage.getToken()}'}));
      if (result.data['data'] != null) {
        //SUCCESS
        log(result.toString());
        return Right(result.data['data']['message']);
      }

      return Left(Failures.generalError(result.toString()));
    } on DioError catch (e) {
      ErrorResponse err = ErrorResponse();
      return Left(err.dioErrorChecker(e));
    }
  }

  @override
  Future<Either<Failures, SimpleVisaModel>> getSinglePassport() async {
    final dio = Dio();
    final storage = Storage();
    try {
      final result =
          await dio.get("${dotenv.env['BASE_URL']}/passportsByUser/1",
              options: Options(
                headers: {'Authorization': 'Bearer ${storage.getToken()}'},
              ));
      if (result.data['data'] != null) {
        List listData = result.data['data'];
        if (listData.isEmpty) {
          return Left(Failures.noData("EMPTY"));
        } else {
          final modelData = SimpleVisaModel.fromJson(listData.first);
          return Right(modelData);
        }
      }
      return Left(Failures.generalError(result.toString()));
    } on DioError catch (e) {
      ErrorResponse err = ErrorResponse();
      return Left(err.dioErrorChecker(e));
    }
  }
}
