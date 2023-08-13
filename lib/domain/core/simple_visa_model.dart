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
    String? usedByDate,
    int? lengthOfStay,
    String? createdDate,
  }) = _SimpleVisaModel;

  factory SimpleVisaModel.empty() => SimpleVisaModel();

  factory SimpleVisaModel.fromJson(Map<String, dynamic> json) =>
      _$SimpleVisaModelFromJson(json);
}
