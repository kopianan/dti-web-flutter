import 'package:dartz/dartz.dart';
import 'package:dti_web/core/widgets/application_card.dart';
import 'package:dti_web/domain/core/document_data_model.dart';
import 'package:dti_web/domain/core/single_visa_response.dart';
import 'package:dti_web/domain/core/visa_application_model.dart';
import 'package:dti_web/domain/global/failures.dart';
import 'package:dti_web/domain/update/image_upload_response.dart';

abstract class IUpdateApplication {
  Future<Either<String, String>> createNewApplicationDocument(
      VisaApplicationModel visaApplicationModel);
  Future<Either<String, String>> updateParticularData(
      VisaApplicationModel visaApplicationModel);
  Future<Either<String, String>> deleteSingleImage(
      String imageName, String docId, String appId);
  Future<Either<String, String>> updateGuarantor(VisaApplicationModel visa);
  Future<Either<String, String>> updateMultiVisa(String duration);
  Future<Either<Failures, List<ImageUploadResponse>>> uploadImagesAndUpdateData(
      VisaApplicationModel visa,
      DocumentDataModel doc,
      List<String> deletedImages,
      {Map<String, dynamic>? imageCollection});
  Future<Either<Failures, String>> submitVisa(String firebaseDocId);
  Future<Either<String, VisaApplicationModel>> getUserApplicationById(
      String firebaseDocId);
  Future<Either<String, SingleVisaResponse>> getUserApplicationByIdWithImages(
      String firebaseDocId);
}
