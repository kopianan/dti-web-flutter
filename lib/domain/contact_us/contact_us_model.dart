import 'package:dti_web/domain/core/date_time_or_null_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact_us_model.freezed.dart';
part 'contact_us_model.g.dart';

@freezed
class ContactUsModel with _$ContactUsModel {
  factory ContactUsModel(
      {@DateTimeOrNullConverter() required DateTime createdDate,
      @Default('') String createdBy,
      @Default('') String name,
      @Default('') String title,
      @Default('') String email}) = _ContactUsModel;

  factory ContactUsModel.fromJson(Map<String, dynamic> json) =>
      _$ContactUsModelFromJson(json);
}
