import 'package:dti_web/domain/questionnaire/visa_price_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'result_model.freezed.dart';
part 'result_model.g.dart';

@freezed
class ResultModel with _$ResultModel {
  factory ResultModel({
    bool? contactUs,
    VisaPriceModel? visaPrice,
    String? visaEntry,
    String? documents,
    String? visaTitle,
    String? visaSubTitle,
  }) = _ResultModel;

  factory ResultModel.fromJson(Map<String, dynamic> json) =>
      _$ResultModelFromJson(json);
}
