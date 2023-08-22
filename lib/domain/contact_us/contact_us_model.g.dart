// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_us_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ContactUsModel _$$_ContactUsModelFromJson(Map<String, dynamic> json) =>
    _$_ContactUsModel(
      createdDate: DateTime.parse(json['createdDate'] as String),
      createdBy: json['createdBy'] as String? ?? '',
      name: json['name'] as String? ?? '',
      title: json['title'] as String? ?? '',
      email: json['email'] as String? ?? '',
    );

Map<String, dynamic> _$$_ContactUsModelToJson(_$_ContactUsModel instance) =>
    <String, dynamic>{
      'createdDate': instance.createdDate.toIso8601String(),
      'createdBy': instance.createdBy,
      'name': instance.name,
      'title': instance.title,
      'email': instance.email,
    };
