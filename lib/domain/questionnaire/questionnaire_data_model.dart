import 'package:dti_web/domain/questionnaire/questionnaire_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'questionnaire_data_model.freezed.dart';
part 'questionnaire_data_model.g.dart';

@freezed
class QuestionnaireDataModel with _$QuestionnaireDataModel {
  factory QuestionnaireDataModel(List<QuestionnaireModel> questionnaire) =
      _QuestionnaireDataModel;

  factory QuestionnaireDataModel.fromJson(Map<String, dynamic> json) =>
      _$QuestionnaireDataModelFromJson(json);
}
