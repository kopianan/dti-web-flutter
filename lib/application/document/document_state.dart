part of 'document_cubit.dart';

@Freezed(
  makeCollectionsUnmodifiable: false,
)
class DocumentState with _$DocumentState {
  factory DocumentState({
    VisaApplicationModel? visa,
    List<DocumentDataModel>? docs,
    int? selectedIndex,
    @Default([]) List<Map<String, dynamic>> masterListData,
    List<String>? selectedMasterListData,
    List<String>? deletedImagesName,
    DocumentDataModel? selectedDocument,
    Map<String, dynamic>? selectedDataCollection,
    int? selectedDataType,
  }) = _DocumentState;
  factory DocumentState.initial() => DocumentState(
      visa: VisaApplicationModel(),
      docs: [],
      masterListData: [],
      deletedImagesName: [],
      selectedDataCollection: {});
}
