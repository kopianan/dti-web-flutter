import 'package:dartz/dartz.dart';
import 'package:dti_web/domain/core/visa_application_model.dart';

abstract class IApplication {
  Future<Either<String, String>> createNewApplicationDocument(
      VisaApplicationModel visaApplicationModel);
  Future<Either<String, String>> updateApplicationDocument(
      VisaApplicationModel visaApplicationModel);
}
