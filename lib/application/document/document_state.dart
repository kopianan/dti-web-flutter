part of 'document_cubit.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class DocumentState with _$DocumentState {
  factory DocumentState(
      {VisaApplicationModel? visa,
      List<DocumentDataModel>? docs,
      int? selectedIndex,
      List<String>? deletedImagesName,
      DocumentDataModel? selectedDocument}) = _DocumentState;
  factory DocumentState.initial() => DocumentState(
        visa: VisaApplicationModel(),
        docs: [],
        deletedImagesName: []
      );
}
