// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'single_visa_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SingleVisaResponse _$$_SingleVisaResponseFromJson(
        Map<String, dynamic> json) =>
    _$_SingleVisaResponse(
      visaApplicationModel: json['data'] == null
          ? null
          : VisaApplicationModel.fromJson(json['data'] as Map<String, dynamic>),
      documentUserApplicationUrl: (json['documentUserUrl'] as List<dynamic>?)
          ?.map((e) => e as Map<String, dynamic>)
          .toList(),
    );

Map<String, dynamic> _$$_SingleVisaResponseToJson(
        _$_SingleVisaResponse instance) =>
    <String, dynamic>{
      'data': instance.visaApplicationModel,
      'documentUserUrl': instance.documentUserApplicationUrl,
    };
