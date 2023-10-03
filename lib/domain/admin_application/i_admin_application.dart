import 'package:dartz/dartz.dart';
import 'package:dti_web/domain/core/simple_visa_model.dart';
import 'package:dti_web/domain/global/failures.dart';

abstract class IAdminApplication {
  Future<Either<Failures, List<SimpleVisaModel>>> getAllUserApplication();
}
