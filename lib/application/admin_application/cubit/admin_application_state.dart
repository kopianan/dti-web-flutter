part of 'admin_application_cubit.dart';

@freezed
class AdminApplicationState with _$AdminApplicationState { 
  const factory AdminApplicationState.initial() = _Initial;
  const factory AdminApplicationState.loading() = _Loading;
  const factory AdminApplicationState.error() = _Error;

  const factory AdminApplicationState.getAllUserVisa(
      List<SimpleVisaModel> visas) = _GetAllUserVisa;
}
