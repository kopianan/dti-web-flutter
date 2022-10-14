import 'package:dartz/dartz.dart';

abstract class IAuth {
  Future<Either<String, String>> loginAndGetToken({
    required String email,
    required String password,
  });
}
