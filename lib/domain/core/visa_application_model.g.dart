// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'visa_application_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VisaApplicationModel _$$_VisaApplicationModelFromJson(
        Map<String, dynamic> json) =>
    _$_VisaApplicationModel(
      rejectionNote: json['rejectionNote'] as String?,
      entry: json['entry'] as String?,
      lastName: json['lastName'] as String?,
      userName: json['userName'] as String?,
      nationality: json['nationality'] as String?,
      guarantorDTI: json['guarantorDTI'] as bool?,
      passportNumber: json['passportNumber'] as String?,
      district: json['district'] as String?,
      overstayedFlag: json['overstayedFlag'] as bool?,
      createdBy: json['createdBy'] as String?,
      xenditPaymentMethod: json['xenditPaymentMethod'] as String?,
      address: json['address'] as String?,
      city: json['city'] as String?,
      modeOfTransportation: json['modeOfTransportation'] as String?,
      flightNumber: json['flightNumber'] as String?,
      arrivalDate: json['arrivalDate'] as String?,
      xenditPaymentStatus: json['xenditPaymentStatus'] as String?,
      xenditPaymentGateway: json['xenditPaymentGateway'] as String?,
      xenditPaymentId: json['xenditPaymentId'] as String?,
      mobileNumber: json['mobileNumber'] as String?,
      status: json['status'] as String?,
      xenditPaymentDescription: json['xenditPaymentDescription'] as String?,
      submittedDate: json['submittedDate'] as String?,
      subTitle: json['subTitle'] as String?,
      documentsData: (json['documents_data'] as List<dynamic>?)
          ?.map((e) => DocumentDataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      title: json['title'] as String?,
      lastUpdatedDate: json['lastUpdatedDate'] as String?,
      errorMessage: json['errorMessage'] as String?,
      firebaseDocId: json['firebaseDocId'] as String?,
      relationshipStatus: json['relationshipStatus'] as String?,
      dateOfExpiration: json['dateOfExpiration'] as String?,
      cityDomicile: json['cityDomicile'] as String?,
      applicationID: json['applicationID'] as String?,
      createdDate: json['createdDate'] as String?,
      xenditPaymentInvoiceUrl: json['xenditPaymentInvoiceUrl'] as String?,
      xenditPaymentCurrency: json['xenditPaymentCurrency'] as String?,
      placeOfBirth: json['placeOfBirth'] as String?,
      mobileDialCode: json['mobileDialCode'] as String?,
      currency: json['currency'] as String?,
      inIndonesia: json['inIndonesia'] as bool?,
      xenditPaymentPaidAmount: json['xenditPaymentPaidAmount'] as int?,
      dateOfIssue: json['dateOfIssue'] as String?,
      lastUpdatedBy: json['lastUpdatedBy'] as String?,
      documents: json['documents'] as String?,
      firstName: json['firstName'] as String?,
      assistanceForPermit: json['assistanceForPermit'] == null
          ? null
          : AssitanceForPermitModel.fromJson(
              json['assistanceForPermit'] as Map<String, dynamic>),
      issuingCountry: json['issuingCountry'] as String?,
      province: json['province'] as String?,
      xenditPaymentAmount: json['xenditPaymentAmount'] as int?,
      mobileCountryCode: json['mobileCountryCode'] as String?,
      gender: json['gender'] as String?,
      deportedFlag: json['deportedFlag'] as bool?,
      xenditPaymentPaidAt: json['xenditPaymentPaidAt'] as String?,
      dateOfBirth: json['dateOfBirth'] as String?,
      price: (json['price'] as num?)?.toDouble(),
      multiVisaDuration: json['multiVisaDuration'] as String?,
    );

Map<String, dynamic> _$$_VisaApplicationModelToJson(
        _$_VisaApplicationModel instance) =>
    <String, dynamic>{
      'rejectionNote': instance.rejectionNote,
      'entry': instance.entry,
      'lastName': instance.lastName,
      'userName': instance.userName,
      'nationality': instance.nationality,
      'guarantorDTI': instance.guarantorDTI,
      'passportNumber': instance.passportNumber,
      'district': instance.district,
      'overstayedFlag': instance.overstayedFlag,
      'createdBy': instance.createdBy,
      'xenditPaymentMethod': instance.xenditPaymentMethod,
      'address': instance.address,
      'city': instance.city,
      'modeOfTransportation': instance.modeOfTransportation,
      'flightNumber': instance.flightNumber,
      'arrivalDate': instance.arrivalDate,
      'xenditPaymentStatus': instance.xenditPaymentStatus,
      'xenditPaymentGateway': instance.xenditPaymentGateway,
      'xenditPaymentId': instance.xenditPaymentId,
      'mobileNumber': instance.mobileNumber,
      'status': instance.status,
      'xenditPaymentDescription': instance.xenditPaymentDescription,
      'submittedDate': instance.submittedDate,
      'subTitle': instance.subTitle,
      'documents_data': instance.documentsData?.map((e) => e.toJson()).toList(),
      'title': instance.title,
      'lastUpdatedDate': instance.lastUpdatedDate,
      'errorMessage': instance.errorMessage,
      'firebaseDocId': instance.firebaseDocId,
      'relationshipStatus': instance.relationshipStatus,
      'dateOfExpiration': instance.dateOfExpiration,
      'cityDomicile': instance.cityDomicile,
      'applicationID': instance.applicationID,
      'createdDate': instance.createdDate,
      'xenditPaymentInvoiceUrl': instance.xenditPaymentInvoiceUrl,
      'xenditPaymentCurrency': instance.xenditPaymentCurrency,
      'placeOfBirth': instance.placeOfBirth,
      'mobileDialCode': instance.mobileDialCode,
      'currency': instance.currency,
      'inIndonesia': instance.inIndonesia,
      'xenditPaymentPaidAmount': instance.xenditPaymentPaidAmount,
      'dateOfIssue': instance.dateOfIssue,
      'lastUpdatedBy': instance.lastUpdatedBy,
      'documents': instance.documents,
      'firstName': instance.firstName,
      'assistanceForPermit': instance.assistanceForPermit?.toJson(),
      'issuingCountry': instance.issuingCountry,
      'province': instance.province,
      'xenditPaymentAmount': instance.xenditPaymentAmount,
      'mobileCountryCode': instance.mobileCountryCode,
      'gender': instance.gender,
      'deportedFlag': instance.deportedFlag,
      'xenditPaymentPaidAt': instance.xenditPaymentPaidAt,
      'dateOfBirth': instance.dateOfBirth,
      'price': instance.price,
      'multiVisaDuration': instance.multiVisaDuration,
    };
