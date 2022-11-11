import 'package:dartz/dartz.dart';
import 'package:dti_web/core/widgets/application_card.dart';
import 'package:dti_web/domain/core/document_data_model.dart';
import 'package:dti_web/domain/core/visa_application_model.dart';
import 'package:dti_web/domain/global/failures.dart';

abstract class IUpdateApplication {
  Future<Either<String, String>> createNewApplicationDocument(
      VisaApplicationModel visaApplicationModel);
  Future<Either<String, String>> updateParticularData(
      VisaApplicationModel visaApplicationModel);
  Future<Either<String, String>> updateGuarantor(VisaApplicationModel visa);
  Future<Either<Failures, String>> uploadImagesAndUpdateData(
      VisaApplicationModel visa, DocumentDataModel doc);
  Future<Either<Failures, String>> submitVisa(String firebaseDocId);
  Future<Either<String, VisaApplicationModel>> getUserApplicationById(
      String firebaseDocId);
}
