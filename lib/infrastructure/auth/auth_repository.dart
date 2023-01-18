// ignore_for_file: unnecessary_null_comparison, void_checks

import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:dti_web/core/storage.dart';
import 'package:dti_web/domain/auth/i_auth.dart';
import 'package:dti_web/domain/auth/user_data.dart';
import 'package:dti_web/domain/global/failures.dart';
import 'package:dti_web/env/env.dart';
import 'package:dti_web/infrastructure/core/error_response.dart';
import 'package:dti_web/utils/constant.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
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

    final result = await dio!.get("${Env.baseUrl}/user",
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
  Future<Either<Failures, String>> loginWithGoogle() async {
    //Trigger Authentication Flow
    GoogleSignIn _googleSignIn = GoogleSignIn();
    FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
    late GoogleSignInAccount? googleUser;
    try {
      googleUser = await _googleSignIn.signIn();
    } on PlatformException catch (e) {
      switch (e.code) {
        case "popup_closed_by_user":
          return left(Failures.authError(
              "Pop up closed by user. Please choose login method"));
        case "access_denied":
          return left(Failures.authError("Access denied."));
        case "immediate_failed":
          return left(Failures.authError("Unkown Error"));
      }
    }

    if (googleUser == null) {
      return left(Failures.noData("No User Found"));
    }
    try {
      //Obtain the auth details from the request
      final GoogleSignInAuthentication googleAuth =
          await googleUser.authentication;

      final GoogleAuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      ) as GoogleAuthCredential;

      //Once Sign In, return the UserCredential
      UserCredential userCreds =
          await _firebaseAuth.signInWithCredential(credential);

      if (userCreds != null) {
        final token = await userCreds.user!.getIdToken();
        print(token);
        // userModel = LoginUserModel(
        //     displayName: userCreds.user!.displayName,
        //     email: userCreds.user!.email,
        //     photoUrl: userCreds.user!.photoURL,
        //     uid: userCreds.user!.uid,
        //     token: await FirebaseMessaging.instance.getToken());
        // updateUserData(userModel);

        return right(token);
      }
    } catch (e) {
      print(e);
      return left(Failures.noData("No Data"));
    }

    return Left(Failures.serverError());
  }

  @override
  Future<Either<String, String>> loginAndGetToken(
      {required String email, required String password}) async {
    dio = Dio();

    try {
      final result = await dio!.post(Env.baseUrl + "/login", data: {
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
      final result = await dio!.post("${Env.baseUrl}/signUp", data: {
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
      final result = await dio!.post("${Env.baseUrl}/resetPassword", data: {
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

  @override
  Future<Either<Failures, String>> signinUsingFacebook() async {
    try {
      // Trigger the sign-in flow
      final LoginResult loginResult = await FacebookAuth.instance.login();
      if (loginResult.status == LoginStatus.success) {
        //Check the if the email is exist
        var _email = await FacebookAuth.i.getUserData(fields: "email");
        if (_email['email'] == "" || _email['email'] == null) {
          return left(Failures.authError("Email was not set on Facebook."));
        }

        // you are logged
        final AccessToken accessToken = loginResult.accessToken!;
        // Create a credential from the access token
        final OAuthCredential facebookAuthCredential =
            FacebookAuthProvider.credential(accessToken.token);

// Once signed in, return the UserCredential
        UserCredential userCreds = await FirebaseAuth.instance
            .signInWithCredential(facebookAuthCredential);
        if (userCreds != null) {
          final token = await userCreds.user!.getIdToken();
          return right(token);
        }

        return left(Failures.authError("Something wrong"));
      } else {
        return left(Failures.authError("No user found"));
      }
    } catch (e) {
      return left(Failures.serverError());
    }
  }
}
