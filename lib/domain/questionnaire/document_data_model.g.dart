// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DocumentDataModel _$$_DocumentDataModelFromJson(Map<String, dynamic> json) =>
    _$_DocumentDataModel(
      id: json['id'] as String?,
      previewImage: json['previewImage'] as String?,
      isSubmited: json['isSubmited'] as bool?,
      body: json['body'] as String?,
      attachment: json['attachment'] as String?,
      numberOfDocs: json['numberOfDocs'] as int?,
      header: json['header'] as String?,
      imageList: (json['imageList'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$_DocumentDataModelToJson(
        _$_DocumentDataModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'previewImage': instance.previewImage,
      'isSubmited': instance.isSubmited,
      'body': instance.body,
      'attachment': instance.attachment,
      'numberOfDocs': instance.numberOfDocs,
      'header': instance.header,
      'imageList': instance.imageList,
    };
