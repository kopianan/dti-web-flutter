import 'package:dti_web/application/admin/admin_data/admin_data_cubit.dart';
import 'package:dti_web/domain/core/chart_filter_model.dart';
import 'package:dti_web/presentation/corporate/stat/admin_statistic_page.dart';

class ChartUtil {
  List<ChartFilterModel> getUserChartFilter() {
    return [
      ChartFilterModel(
          name: "7 Days", label: "7D", active: false, totalDays: 7),
      ChartFilterModel(
        name: "1 Month",
        label: "1M",
        active: false,
        totalDays: 30,
      ),
      ChartFilterModel(
        name: "3 Months",
        label: "3M",
        active: false,
        totalDays: 90,
      ),
      ChartFilterModel(
        name: "6 Months",
        label: "6M",
        active: false,
        totalDays: 180,
      ),
      ChartFilterModel(
        name: "1 Year",
        label: "1Y",
        active: false,
        totalDays: 365,
      ),
      ChartFilterModel(
        name: "All",
        label: "ALL",
        active: true,
        totalDays: -1,
      ),
    ];
  }
}
