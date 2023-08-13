// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DocumentDataModel _$$_DocumentDataModelFromJson(Map<String, dynamic> json) =>
    _$_DocumentDataModel(
      header: json['header'] as String?,
      imageList: (json['imageList'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      isSubmited: json['isSubmited'] as bool?,
      previewImage: json['previewImage'] as String?,
      body: json['body'] as String?,
      id: json['id'] as String?,
      attachment: json['attachment'] as String?,
      numberOfDocs: json['numberOfDocs'] as int?,
    );

Map<String, dynamic> _$$_DocumentDataModelToJson(
        _$_DocumentDataModel instance) =>
    <String, dynamic>{
      'header': instance.header,
      'imageList': instance.imageList,
      'isSubmited': instance.isSubmited,
      'previewImage': instance.previewImage,
      'body': instance.body,
      'id': instance.id,
      'attachment': instance.attachment,
      'numberOfDocs': instance.numberOfDocs,
    };
