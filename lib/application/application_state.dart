part of 'application_cubit.dart';

@freezed
class ApplicationState with _$ApplicationState {
  const factory ApplicationState({List<DocumentDataModel>? documnets}) =
      _ApplicationState;

  factory ApplicationState.initial() => ApplicationState(
      documnets: (documentRaw['document_list'] as List)
          .map((e) => DocumentDataModel.fromJson(e))
          .toList()
          .sublist(0, 10));
}
