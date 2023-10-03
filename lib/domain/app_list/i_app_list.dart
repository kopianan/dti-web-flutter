import 'package:dartz/dartz.dart';
import 'package:dti_web/domain/core/simple_visa_model.dart';
import 'package:dti_web/domain/global/failures.dart';

abstract class IAppList {
  Future<Either<Failures, List<SimpleVisaModel>>> getUserVisaApplication(
      bool isAgent);
}
