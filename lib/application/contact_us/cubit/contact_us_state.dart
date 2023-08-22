part of 'contact_us_cubit.dart';

@freezed
class ContactUsState with _$ContactUsState {
  const factory ContactUsState.initial() = _Initial;
  const factory ContactUsState.loading() = _Loading;
  const factory ContactUsState.error() = _Error;

  const factory ContactUsState.getAllContactUsData(
      List<ContactUsModel> contacts) = _GetAllContactUsData;
}
