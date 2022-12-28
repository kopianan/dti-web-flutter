// ignore_for_file: unnecessary_null_comparison, void_checks

import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:dti_web/core/storage.dart';
import 'package:dti_web/domain/auth/i_auth.dart';
import 'package:dti_web/domain/auth/user_data.dart';
import 'package:dti_web/domain/global/failures.dart';
import 'package:dti_web/infrastructure/core/error_response.dart';
import 'package:dti_web/utils/constant.dart';
// import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IAuth)
class AuthRepository extends IAuth {
  AuthRepository();
  Dio? dio;

  @override
  Future<Either<Failures, UserData>> getUserData() async {
    final storage = Storage();
    dio = Dio();

    final result = await dio!.get("${Constant.baseUrl}/user",
        options: Options(
          headers: {'Authorization': 'Bearer ${storage.getToken()}'},
        ));

    if (result.data['data'] != null) {
      //Success
      final userRaw = (result.data['data']);

      return Right(UserData.fromJson(userRaw));
    }
    return Left(Failures.generalError("Something wrong"));
  }

  @override
  Future<Either<String, String>> loginAndGetToken(
      {required String email, required String password}) async {
    dio = Dio();

    try {
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
    } on DioError catch (e) {
      if (e.type == DioErrorType.response) {
        if (e.response != null) {
          if (e.response!.statusCode == 403) {
            return Left(e.response!.data!['error']);
          }
          if (e.response!.statusCode == 500) {
            return Left("Server Error");
          }
        }
      }
      return Left(e.toString());
    }
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
      if (result.data['data']['token'] != null) {
        return Right(result.data['data']['token'].toString());
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
      if (result.data['data']['message'] != null) {
        return Right(result.data['data']['message'].toString());
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

  // @override
  // Future<Either<Failures, String>> loginWithGoogle() async {
  //   //Trigger Authentication Flow
  //   GoogleSignIn _googleSignIn = GoogleSignIn();
  //   FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  //   final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
  //   if (googleUser == null) {
  //     return left(Failures.noData("No User Found"));
  //   }

  //   //Obtain the auth details from the request
  //   final GoogleSignInAuthentication googleAuth =
  //       await googleUser.authentication;

  //   final GoogleAuthCredential credential = GoogleAuthProvider.credential(
  //     accessToken: googleAuth.accessToken,
  //     idToken: googleAuth.idToken,
  //   ) as GoogleAuthCredential;

  //   //Once Sign In, return the UserCredential
  //   UserCredential userCreds =
  //       await _firebaseAuth.signInWithCredential(credential);
  //   if (userCreds != null) {
  //     print(userCreds);
  //     // userModel = LoginUserModel(
  //     //     displayName: userCreds.user!.displayName,
  //     //     email: userCreds.user!.email,
  //     //     photoUrl: userCreds.user!.photoURL,
  //     //     uid: userCreds.user!.uid,
  //     //     token: await FirebaseMessaging.instance.getToken());
  //     // updateUserData(userModel);
  //   }
  //   return right("userModel");
  // }
}
