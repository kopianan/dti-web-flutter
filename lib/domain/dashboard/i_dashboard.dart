import 'package:dartz/dartz.dart';
import 'package:dti_web/domain/core/simple_visa_model.dart';

import 'package:dti_web/domain/global/failures.dart';

abstract class IDashboard {
  Future<Either<Failures, SimpleVisaModel>> getLastPassportAndApplication();
  Future<Either<Failures, SimpleVisaModel>> getSingleData();
  Future<Either<Failures, SimpleVisaModel>> getSinglePassport();
  Future<Either<Failures, String>> deleteSinglePassport(String firebaseDocId);
  Future<Either<Failures, String>> deleteApplication(String firebaseDocId);
}
