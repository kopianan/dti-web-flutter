import 'package:dti_web/application/admin/admin_data/admin_data_cubit.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chart_filter_model.freezed.dart';

@freezed
class ChartFilterModel with _$ChartFilterModel {
  factory ChartFilterModel({
    required String name,
    required int totalDays,
    required String label,
    required bool active,
  }) = _ChartFilterModel;
}
