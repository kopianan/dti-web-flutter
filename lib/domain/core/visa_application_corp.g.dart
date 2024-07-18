// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'visa_application_corp.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VisaApplicationCorpImpl _$$VisaApplicationCorpImplFromJson(
        Map<String, dynamic> json) =>
    _$VisaApplicationCorpImpl(
      title: json['title'] as String? ?? "",
      subTitle: json['subTitle'] as String? ?? "",
      entry: json['entry'] as String? ?? "",
      price: (json['price'] as num?)?.toDouble() ?? 0,
      currency: json['currency'] as String? ?? "",
      status: json['status'] as String? ?? "Draft",
      userName: json['userName'] as String?,
      createdChannel: json['createdChannel'] as String? ?? 'Website',
      lastUpdatedChannel: json['lastUpdatedChannel'] as String? ?? 'Website',
      companyName: json['companyName'] as String? ?? "",
      createdBy: json['createdBy'] as String? ?? "",
      companyWebsite: json['companyWebsite'] as String? ?? "",
      industryType: json['industryType'] as String?,
      companyAddress: json['companyAddress'] as String? ?? "",
      cpName: json['cpName'] as String? ?? "",
      cpEMail: json['cpEMail'] as String? ?? "",
      cpPhoneNumber: json['cpPhoneNumber'] as String? ?? "",
      mobileCountryCode: json['mobileCountryCode'] as String?,
      mobileDialCode: json['mobileDialCode'] as String?,
      province: json['province'] as String?,
      city: json['city'] as String?,
      district: json['district'] as String?,
      numberForeigner: json['numberForeigner'] as int? ?? 0,
      createdDate: json['createdDate'] as String?,
      submittedDate: json['submittedDate'] as String?,
      lastUpdatedDate: json['lastUpdatedDate'] as String?,
      lastUpdatedBy: json['lastUpdatedBy'] as String?,
      expectedTimelineFrom: json['expectedTimelineFrom'] as String?,
      expectedTimelineTo: json['expectedTimelineTo'] as String?,
      rejectionNote: json['rejectionNote'] as String? ?? "",
      guarantor: json['guarantor'] as String? ?? "Agent",
      applicationID: json['applicationID'] as String? ?? "",
      firebaseDocId: json['firebaseDocId'] as String? ?? "",
    );

Map<String, dynamic> _$$VisaApplicationCorpImplToJson(
        _$VisaApplicationCorpImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'subTitle': instance.subTitle,
      'entry': instance.entry,
      'price': instance.price,
      'currency': instance.currency,
      'status': instance.status,
      'userName': instance.userName,
      'createdChannel': instance.createdChannel,
      'lastUpdatedChannel': instance.lastUpdatedChannel,
      'companyName': instance.companyName,
      'createdBy': instance.createdBy,
      'companyWebsite': instance.companyWebsite,
      'industryType': instance.industryType,
      'companyAddress': instance.companyAddress,
      'cpName': instance.cpName,
      'cpEMail': instance.cpEMail,
      'cpPhoneNumber': instance.cpPhoneNumber,
      'mobileCountryCode': instance.mobileCountryCode,
      'mobileDialCode': instance.mobileDialCode,
      'province': instance.province,
      'city': instance.city,
      'district': instance.district,
      'numberForeigner': instance.numberForeigner,
      'createdDate': instance.createdDate,
      'submittedDate': instance.submittedDate,
      'lastUpdatedDate': instance.lastUpdatedDate,
      'lastUpdatedBy': instance.lastUpdatedBy,
      'expectedTimelineFrom': instance.expectedTimelineFrom,
      'expectedTimelineTo': instance.expectedTimelineTo,
      'rejectionNote': instance.rejectionNote,
      'guarantor': instance.guarantor,
      'applicationID': instance.applicationID,
      'firebaseDocId': instance.firebaseDocId,
    };
