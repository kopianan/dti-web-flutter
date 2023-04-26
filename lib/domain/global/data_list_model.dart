import 'package:dti_web/domain/core/simple_visa_model.dart';
import 'package:excel/excel.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'data_list_model.freezed.dart';

@unfreezed
class DataListModel with _$DataListModel {
  factory DataListModel({
    required SimpleVisaModel bodyData,
    @Default(false) bool selected,
  }) = _DataListModel;

  factory DataListModel.empty() =>
      DataListModel(bodyData: SimpleVisaModel.empty());
}
