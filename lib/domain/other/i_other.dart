import 'package:country_code_picker/country_code_picker.dart';
import 'package:dartz/dartz.dart';
import 'package:dti_web/domain/core/document_data_model.dart';
import 'package:dti_web/domain/global/failures.dart';
import 'package:dti_web/domain/questionnaire/questionnaire_data_model.dart';
import 'package:dti_web/domain/questionnaire/questionnaire_model.dart';

abstract class IOther {
  Future<Either<String, String>> getImageUrl(
      {required String applicationId,
      required String documentId,
      required String fileName});
  Future<Either<Failures, QuestionnaireDataModel>> getQuestionnaireList();
  Future<Either<Failures, dynamic>> getLocation();
  Future<Either<Failures, List<DocumentDataModel>>> getApplicationMasterData();
  Future<Either<Failures, String>> verifyOtp(
      {required String phoneNumber,
      required String code,
      required CountryCode countryCode});
  Future<Either<Failures, String>> generateOtp(
      CountryCode countryCode, String phoneNumber, String channel);
}
