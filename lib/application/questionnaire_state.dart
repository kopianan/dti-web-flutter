part of 'questionnaire_cubit.dart';

@freezed
class QuestionnaireState with _$QuestionnaireState {
  const factory QuestionnaireState(
      {String? importantNotes, String? description}) = _QuestionnaireState;
  const factory QuestionnaireState.initial() = _Initial;
}
