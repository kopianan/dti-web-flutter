import 'package:dti_web/domain/core/assitance_for_permit_model.dart';
import 'package:dti_web/domain/core/document_data_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'visa_application_model.freezed.dart';
part 'visa_application_model.g.dart';

@freezed
class VisaApplicationModel with _$VisaApplicationModel {
  @JsonSerializable(explicitToJson: true, includeIfNull: false)
  factory VisaApplicationModel({
    //Passport exclusive
    String? bookingCode,
    String? identityNumber,
    String? type,
    String? selfieImage,
    String? newPassport,
    String? motherName,
    @JsonKey(name: 'rejectionNote') String? rejectionNote,
    @JsonKey(name: 'entry') String? entry,
    @JsonKey(name: 'lastName') String? lastName,
    @JsonKey(name: 'userName') String? userName,
    @JsonKey(name: 'nationality') String? nationality,
    @JsonKey(name: 'guarantorDTI') bool? guarantorDTI,
    @JsonKey(name: 'passportNumber') String? passportNumber,
    @JsonKey(name: 'district') String? district,
    @JsonKey(name: 'overstayedFlag') bool? overstayedFlag,
    @JsonKey(name: 'createdBy') String? createdBy,
    @JsonKey(name: 'xenditPaymentMethod') String? xenditPaymentMethod,
    @JsonKey(name: 'address') String? address,
    @JsonKey(name: 'city') String? city,
    String? modeOfTransportation,
    String? flightNumber,
    String? arrivalDate,
    @JsonKey(name: 'xenditPaymentStatus') String? xenditPaymentStatus,
    @JsonKey(name: 'xenditPaymentGateway') String? xenditPaymentGateway,
    @JsonKey(name: 'xenditPaymentId') String? xenditPaymentId,
    @JsonKey(name: 'mobileNumber') String? mobileNumber,
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'xenditPaymentDescription') String? xenditPaymentDescription,
    @JsonKey(name: 'submittedDate') String? submittedDate,
    @JsonKey(name: 'subTitle') String? subTitle,
    @JsonKey(name: 'documents_data') List<DocumentDataModel>? documentsData,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'lastUpdatedDate') String? lastUpdatedDate,
    @JsonKey(name: 'errorMessage') String? errorMessage,
    @JsonKey(name: 'firebaseDocId') String? firebaseDocId,
    @JsonKey(name: 'relationshipStatus') String? relationshipStatus,
    @JsonKey(name: 'dateOfExpiration') String? dateOfExpiration,
    @JsonKey(name: 'cityDomicile') String? cityDomicile,
    @JsonKey(name: 'applicationID') String? applicationID,
    @JsonKey(name: 'createdDate') String? createdDate,
    @JsonKey(name: 'xenditPaymentInvoiceUrl') String? xenditPaymentInvoiceUrl,
    @JsonKey(name: 'xenditPaymentCurrency') String? xenditPaymentCurrency,
    @JsonKey(name: 'placeOfBirth') String? placeOfBirth,
    @JsonKey(name: 'mobileDialCode') String? mobileDialCode,
    @JsonKey(name: 'currency') String? currency,
    @JsonKey(name: 'inIndonesia') bool? inIndonesia,
    @JsonKey(name: 'xenditPaymentPaidAmount') int? xenditPaymentPaidAmount,
    @JsonKey(name: 'dateOfIssue') String? dateOfIssue,
    @JsonKey(name: 'lastUpdatedBy') String? lastUpdatedBy,
    @JsonKey(name: 'documents') String? documents,
    @JsonKey(name: 'firstName') String? firstName,
    @JsonKey(name: 'assistanceForPermit')
        AssitanceForPermitModel? assistanceForPermit,
    @JsonKey(name: 'issuingCountry') String? issuingCountry,
    @JsonKey(name: 'province') String? province,
    @JsonKey(name: 'xenditPaymentAmount') int? xenditPaymentAmount,
    @JsonKey(name: 'mobileCountryCode') String? mobileCountryCode,
    @JsonKey(name: 'gender') String? gender,
    @JsonKey(name: 'deportedFlag') bool? deportedFlag,
    @JsonKey(name: 'xenditPaymentPaidAt') String? xenditPaymentPaidAt,
    @JsonKey(name: 'dateOfBirth') String? dateOfBirth,
    @JsonKey(name: 'price') double? price,
    @JsonKey(name: 'multiVisaDuration') String? multiVisaDuration,
  }) = _VisaApplicationModel;

  factory VisaApplicationModel.fromJson(Map<String, dynamic> json) =>
      _$VisaApplicationModelFromJson(json);
}
