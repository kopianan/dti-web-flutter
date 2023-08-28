import 'package:dti_web/domain/core/date_time_or_null_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'customer_model.freezed.dart';
part 'customer_model.g.dart';

@freezed
class CustomerModel with _$CustomerModel {
  factory CustomerModel({
    @Default("") String name,
    String? uid,
    @Default("") String email,
    @Default("") String countryCode,
    @Default("") String mobileNumber,
    @Default(0) int totalVisa,
    @DateTimeOrNullConverter() DateTime? createdDate,
    @DateTimeOrNullConverter() DateTime? lastUpdatedDate,
    @Default(false) bool outstandingAction,
  }) = _CustomerModel;

  factory CustomerModel.fromJson(Map<String, dynamic> json) =>
      _$CustomerModelFromJson(json);
}
