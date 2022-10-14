import 'package:freezed_annotation/freezed_annotation.dart';

part 'assistance_permit_detail_model.freezed.dart';
part 'assistance_permit_detail_model.g.dart';

@freezed
class AssistancePermitDetailModel with _$AssistancePermitDetailModel {
  factory AssistancePermitDetailModel(
      {String? expiredDate,
      String? dateOfPermit,
      String? permitPhoto}) = _AssistancePermitDetailModel;

  factory AssistancePermitDetailModel.fromJson(Map<String, dynamic> json) =>
      _$AssistancePermitDetailModelFromJson(json);
}
