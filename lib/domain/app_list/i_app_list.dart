import 'package:dartz/dartz.dart';
import 'package:dti_web/domain/core/simple_visa_model.dart';

abstract class IAppList {
  Future<Either<String, List<SimpleVisaModel>>> getUserVisaApplication(
      bool isAgent);
}
