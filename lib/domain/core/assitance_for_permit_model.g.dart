// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'assitance_for_permit_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AssitanceForPermitModelImpl _$$AssitanceForPermitModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AssitanceForPermitModelImpl(
      isActive: json['isActive'] as bool?,
      data: json['data'] == null
          ? null
          : AssistancePermitDetailModel.fromJson(
              json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AssitanceForPermitModelImplToJson(
        _$AssitanceForPermitModelImpl instance) =>
    <String, dynamic>{
      'isActive': instance.isActive,
      'data': instance.data,
    };
