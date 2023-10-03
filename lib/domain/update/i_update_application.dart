import 'package:dartz/dartz.dart';
import 'package:dti_web/domain/core/document_data_model.dart';
import 'package:dti_web/domain/core/single_visa_response.dart';
import 'package:dti_web/domain/core/visa_application_model.dart';
import 'package:dti_web/domain/global/failures.dart';
import 'package:dti_web/domain/update/image_upload_response.dart';

abstract class IUpdateApplication {
  Future<Either<Failures, String>> createNewApplicationDocument(
      VisaApplicationModel visaApplicationModel);
  Future<Either<Failures, String>> updateParticularData(
      VisaApplicationModel visaApplicationModel);
  Future<Either<Failures, String>> updatePassportParticularData(
      VisaApplicationModel visaApplicationModel);
  Future<Either<Failures, String>> rejectApplication(
      String firebaseDocId, String notes);
  Future<Either<Failures, String>> pendingPaymentApplication(
      String firebaseDocId, double price);
  Future<Either<Failures, String>> updateVoaData(
      VisaApplicationModel visaApplicationModel);
  Future<Either<Failures, String>> deleteSingleImage(
      String imageName, String docId, String appId);
  Future<Either<Failures, String>> createUserPassport(bool isNew);
  Future<Either<Failures, String>> updateGuarantor(VisaApplicationModel visa);
  Future<Either<Failures, String>> updateMultiVisa(
      String duration, String firebaseDocId);
  Future<Either<Failures, List<ImageUploadResponse>>> uploadImagesAndUpdateData(
      VisaApplicationModel visa,
      DocumentDataModel doc,
      List<String> deletedImages,
      {Map<String, dynamic>? imageCollection});
  Future<Either<Failures, ImageUploadResponse>> uploadSelfie(
      VisaApplicationModel visa,
      Map<String, dynamic>? imageCollection,
      List<String> deletedImages);
  Future<Either<Failures, String>> submitVisa(String firebaseDocId);
  Future<Either<Failures, String>> submitPassport(String firebaseDocId);
  Future<Either<Failures, VisaApplicationModel>> getUserApplicationById(
      String firebaseDocId);
  Future<Either<Failures, VisaApplicationModel>> getPassportById(
      String firebaseDocId);
  Future<Either<Failures, SingleVisaResponse>> getUserApplicationByIdWithImages(
      String firebaseDocId);
  Future<Either<Failures, SingleVisaResponse>> getUserPassportByIdWithImages(
      String firebaseDocId);
}
