import 'package:dti_web/domain/questionnaire/result_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'questionnaire_model.freezed.dart';
part 'questionnaire_model.g.dart';

@freezed
class QuestionnaireModel with _$QuestionnaireModel {
  factory QuestionnaireModel({
    List<QuestionnaireModel>? subQuestionnaire,
    String? footer,
    String? imgName,
    String? body,
    String? header,
    String? description,
    String? importantNotes,
    ResultModel? results,
  }) = _QuestionnaireModel;

  factory QuestionnaireModel.fromJson(Map<String, dynamic> json) =>
      _$QuestionnaireModelFromJson(json);
}
