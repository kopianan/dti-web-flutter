import 'package:freezed_annotation/freezed_annotation.dart';

part 'visa_price_model.freezed.dart';
part 'visa_price_model.g.dart';

@freezed
class VisaPriceModel with _$VisaPriceModel {
  factory VisaPriceModel({int? usd}) = _VisaPriceModel;

  factory VisaPriceModel.fromJson(Map<String, dynamic> json) =>
      _$VisaPriceModelFromJson(json);
}
