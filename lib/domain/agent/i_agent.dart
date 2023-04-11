import 'package:dartz/dartz.dart';
import 'package:dti_web/domain/core/simple_visa_model.dart';
import 'package:dti_web/domain/core/visa_application_model.dart';

abstract class IAgent {
  Future<Either<String, String>> createBulkData(
      List<VisaApplicationModel> listOfVisa);
}
