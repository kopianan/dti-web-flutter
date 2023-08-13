part of 'questionnaire_cubit.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class QuestionnaireState with _$QuestionnaireState {
  factory QuestionnaireState({
    List<QuestionnaireModel>? listQuestionnaire,
    List<String>? importantNotes,
    List<String>? description,
  }) = _QuestionnaireState;

  factory QuestionnaireState.initial() => QuestionnaireState(
      listQuestionnaire: [], description: [], importantNotes: []);
}
