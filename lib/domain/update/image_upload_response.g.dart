// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_upload_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ImageUploadResponse _$$_ImageUploadResponseFromJson(
        Map<String, dynamic> json) =>
    _$_ImageUploadResponse(
      fileName: json['fileName'] as String,
      oldFileName: json['oldFileName'] as String?,
      downloadUrl: json['downloadUrl'] as String,
      appId: json['appId'] as String?,
      docId: json['docId'] as String?,
    );

Map<String, dynamic> _$$_ImageUploadResponseToJson(
        _$_ImageUploadResponse instance) =>
    <String, dynamic>{
      'fileName': instance.fileName,
      'oldFileName': instance.oldFileName,
      'downloadUrl': instance.downloadUrl,
      'appId': instance.appId,
      'docId': instance.docId,
    };
