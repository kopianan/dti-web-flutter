// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'simple_visa_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SimpleVisaModel _$$_SimpleVisaModelFromJson(Map<String, dynamic> json) =>
    _$_SimpleVisaModel(
      firebaseDocId: json['firebaseDocId'] as String?,
      applicationID: json['applicationID'] as String?,
      status: json['status'] as String?,
      bookingCode: json['bookingCode'] as String?,
      title: json['title'] as String?,
      subTitle: json['subTitle'] as String?,
      usedByDate: DateTime.parse(json['usedByDate'] as String),
      userName: json['userName'] as String?,
      lengthOfStay: json['lengthOfStay'] as int?,
      createdDate: DateTime.parse(json['createdDate'] as String),
    );

Map<String, dynamic> _$$_SimpleVisaModelToJson(_$_SimpleVisaModel instance) =>
    <String, dynamic>{
      'firebaseDocId': instance.firebaseDocId,
      'applicationID': instance.applicationID,
      'status': instance.status,
      'bookingCode': instance.bookingCode,
      'title': instance.title,
      'subTitle': instance.subTitle,
      'usedByDate': instance.usedByDate.toIso8601String(),
      'userName': instance.userName,
      'lengthOfStay': instance.lengthOfStay,
      'createdDate': instance.createdDate.toIso8601String(),
    };
