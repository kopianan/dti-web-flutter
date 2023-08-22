import 'package:dti_web/domain/core/date_time_or_null_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'customer_model.freezed.dart';
part 'customer_model.g.dart';

@freezed
class CustomerModel with _$CustomerModel {
  factory CustomerModel({
    @JsonKey(includeIfNull: true) @Default("") String? name,
    @JsonKey(includeIfNull: true) @Default("") String? email,
    @JsonKey(includeIfNull: true) @Default("") String countryCode,
    @JsonKey(includeIfNull: true) @Default(0) int totalVisa,
    @JsonKey(includeIfNull: true)
    @DateTimeOrNullConverter()
    DateTime? createdDate,
    @JsonKey(includeIfNull: true)
    @DateTimeOrNullConverter()
    DateTime? lastUpdatedDate,
    @JsonKey(includeIfNull: true) @Default(false) bool outstandingAction,
  }) = _CustomerModel;

  factory CustomerModel.fromJson(Map<String, dynamic> json) =>
      _$CustomerModelFromJson(json);
}
