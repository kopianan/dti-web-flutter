// ignore_for_file: unnecessary_null_comparison, void_checks

import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:dti_web/domain/auth/i_auth.dart';
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
    if (result.data['general'] != null) {
      //error
      return Left(result.data['general']);
    }
    if (result.data['token'] != null) {
      //Success
      return Right(result.data['token']);
    }
    // return
    return Left("Something wrong");
  }
}
