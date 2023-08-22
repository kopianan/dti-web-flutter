import 'package:dti_web/domain/core/date_time_or_null_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'simple_visa_model.freezed.dart';
part 'simple_visa_model.g.dart';

@freezed
class SimpleVisaModel with _$SimpleVisaModel {
  factory SimpleVisaModel({
    String? firebaseDocId,
    String? applicationID,
    String? status,
    String? bookingCode,
    String? title,
    String? subTitle,
    @DateTimeOrNullConverter() required DateTime usedByDate,
    String? userName,
    int? lengthOfStay,
    @DateTimeOrNullConverter() required DateTime createdDate,
  }) = _SimpleVisaModel;

  factory SimpleVisaModel.empty() =>
      SimpleVisaModel(usedByDate: DateTime(1990), createdDate: DateTime(1990));

  factory SimpleVisaModel.fromJson(Map<String, dynamic> json) =>
      _$SimpleVisaModelFromJson(json);
}
