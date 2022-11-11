import 'package:dartz/dartz.dart';

import 'package:dti_web/domain/core/visa_application_model.dart';

import 'package:dti_web/domain/global/failures.dart';

abstract class IDashboard {
  Future<Either<Failures, VisaApplicationModel>> getSingleData();
  Future<Either<Failures, String>> deleteApplication(String firebaseDocId);
}
