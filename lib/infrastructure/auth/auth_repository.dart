import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:dti_web/core/storage.dart';
import 'package:dti_web/domain/auth/auth_response.dart';
import 'package:dti_web/domain/auth/i_auth.dart';
import 'package:dti_web/domain/auth/user_data.dart';
import 'package:dti_web/domain/global/failures.dart';
import 'package:dti_web/utils/error_handling.dart';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
// import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IAuth)
class AuthRepository extends IAuth {
  AuthRepository(this._googleSignIn, this._firebaseAuth, this.dio);
  final Dio dio;
  final GoogleSignIn _googleSignIn;
  final FirebaseAuth _firebaseAuth;

  @override
  Future<Either<Failures, UserData>> getUserData() async {
    final storage = Storage();

    try {
      final result = await dio.get(
        "${dotenv.env['BASE_URL']}/user",
        options: Options(
          headers: {'Authorization': 'Bearer ${storage.getToken()}'},
        ),
      );
      if (result.data['data'] != null) {
        //Success
        final userRaw = result.data['data'];
        print(userRaw.toString());
        return Right(UserData.fromJson(userRaw));
      } else {
        return Left(Failures.generalError("Something wrong"));
      }
    } on DioError catch (e) {
      return left(ErrorHandling().onDioErrorHandle(e));
    } on Exception {
      return Left(Failures.generalError("Something wrong"));
    }
  }

  @override
  Future<Either<Failures, AuthResponse>> loginWithGoogle() async {
    var googleSignIn = GoogleSignIn(scopes: ['email']);
    GoogleSignInAccount? googleUser;
    try {
      googleUser = await googleSignIn.signInSilently();
      googleUser ??= await googleSignIn.signIn();
      if (googleUser == null) {
        return Left(Failures.authError("No Goolge Provider On Browser"));
      }

      final user = await googleUser.authentication;
      final GoogleAuthCredential credential = GoogleAuthProvider.credential(
        accessToken: user.accessToken,
        idToken: user.idToken,
      ) as GoogleAuthCredential;

      //Once Sign In, return the UserCredential
      UserCredential userCreds =
          await _firebaseAuth.signInWithCredential(credential);

      final newUser = isNewUser(userCreds.user!);
      log("IS NEW USER ? ${newUser.toString()}");
      final token = await userCreds.user!.getIdToken();
      return right(AuthResponse(isNewUser: newUser, token: token));
    } on PlatformException catch (e) {
      switch (e.code) {
        case "popup_closed_by_user":
          return left(Failures.authError(
              "Pop up closed by user. Please choose login method"));
        case "access_denied":
          return left(Failures.authError("Access denied."));
        case "immediate_failed":
          return left(Failures.authError("Unkown Error"));
        default:
          return left(Failures.authError("Unkown Error"));
      }
    } catch (e) {
      return left(Failures.authError("Server Error"));
    }
  }

  bool isNewUser(User user) {
    DateTime now = DateTime.now();
    DateTime? cTime = user.metadata.creationTime;
    int longAgo = 15;
    if (cTime == null) {
      return true;
    }
    return now.difference(cTime).inSeconds < longAgo;
  }

  @override
  Future<Either<String, String>> loginAndGetToken(
      {required String email, required String password}) async {
    try {
      final result = await dio.post("${dotenv.env['BASE_URL']}/login", data: {
        'email': email,
        'password': password,
      });

      if (result.data['data'] != null) {
        //Success
        return Right(result.data['data']['token']);
      }
      // return
      return const Left("Something wrong");
    } on DioError catch (e) {
      if (e.type == DioErrorType.badResponse) {
        if (e.response != null) {
          if (e.response!.statusCode == 403) {
            return Left(e.response!.data!['error']);
          }
          if (e.response!.statusCode == 500) {
            return const Left("Server Error");
          }
        }
      }
      return Left(e.toString());
    }
  }

  @override
  Future<Either<Failures, String>> registerNewUser({
    required String email,
    required String password,
    required String name,
    required String confirmPassword,
  }) async {
    try {
      final result = await dio.post("${dotenv.env['BASE_URL']}/signUp", data: {
        'email': email,
        'password': password,
        'confirmPassword': confirmPassword,
        'name': name
      });
      if (result.data['data']['token'] != null) {
        return Right(result.data['data']['token'].toString());
      }
      return Left(Failures.noData("Something wrong"));
    } on DioError catch (e) {
      return left(ErrorHandling().onDioErrorHandle(e));
    }
  }

  @override
  Future<Either<Failures, String>> resetPassword(
      {required String email}) async {
    try {
      final result =
          await dio.post("${dotenv.env['BASE_URL']}/resetPassword", data: {
        'email': email,
      });
      if (result.data['data']['message'] != null) {
        return Right(result.data['data']['message'].toString());
      }
      return Left(Failures.noData("Something wrong"));
    } on DioError catch (e) {
      return left(ErrorHandling().onDioErrorHandle(e));
    }
  }

  @override
  Future<Either<Failures, AuthResponse>> signinUsingFacebook() async {
    try {
      // Trigger the sign-in flow
      final LoginResult loginResult = await FacebookAuth.instance.login(
        permissions: ['email'],
      );
      if (loginResult.status == LoginStatus.success) {
        //Check the if the email is exist
        var email = await FacebookAuth.i.getUserData(fields: "email");
        if (email['email'] == "" || email['email'] == null) {
          return left(Failures.authError("Email was not set on Facebook."));
        }

        // you are logged
        final AccessToken accessToken = loginResult.accessToken!;
        // Create a credential from the access token
        final OAuthCredential facebookAuthCredential =
            FacebookAuthProvider.credential(accessToken.token);

        UserCredential userCreds =
            await FirebaseAuth.instance.signInWithCredential(
          facebookAuthCredential,
        );
        final newUser = isNewUser(userCreds.user!);
        final token = await userCreds.user!.getIdToken();
        return right(AuthResponse(isNewUser: newUser, token: token));
      } else {
        return left(Failures.authError("No user found"));
      }
    } catch (e) {
      return left(Failures.serverError());
    }
  }
}
