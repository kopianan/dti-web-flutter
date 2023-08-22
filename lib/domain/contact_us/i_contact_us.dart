import 'package:dartz/dartz.dart';
import 'package:dti_web/domain/contact_us/contact_us_model.dart';

abstract class IContactUs {
  Future<Either<String, List<ContactUsModel>>> getAllContactUsData();
}
