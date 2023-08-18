import 'package:dartz/dartz.dart';
import 'package:dti_web/domain/auth/auth_response.dart';
import 'package:dti_web/domain/auth/user_data.dart';
import 'package:dti_web/domain/global/failures.dart';

abstract class IAuth {
  Future<Either<String, String>> loginAndGetToken({
    required String email,
    required String password,
  });
  Future<Either<Failures, String>> resetPassword({
    required String email,
  });
  Future<Either<Failures, AuthResponse>> signinUsingFacebook();
  Future<Either<Failures, AuthResponse>> loginWithGoogle();
  Future<Either<Failures, UserData>> getUserData();
  Future<Either<Failures, String>> registerNewUser({
    required String email,
    required String password,
    required String confirmPassword,
    required String name,
  });
}
