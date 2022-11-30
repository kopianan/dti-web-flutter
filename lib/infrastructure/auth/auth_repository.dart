// ignore_for_file: unnecessary_null_comparison, void_checks

import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:dti_web/domain/auth/i_auth.dart';
import 'package:dti_web/domain/global/failures.dart';
import 'package:dti_web/infrastructure/core/error_response.dart';
import 'package:dti_web/utils/constant.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IAuth)
class AuthRepository extends IAuth {
  AuthRepository();
  Dio? dio;
  @override
  Future<Either<String, String>> loginAndGetToken(
      {required String email, required String password}) async {
    dio = Dio();

    final result = await dio!.post(Constant.baseUrl + "/login", data: {
      'email': email,
      'password': password,
    });

    if (result.data['data'] != null) {
      //Success
      return Right(result.data['data']['token']);
    }
    // return
    return Left("Something wrong");
  }

  @override
  Future<Either<Failures, String>> registerNewUser(
      {required String email,
      required String password,
      required String confirmPassword}) async {
    dio = Dio();
    try {
      final result = await dio!.post("${Constant.baseUrl}/signUp", data: {
        'email': email,
        'password': password,
        'confirmPassword': confirmPassword
      });
      print(result);
      if (result.data['token'] != null) {
        return Right(result.data['token'].toString());
      }
      return Left(Failures.noData("Something wrong"));
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
          if (e.response!.statusCode == 400) {
            print(e.response!.data);
            return Left(Failures.generalError(e.response!.data.toString()));
          }
          break;
        case DioErrorType.cancel:
          // TODO: Handle this case.
          break;
        case DioErrorType.other:
          // TODO: Handle this case.
          break;
      }
      print(e.toString());
      return Left(Failures.serverError());
    }
  }

  @override
  Future<Either<Failures, String>> resetPassword(
      {required String email}) async {
    dio = Dio();
    try {
      final result =
          await dio!.post("${Constant.baseUrl}/resetPassword", data: {
        'email': email,
      });
      print(result);
      if (result.data['message'] != null) {
        return Right(result.data['message'].toString());
      }
      return Left(Failures.noData("Something wrong"));
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
          if (e.response!.statusCode == 400) {
            print(e.response!.data);
            return Left(Failures.generalError(e.response!.data.toString()));
          }
          break;
        case DioErrorType.cancel:
          // TODO: Handle this case.
          break;
        case DioErrorType.other:
          // TODO: Handle this case.
          break;
      }
      print(e.toString());
      return Left(Failures.serverError());
    }
  }
}
