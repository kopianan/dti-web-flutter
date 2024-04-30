import 'package:freezed_annotation/freezed_annotation.dart';

part 'visa_application_corp.freezed.dart';
part 'visa_application_corp.g.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class VisaApplicationCorp with _$VisaApplicationCorp {
  factory VisaApplicationCorp({
    @Default("") String title,
    @Default("") String subTitle,
    @Default("") String entry,
    @Default(0) double price,
    @Default("") String currency,
    @Default("Draft") String status,
    String? userName,
    //FORM
    @Default("") String companyName,
    @Default("") String createdBy,
    @Default("") String companyWebsite,
    @Default("") String industryType,
    @Default("") String companyAddress,
    @Default("") String cpName,
    @Default("") String cpEMail,
    @Default("") String cpPhoneNumber,
    String? mobileCountryCode,
    String? mobileDialCode,
    String? province,
    String? city,
    String? district,
    @Default(0) int numberForeigner,
    String? createdDate,
    String? submittedDate,
    String? lastUpdatedDate,
    String? lastUpdatedBy,
    String? expectedTimelineFrom,
    String? expectedTimelineTo,
    @Default("") String rejectionNote,
    @Default("Agent") String guarantor,
    @Default("") String applicationID,
    @Default("") String firebaseDocId,
  }) = _VisaApplicationCorp;

  factory VisaApplicationCorp.fromJson(Map<String, dynamic> json) =>
      _$VisaApplicationCorpFromJson(json);
}
