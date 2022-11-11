part of 'update_application_cubit.dart';

@freezed
class UpdateApplicationState with _$UpdateApplicationState {
  const factory UpdateApplicationState.initial() = _Initial;

  const factory UpdateApplicationState.onLoading() = _OnLoading;
  const factory UpdateApplicationState.onError(String error) = _OnError;
  const factory UpdateApplicationState.onCreateApplication(
      VisaApplicationModel visaApps) = _OnCreateApplication;
  const factory UpdateApplicationState.onSubmitApplication(
      String firebaseDocId) = _OnSubmitApplication;
  const factory UpdateApplicationState.onUpdateApplication() =
      _OnUpdateApplication;
  const factory UpdateApplicationState.onUpdateGuarantor() = _OnUpdateGuarantor;
  const factory UpdateApplicationState.onGetSingleApplication(
      VisaApplicationModel visa) = _OnGetSingleApplication;
  const factory UpdateApplicationState.deleteApplication() = _DeleteApplication;
  const factory UpdateApplicationState.onUploadImageComplete() =
      _OnUploadImageComplete;
}
