import 'package:dartz/dartz.dart';
import 'package:dti_web/domain/global/failures.dart';
import 'package:dti_web/domain/questionnaire/questionnaire_data_model.dart';
import 'package:dti_web/domain/questionnaire/questionnaire_model.dart';

abstract class IOther {
  Future<Either<String, String>> getImageUrl(
      {required String applicationId,
      required String documentId,
      required String fileName});
  Future<Either<Failures,QuestionnaireDataModel>> getQuestionnaireList();
}
