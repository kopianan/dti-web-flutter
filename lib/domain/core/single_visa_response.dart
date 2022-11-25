import 'package:dti_web/domain/core/visa_application_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'single_visa_response.freezed.dart';
part 'single_visa_response.g.dart';

@freezed
class SingleVisaResponse with _$SingleVisaResponse {
  factory SingleVisaResponse({
    @JsonKey(name: 'data') VisaApplicationModel? visaApplicationModel,
    @JsonKey(name: 'documentUserApplicationUrl')
        List<Map<String,dynamic>>? documentUserApplicationUrl,
  }) = _SingleVisaResponse;

  factory SingleVisaResponse.fromJson(Map<String, dynamic> json) =>
      _$SingleVisaResponseFromJson(json);
}
