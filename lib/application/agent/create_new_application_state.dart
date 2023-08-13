part of 'create_new_application_cubit.dart';

@freezed
class CreateNewApplicationState with _$CreateNewApplicationState {
  const CreateNewApplicationState._();
  factory CreateNewApplicationState.initial() =>
      CreateNewApplicationState(header: [], body: [], error: false);

  factory CreateNewApplicationState({
    FilePickerResult? pickedFile,
    Uint8List? excelBytes,
    required List<Data?> header,
    required bool error,
    required List<DataTableModel> body,
  }) = _CreateNewApplicationCubit;

  int get totalSelected => body.where((element) => element.selected).length;
}
