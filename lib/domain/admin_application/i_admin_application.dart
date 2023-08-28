import 'package:dartz/dartz.dart';
import 'package:dti_web/domain/core/simple_visa_model.dart';

abstract class IAdminApplication {
  Future<Either<String, List<SimpleVisaModel>>> getAllUserApplication();
}
