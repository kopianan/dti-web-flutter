import 'package:freezed_annotation/freezed_annotation.dart';

part 'image_upload_response.freezed.dart';
part 'image_upload_response.g.dart';

@freezed
class ImageUploadResponse with _$ImageUploadResponse {
  factory ImageUploadResponse({
    required String fileName,
    String? oldFileName,
    required String downloadUrl,
    @JsonKey(nullable: true) String? appId,
    @JsonKey(nullable: true) String? docId,
  }) = _ImageUploadResponse;

  factory ImageUploadResponse.fromJson(Map<String, dynamic> json) =>
      _$ImageUploadResponseFromJson(json);
}
