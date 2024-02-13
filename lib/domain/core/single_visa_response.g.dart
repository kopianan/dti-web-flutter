// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'single_visa_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SingleVisaResponseImpl _$$SingleVisaResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$SingleVisaResponseImpl(
      visaApplicationModel: json['data'] == null
          ? null
          : VisaApplicationModel.fromJson(json['data'] as Map<String, dynamic>),
      documentUserApplicationUrl: (json['documentUserUrl'] as List<dynamic>?)
          ?.map((e) => e as Map<String, dynamic>)
          .toList(),
    );

Map<String, dynamic> _$$SingleVisaResponseImplToJson(
        _$SingleVisaResponseImpl instance) =>
    <String, dynamic>{
      'data': instance.visaApplicationModel,
      'documentUserUrl': instance.documentUserApplicationUrl,
    };
