part of 'create_edit_application_cubit.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class CreateEditApplicationState with _$CreateEditApplicationState {
  const factory CreateEditApplicationState({
    VisaApplicationModel? visa,
  }) = _CreateEditApplicationState;

  factory CreateEditApplicationState.initial() =>
      CreateEditApplicationState(visa: VisaApplicationModel());
}
