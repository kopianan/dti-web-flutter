// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CustomerModelImpl _$$CustomerModelImplFromJson(Map<String, dynamic> json) =>
    _$CustomerModelImpl(
      name: json['name'] as String? ?? "",
      uid: json['uid'] as String?,
      email: json['email'] as String? ?? "",
      countryCode: json['countryCode'] as String? ?? "",
      mobileNumber: json['mobileNumber'] as String? ?? "",
      totalVisa: json['totalVisa'] as int? ?? 0,
      createdDate: const DateTimeOrNullConverter()
          .fromJson(json['createdDate'] as String?),
      lastUpdatedDate: const DateTimeOrNullConverter()
          .fromJson(json['lastUpdatedDate'] as String?),
      outstandingAction: json['outstandingAction'] as bool? ?? false,
    );

Map<String, dynamic> _$$CustomerModelImplToJson(_$CustomerModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'uid': instance.uid,
      'email': instance.email,
      'countryCode': instance.countryCode,
      'mobileNumber': instance.mobileNumber,
      'totalVisa': instance.totalVisa,
      'createdDate':
          const DateTimeOrNullConverter().toJson(instance.createdDate),
      'lastUpdatedDate':
          const DateTimeOrNullConverter().toJson(instance.lastUpdatedDate),
      'outstandingAction': instance.outstandingAction,
    };
