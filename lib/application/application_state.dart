part of 'application_cubit.dart';

@freezed
class ApplicationState with _$ApplicationState {
  const factory ApplicationState(
      {@Default(false) bool onLoading,
      String? onError,
      String? onSuccess,
      List<DocumentDataModel>? documnets,
      List<Map<String, dynamic>>? masterListData,
      VisaApplicationModel? visaApplicationModel}) = _ApplicationState;

  factory ApplicationState.initial() => ApplicationState(
        onError: null,
        onLoading: false,
        onSuccess: null,
        masterListData: [],
        visaApplicationModel: null,
        documnets: (documentRaw['document_list'] as List)
            .map((e) => DocumentDataModel.fromJson(e))
            .toList()
            .sublist(0, 10),
      );
}
