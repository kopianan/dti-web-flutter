import 'package:freezed_annotation/freezed_annotation.dart';

part 'document_data_model.freezed.dart';
part 'document_data_model.g.dart';

@freezed
class DocumentDataModel with _$DocumentDataModel {
  factory DocumentDataModel({
    String? header,
    List<String>? imageList,
    bool? isSubmited,
    String? previewImage,
    String? body,
    String? id,
    String? attachment,
    int? numberOfDocs,
  }) = _DocumentDataModel;

  factory DocumentDataModel.fromJson(Map<String, dynamic> json) =>
      _$DocumentDataModelFromJson(json);
}
