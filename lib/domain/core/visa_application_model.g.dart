// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'visa_application_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VisaApplicationModelImpl _$$VisaApplicationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$VisaApplicationModelImpl(
      bookingCode: json['bookingCode'] as String?,
      identityNumber: json['identityNumber'] as String?,
      type: json['type'] as String?,
      promoUsed: json['promoUsed'] as String?,
      selfieImage: json['selfieImage'] as String?,
      newPassport: json['newPassport'] as String?,
      motherName: json['motherName'] as String?,
      createdChannel: json['createdChannel'] as String? ?? 'Website',
      lastUpdatedChannel: json['lastUpdatedChannel'] as String? ?? 'Website',
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

Map<String, dynamic> _$$VisaApplicationModelImplToJson(
    _$VisaApplicationModelImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('bookingCode', instance.bookingCode);
  writeNotNull('identityNumber', instance.identityNumber);
  writeNotNull('type', instance.type);
  writeNotNull('promoUsed', instance.promoUsed);
  writeNotNull('selfieImage', instance.selfieImage);
  writeNotNull('newPassport', instance.newPassport);
  writeNotNull('motherName', instance.motherName);
  val['createdChannel'] = instance.createdChannel;
  val['lastUpdatedChannel'] = instance.lastUpdatedChannel;
  writeNotNull('rejectionNote', instance.rejectionNote);
  writeNotNull('entry', instance.entry);
  writeNotNull('lastName', instance.lastName);
  writeNotNull('userName', instance.userName);
  writeNotNull('nationality', instance.nationality);
  writeNotNull('guarantorDTI', instance.guarantorDTI);
  writeNotNull('passportNumber', instance.passportNumber);
  writeNotNull('district', instance.district);
  writeNotNull('overstayedFlag', instance.overstayedFlag);
  writeNotNull('createdBy', instance.createdBy);
  writeNotNull('xenditPaymentMethod', instance.xenditPaymentMethod);
  writeNotNull('address', instance.address);
  writeNotNull('city', instance.city);
  writeNotNull('modeOfTransportation', instance.modeOfTransportation);
  writeNotNull('flightNumber', instance.flightNumber);
  writeNotNull('arrivalDate', instance.arrivalDate);
  writeNotNull('xenditPaymentStatus', instance.xenditPaymentStatus);
  writeNotNull('xenditPaymentGateway', instance.xenditPaymentGateway);
  writeNotNull('xenditPaymentId', instance.xenditPaymentId);
  writeNotNull('mobileNumber', instance.mobileNumber);
  writeNotNull('status', instance.status);
  writeNotNull('xenditPaymentDescription', instance.xenditPaymentDescription);
  writeNotNull('submittedDate', instance.submittedDate);
  writeNotNull('subTitle', instance.subTitle);
  writeNotNull('documents_data',
      instance.documentsData?.map((e) => e.toJson()).toList());
  writeNotNull('title', instance.title);
  writeNotNull('lastUpdatedDate', instance.lastUpdatedDate);
  writeNotNull('errorMessage', instance.errorMessage);
  writeNotNull('firebaseDocId', instance.firebaseDocId);
  writeNotNull('relationshipStatus', instance.relationshipStatus);
  writeNotNull('dateOfExpiration', instance.dateOfExpiration);
  writeNotNull('cityDomicile', instance.cityDomicile);
  writeNotNull('applicationID', instance.applicationID);
  writeNotNull('createdDate', instance.createdDate);
  writeNotNull('xenditPaymentInvoiceUrl', instance.xenditPaymentInvoiceUrl);
  writeNotNull('xenditPaymentCurrency', instance.xenditPaymentCurrency);
  writeNotNull('placeOfBirth', instance.placeOfBirth);
  writeNotNull('mobileDialCode', instance.mobileDialCode);
  writeNotNull('currency', instance.currency);
  writeNotNull('inIndonesia', instance.inIndonesia);
  writeNotNull('xenditPaymentPaidAmount', instance.xenditPaymentPaidAmount);
  writeNotNull('dateOfIssue', instance.dateOfIssue);
  writeNotNull('lastUpdatedBy', instance.lastUpdatedBy);
  writeNotNull('documents', instance.documents);
  writeNotNull('firstName', instance.firstName);
  writeNotNull('assistanceForPermit', instance.assistanceForPermit?.toJson());
  writeNotNull('issuingCountry', instance.issuingCountry);
  writeNotNull('province', instance.province);
  writeNotNull('xenditPaymentAmount', instance.xenditPaymentAmount);
  writeNotNull('mobileCountryCode', instance.mobileCountryCode);
  writeNotNull('gender', instance.gender);
  writeNotNull('deportedFlag', instance.deportedFlag);
  writeNotNull('xenditPaymentPaidAt', instance.xenditPaymentPaidAt);
  writeNotNull('dateOfBirth', instance.dateOfBirth);
  writeNotNull('price', instance.price);
  writeNotNull('multiVisaDuration', instance.multiVisaDuration);
  return val;
}
