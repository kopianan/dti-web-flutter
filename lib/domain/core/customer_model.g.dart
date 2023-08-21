// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CustomerModel _$$_CustomerModelFromJson(Map<String, dynamic> json) =>
    _$_CustomerModel(
      name: json['name'] as String? ?? "",
      email: json['email'] as String? ?? "",
      countryCode: json['countryCode'] as String? ?? "",
      totalVisa: json['totalVisa'] as int? ?? 0,
      createdDate: const DateTimeOrNullConverter()
          .fromJson(json['createdDate'] as String?),
      lastUpdatedDate: const DateTimeOrNullConverter()
          .fromJson(json['lastUpdatedDate'] as String?),
      outstandingAction: json['outstandingAction'] as bool? ?? false,
    );

Map<String, dynamic> _$$_CustomerModelToJson(_$_CustomerModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'countryCode': instance.countryCode,
      'totalVisa': instance.totalVisa,
      'createdDate':
          const DateTimeOrNullConverter().toJson(instance.createdDate),
      'lastUpdatedDate':
          const DateTimeOrNullConverter().toJson(instance.lastUpdatedDate),
      'outstandingAction': instance.outstandingAction,
    };
