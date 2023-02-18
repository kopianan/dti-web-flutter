part of 'other_cubit.dart';

@freezed
class OtherState with _$OtherState {
  const factory OtherState.initial() = _Initial;
  const factory OtherState.loading() = _Loading;
  const factory OtherState.error() = _Error;
  const factory OtherState.errorState(Failures failures) = _ErrorState;
  const factory OtherState.nullImage() = _NullImage;
  const factory OtherState.imageLocal(String url) = _ImageLocal;
  const factory OtherState.onContactUs(String message) = _OnContactUs;
  const factory OtherState.onFeedbackSent(String message) = _OnFeedbackSent;
  const factory OtherState.onOTPGenerated(String message) = _OnOTPGenerated;
  const factory OtherState.onOTPVerified(String message) = _OnOTPVerified;
  const factory OtherState.onGetImageUrl(String url) = _OnGetImageUrl;
  const factory OtherState.getAllQuestionnaire(
      QuestionnaireDataModel questionnaire) = _GetAllQuestionnaire;
  const factory OtherState.getAllDocumentData(
      List<DocumentDataModel> documents) = _GetAllDocumentData;
}
