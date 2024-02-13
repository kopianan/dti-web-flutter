// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'simple_visa_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SimpleVisaModelImpl _$$SimpleVisaModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SimpleVisaModelImpl(
      firebaseDocId: json['firebaseDocId'] as String?,
      applicationID: json['applicationID'] as String?,
      status: json['status'] as String?,
      bookingCode: json['bookingCode'] as String?,
      title: json['title'] as String?,
      subTitle: json['subTitle'] as String?,
      usedByDate: const DateTimeOrNullConverter()
          .fromJson(json['usedByDate'] as String?),
      userName: json['userName'] as String?,
      lengthOfStay: json['lengthOfStay'] as int?,
      createdDate: const DateTimeOrNullConverter()
          .fromJson(json['createdDate'] as String?),
    );

Map<String, dynamic> _$$SimpleVisaModelImplToJson(
        _$SimpleVisaModelImpl instance) =>
    <String, dynamic>{
      'firebaseDocId': instance.firebaseDocId,
      'applicationID': instance.applicationID,
      'status': instance.status,
      'bookingCode': instance.bookingCode,
      'title': instance.title,
      'subTitle': instance.subTitle,
      'usedByDate': const DateTimeOrNullConverter().toJson(instance.usedByDate),
      'userName': instance.userName,
      'lengthOfStay': instance.lengthOfStay,
      'createdDate':
          const DateTimeOrNullConverter().toJson(instance.createdDate),
    };
