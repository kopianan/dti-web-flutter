import 'package:dti_web/domain/core/assistance_permit_detail_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'assitance_for_permit_model.freezed.dart';
part 'assitance_for_permit_model.g.dart';

@freezed
class AssitanceForPermitModel with _$AssitanceForPermitModel {
  factory AssitanceForPermitModel({
    bool? isActive,
    AssistancePermitDetailModel? data,
  }) = _AssitanceForPermitModel;

  factory AssitanceForPermitModel.fromJson(Map<String, dynamic> json) =>
      _$AssitanceForPermitModelFromJson(json);
}
