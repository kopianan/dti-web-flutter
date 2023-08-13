// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'result_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ResultModel _$$_ResultModelFromJson(Map<String, dynamic> json) =>
    _$_ResultModel(
      contactUs: json['contactUs'] as bool?,
      visaPrice: json['visaPrice'] == null
          ? null
          : VisaPriceModel.fromJson(json['visaPrice'] as Map<String, dynamic>),
      visaEntry: json['visaEntry'] as String?,
      documents: json['documents'] as String?,
      visaTitle: json['visaTitle'] as String?,
      visaSubTitle: json['visaSubTitle'] as String?,
    );

Map<String, dynamic> _$$_ResultModelToJson(_$_ResultModel instance) =>
    <String, dynamic>{
      'contactUs': instance.contactUs,
      'visaPrice': instance.visaPrice,
      'visaEntry': instance.visaEntry,
      'documents': instance.documents,
      'visaTitle': instance.visaTitle,
      'visaSubTitle': instance.visaSubTitle,
    };
