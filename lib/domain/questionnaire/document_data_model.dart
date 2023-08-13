import 'package:freezed_annotation/freezed_annotation.dart';

part 'document_data_model.freezed.dart';
part 'document_data_model.g.dart';

@freezed
class DocumentDataModel with _$DocumentDataModel {
  factory DocumentDataModel({
    String? id,
    String? previewImage,
    bool? isSubmited,
    String? body,
    String? attachment,
    int? numberOfDocs,
    String? header,
    List<String>? imageList,
  }) = _DocumentDataModel;

  factory DocumentDataModel.fromJson(Map<String, dynamic> json) =>
      _$DocumentDataModelFromJson(json);
}
