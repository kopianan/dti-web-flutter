import 'package:dartz/dartz.dart';
import 'package:dti_web/domain/core/visa_application_model.dart';

abstract class IPayment {
  // Future<Either<String, double>> getCurrency();
  // Future<Either<String, PromotionModel>> checkPromo(String code);
  Future<Either<String, String>> createInvoice(
      VisaApplicationModel visaApplication,
      {double? discount});
  Future<Either<String, String>> createPassportInvoice(
      VisaApplicationModel visaApplication,
      {double? discount});
  // Future<Either<String, String>> createInvoicePaypal(
  //     VisaApplication visaApplication);
}
