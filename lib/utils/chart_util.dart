import 'package:dti_web/application/admin/admin_data/admin_data_cubit.dart';
import 'package:dti_web/domain/core/chart_filter_model.dart';

class ChartUtil {
  List<ChartFilterModel> getChartFilter() {
    return [
      ChartFilterModel(
          name: "7 Days",
          label: "7D",
          totalDays: 7,
          range: TimeRange.Last7Days),
      ChartFilterModel(
          name: "1 Month",
          label: "1M",
          totalDays: 30,
          range: TimeRange.Last1Month),
      ChartFilterModel(
          name: "3 Months",
          label: "3M",
          totalDays: 90,
          range: TimeRange.Last3Months),
      ChartFilterModel(
          name: "1 Year",
          label: "1Y",
          totalDays: 365,
          range: TimeRange.Last1Year),
      ChartFilterModel(
          name: "All", label: "ALL", totalDays: -1, range: TimeRange.All),
    ];
  }
}
