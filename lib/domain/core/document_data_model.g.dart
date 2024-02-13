// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DocumentDataModelImpl _$$DocumentDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DocumentDataModelImpl(
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

Map<String, dynamic> _$$DocumentDataModelImplToJson(
        _$DocumentDataModelImpl instance) =>
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
