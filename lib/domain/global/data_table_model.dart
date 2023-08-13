import 'package:excel/excel.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'data_table_model.freezed.dart';

@freezed
class DataTableModel with _$DataTableModel {
  factory DataTableModel({
    @Default([]) List<Data?> bodyData,
    @Default(false) bool selected,
  }) = _DataTableModel;

  factory DataTableModel.empty() => DataTableModel();
}
