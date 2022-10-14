// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'assitance_for_permit_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AssitanceForPermitModel _$$_AssitanceForPermitModelFromJson(
        Map<String, dynamic> json) =>
    _$_AssitanceForPermitModel(
      isActive: json['isActive'] as bool?,
      data: json['data'] == null
          ? null
          : AssistancePermitDetailModel.fromJson(
              json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_AssitanceForPermitModelToJson(
        _$_AssitanceForPermitModel instance) =>
    <String, dynamic>{
      'isActive': instance.isActive,
      'data': instance.data,
    };
