import 'package:auto_route/auto_route.dart';
import 'package:community_charts_flutter/community_charts_flutter.dart'
    as charts;
import 'package:dti_web/application/admin_application/cubit/admin_application_cubit.dart';
import 'package:dti_web/application/customer/cubit/customer_cubit.dart';
import 'package:dti_web/presentation/corporate/widgets/chart_filter_widget.dart';
import 'package:dti_web/utils/chart_util.dart';
import 'package:dti_web/utils/date_converter.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../application/admin/admin_data/admin_data_cubit.dart';

@RoutePage()
class AdminStatisticPage extends StatefulWidget {
  const AdminStatisticPage({super.key});

  @override
  State<AdminStatisticPage> createState() => _AdminStatisticPageState();
}

class _AdminStatisticPageState extends State<AdminStatisticPage> {
  /// Create one series with sample hard coded data.

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<CustomerCubit, CustomerState>(
          bloc: context.read<CustomerCubit>()..getAllCustomer(),
          listener: (context, state) {
            state.maybeMap(
              orElse: () {},
              getAllCustomer: (value) {
                context.read<AdminDataCubit>().setCustomerData(value.customers);
              },
            );
          },
        ),
        BlocListener<AdminApplicationCubit, AdminApplicationState>(
          bloc: context.read<AdminApplicationCubit>()..getAllUserVisa(),
          listener: (context, state) {
            state.maybeMap(
                orElse: () {},
                getAllUserVisa: (value) {
                  context
                      .read<AdminDataCubit>()
                      .setApplicationData(value.visas);
                });
          },
        ),
      ],
      child: Scaffold(
          body: ListView(
        children: [
          Container(
              margin: const EdgeInsets.symmetric(horizontal: 30),
              width: double.infinity,
              height: 500,
              child: Row(
                children: [
                  Expanded(child: BlocBuilder<AdminDataCubit, AdminDataState>(
                    builder: (context, state) {
                      return Card(
                        elevation: 6,
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 30, vertical: 30),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "User Data",
                                style: TextStyle(
                                    fontSize: 30, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              Table(
                                  border: TableBorder.all(
                                    style: BorderStyle.solid,
                                    width: 1,
                                  ),
                                  children: [
                                    TableRow(
                                      children: [
                                        const TableItemWidget(
                                            label: "Total User"),
                                        TableItemWidget(
                                            label:
                                                state.users.length.toString()),
                                      ],
                                    ),
                                    TableRow(
                                      children: [
                                        const TableItemWidget(
                                            label: "Total New User In 7 Days"),
                                        TableItemWidget(
                                            label: state
                                                .getUserListInTime(7)
                                                .length
                                                .toString()),
                                      ],
                                    ),
                                    TableRow(
                                      children: [
                                        const TableItemWidget(
                                            label:
                                                "Total New User In 1 Months"),
                                        TableItemWidget(
                                            label: state
                                                .getUserListInTime(30)
                                                .length
                                                .toString()),
                                      ],
                                    ),
                                  ]),
                            ],
                          ),
                        ),
                      );
                    },
                  )),
                  const SizedBox(width: 30),
                  Expanded(
                    child: Card(
                      elevation: 6,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 20),
                            child: const Text(
                              "Total Application",
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Expanded(
                            child: BlocBuilder<AdminDataCubit, AdminDataState>(
                              builder: (context, state) {
                                return charts.PieChart<Object>(
                                  state.getApplicationsSeries(),
                                  defaultRenderer: charts.ArcRendererConfig(
                                      arcRendererDecorators: [
                                        charts.ArcLabelDecorator(
                                            showLeaderLines: true)
                                      ]),
                                  animate: false,
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )),
          const SizedBox(height: 20),
          // Container(
          // margin: const EdgeInsets.symmetric(horizontal: 30),
          // child: Card(
          //   elevation: 6,
          //   shape: const RoundedRectangleBorder(
          //       borderRadius: BorderRadius.all(Radius.circular(10))),
          //   child: Column(
          //     children: [
          //       Container(
          //         padding: const EdgeInsets.symmetric(
          //             horizontal: 20, vertical: 20),
          //         child: const Text(
          //           "Customer Graph",
          //           style: TextStyle(
          //               fontSize: 30, fontWeight: FontWeight.bold),
          //         ),
          //       ),
          //       SizedBox(
          //         height: 50,
          //         child: Container(
          //           padding: const EdgeInsets.only(left: 30),
          //           child: BlocBuilder<AdminDataCubit, AdminDataState>(
          //             builder: (context, state) => Row(
          //               children: state.usersChartFilter
          //                   .map(
          //                     (e) => InkWell(
          //                       onTap: () {
          //                         context
          //                             .read<AdminDataCubit>()
          //                             .setActiveFilter(e);
          //                         context
          //                             .read<AdminDataCubit>()
          //                             .setTimeRangeCustomer(e.range);
          //                       },
          //                       child: ChartFilterWidget(filterModel: e),
          //                     ),
          //                   )
          //                   .toList(),
          //             ),
          //           ),
          //         ),
          //       ),
          //       Container(
          //         padding: const EdgeInsets.only(
          //           left: 20,
          //           right: 20,
          //           bottom: 30,
          //         ),
          //         height: 500,
          //         color: Colors.white,
          //         child: BlocBuilder<AdminDataCubit, AdminDataState>(
          //           builder: (context, state) {
          //             if (state.users.isNotEmpty) {
          //               return SfCartesianChart(
          //                   primaryXAxis: const DateTimeCategoryAxis(
          //                     intervalType: DateTimeIntervalType.auto,
          //                   ),
          //                   series: <CartesianSeries<TimeSeriesCoordinate,
          //                       DateTime>>[
          //                     // Renders line chart
          //                     ColumnSeries<TimeSeriesCoordinate, DateTime>(
          //                         width: 0.5,
          //                         dataSource:
          //                             state.getCustomerLineSeries2(),
          //                         xValueMapper:
          //                             (TimeSeriesCoordinate data, _) =>
          //                                 data.time,
          //                         yValueMapper:
          //                             (TimeSeriesCoordinate data, _) =>
          //                                 data.total)
          //                   ]);
          //               // return charts.TimeSeriesChart(
          //               //   state.getCustomerLineSeries(),
          //               //   defaultRenderer:
          //               //       charts.BarRendererConfig<DateTime>(
          //               //           minBarLengthPx: 50,
          //               //           maxBarWidthPx: 30,
          //               //           barGroupInnerPaddingPx: 20),
          //               //   animate: true,
          //               //   behaviors: [
          //               //     charts.DomainHighlighter(),
          //               //     charts.SelectNearest(),
          //               //   ],
          //               // );
          //             } else {
          //               return Container();
          //             }
          //           },
          //         ),
          //       ),
          //     ],
          //   ),
          // )),
          userGraph(),
          const SizedBox(height: 20),
          applicationGraph(),
        ],
      )),
    );
  }

  Container applicationGraph() {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 30),
        child: Card(
          elevation: 6,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))),
          child: Column(
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: const Text(
                  "Application Graph",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 50,
                child: Container(
                  padding: const EdgeInsets.only(left: 30),
                  child: BlocBuilder<AdminDataCubit, AdminDataState>(
                    builder: (context, state) => Row(
                      children: ChartUtil()
                          .getChartFilter()
                          .map(
                            (e) => InkWell(
                              onTap: () {
                                context
                                    .read<AdminDataCubit>()
                                    .setActiveFilterApplication(e);
                              },
                              child: ChartFilterWidget(
                                filterModel: e,
                                active: e.name == state.applicationFilter.name,
                              ),
                            ),
                          )
                          .toList(),
                    ),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                  bottom: 30,
                ),
                height: 500,
                color: Colors.white,
                child: BlocBuilder<AdminDataCubit, AdminDataState>(
                  builder: (context, state) {
                    if (state.application.isNotEmpty) {
                      if (state.getSelectedAppsChartFilter().range !=
                          TimeRange.All) {
                        return SfCartesianChart(
                          legend: const Legend(isVisible: true),
                          primaryXAxis: DateTimeCategoryAxis(
                            interactiveTooltip: const InteractiveTooltip(),
                            labelPosition: ChartDataLabelPosition.outside,
                            dateFormat: DateFormat('dd-MMM-yyyy'),
                          ),
                          series: <CartesianSeries<TimeSeriesCoordinate,
                              DateTime>>[
                            // Renders line chart
                            ColumnSeries<TimeSeriesCoordinate, DateTime>(
                              name: 'Total',
                              dataLabelSettings: DataLabelSettings(
                                showCumulativeValues: true,
                                builder: (data, point, series, pointIndex,
                                    seriesIndex) {
                                  return Text(data.total.toString());
                                },
                                isVisible: true,
                              ),
                              width: 0.5,
                              dataSource: state.getApplicationByTimeFrame(),
                              xValueMapper: (TimeSeriesCoordinate data, _) =>
                                  data.time,
                              yValueMapper: (TimeSeriesCoordinate data, _) =>
                                  data.total,
                              dataLabelMapper: (datum, index) =>
                                  datum.time.day.toString(),
                            )
                          ],
                        );
                      } else {
                        return Container(
                            child: SfCartesianChart(
                                legend: const Legend(isVisible: true),
                                axes: const [CategoryAxis()],
                                primaryXAxis: DateTimeCategoryAxis(
                                  dateFormat: DateFormat.y(),
                                ),
                                series: [
                                  ColumnSeries<ChartData, DateTime>(
                                    name: "Jan-Mar",
                                    enableTooltip: true,
                                    dataLabelSettings: const DataLabelSettings(
                                      isVisible: true,
                                    ),
                                    dataSource:
                                        state.getApplicationByTimeFoAll(),
                                    xValueMapper: (ChartData data, _) =>
                                        data.time,
                                    yValueMapper: (ChartData data, _) =>
                                        data.q1,
                                  ),
                                  ColumnSeries<ChartData, DateTime>(
                                    name: "Apr-Jun",
                                    dataLabelSettings: const DataLabelSettings(
                                      isVisible: true,
                                      showCumulativeValues: true,
                                    ),
                                    dataSource:
                                        state.getApplicationByTimeFoAll(),
                                    xValueMapper: (ChartData data, _) =>
                                        data.time,
                                    yValueMapper: (ChartData data, _) =>
                                        data.q2,
                                  ),
                                  ColumnSeries<ChartData, DateTime>(
                                    name: "Jul-Sep",
                                    dataLabelSettings: const DataLabelSettings(
                                      isVisible: true,
                                    ),
                                    dataSource:
                                        state.getApplicationByTimeFoAll(),
                                    xValueMapper: (ChartData data, _) =>
                                        data.time,
                                    yValueMapper: (ChartData data, _) =>
                                        data.q3,
                                  ),
                                  ColumnSeries<ChartData, DateTime>(
                                    name: "Oct-Dec",
                                    dataLabelSettings: const DataLabelSettings(
                                        isVisible: true,
                                        showCumulativeValues: true,
                                        useSeriesColor: false),
                                    dataSource:
                                        state.getApplicationByTimeFoAll(),
                                    xValueMapper: (ChartData data, _) =>
                                        data.time,
                                    yValueMapper: (ChartData data, _) =>
                                        data.q4,
                                  )
                                ]));
                      }
                    } else {
                      return Container();
                    }
                  },
                ),
              ),
            ],
          ),
        ));
  }

  Container userGraph() {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 30),
        child: Card(
          elevation: 6,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))),
          child: Column(
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: const Text(
                  "Customer Graph",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 50,
                child: Container(
                  padding: const EdgeInsets.only(left: 30),
                  child: BlocBuilder<AdminDataCubit, AdminDataState>(
                    builder: (context, state) => Row(
                      children: ChartUtil()
                          .getChartFilter()
                          .map(
                            (e) => InkWell(
                              onTap: () {
                                context
                                    .read<AdminDataCubit>()
                                    .setActiveFilterCustomer(e);
                              },
                              child: ChartFilterWidget(
                                filterModel: e,
                                active: e.name == state.applicationFilter.name,
                              ),
                            ),
                          )
                          .toList(),
                    ),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                  bottom: 30,
                ),
                height: 500,
                color: Colors.white,
                child: BlocBuilder<AdminDataCubit, AdminDataState>(
                  builder: (context, state) {
                    if (state.application.isNotEmpty) {
                      if (state.getSelectedUserChartFilter().range !=
                          TimeRange.All) {
                        return SfCartesianChart(
                          legend: const Legend(isVisible: true),
                          primaryXAxis: DateTimeCategoryAxis(
                            interactiveTooltip: const InteractiveTooltip(),
                            labelPosition: ChartDataLabelPosition.outside,
                            dateFormat: DateFormat('dd-MMM-yyyy'),
                          ),
                          series: <CartesianSeries<TimeSeriesCoordinate,
                              DateTime>>[
                            // Renders line chart
                            ColumnSeries<TimeSeriesCoordinate, DateTime>(
                              name: 'Total',
                              dataLabelSettings: DataLabelSettings(
                                showCumulativeValues: true,
                                builder: (data, point, series, pointIndex,
                                    seriesIndex) {
                                  return Text(data.total.toString());
                                },
                                isVisible: true,
                              ),
                              width: 0.5,
                              dataSource: state.getUserDataByTimeFrame(),
                              xValueMapper: (TimeSeriesCoordinate data, _) =>
                                  data.time,
                              yValueMapper: (TimeSeriesCoordinate data, _) =>
                                  data.total,
                              dataLabelMapper: (datum, index) =>
                                  datum.time.day.toString(),
                            )
                          ],
                        );
                      } else {
                        return Container(
                            child: SfCartesianChart(
                                legend: const Legend(isVisible: true),
                                axes: const [CategoryAxis()],
                                primaryXAxis: DateTimeCategoryAxis(
                                  dateFormat: DateFormat.y(),
                                ),
                                series: [
                                  ColumnSeries<ChartData, DateTime>(
                                    name: "Jan-Mar",
                                    enableTooltip: true,
                                    dataLabelSettings: const DataLabelSettings(
                                      isVisible: true,
                                    ),
                                    dataSource: state.getUsersByTimeFoAll(),
                                    xValueMapper: (ChartData data, _) =>
                                        data.time,
                                    yValueMapper: (ChartData data, _) =>
                                        data.q1,
                                  ),
                                  ColumnSeries<ChartData, DateTime>(
                                    name: "Apr-Jun",
                                    dataLabelSettings: const DataLabelSettings(
                                      isVisible: true,
                                      showCumulativeValues: true,
                                    ),
                                    dataSource: state.getUsersByTimeFoAll(),
                                    xValueMapper: (ChartData data, _) =>
                                        data.time,
                                    yValueMapper: (ChartData data, _) =>
                                        data.q2,
                                  ),
                                  ColumnSeries<ChartData, DateTime>(
                                    name: "Jul-Sep",
                                    dataLabelSettings: const DataLabelSettings(
                                      isVisible: true,
                                    ),
                                    dataSource: state.getUsersByTimeFoAll(),
                                    xValueMapper: (ChartData data, _) =>
                                        data.time,
                                    yValueMapper: (ChartData data, _) =>
                                        data.q3,
                                  ),
                                  ColumnSeries<ChartData, DateTime>(
                                    name: "Oct-Dec",
                                    dataLabelSettings: const DataLabelSettings(
                                        isVisible: true,
                                        showCumulativeValues: true,
                                        useSeriesColor: false),
                                    dataSource: state.getUsersByTimeFoAll(),
                                    xValueMapper: (ChartData data, _) =>
                                        data.time,
                                    yValueMapper: (ChartData data, _) =>
                                        data.q4,
                                  )
                                ]));
                      }
                    } else {
                      return Container();
                    }
                  },
                ),
              ),
            ],
          ),
        ));
  }

  BarTouchData get barTouchData => BarTouchData(
        enabled: false,
        touchTooltipData: BarTouchTooltipData(
          getTooltipColor: (group) => Colors.transparent,
          tooltipPadding: EdgeInsets.zero,
          tooltipMargin: 8,
          getTooltipItem: (
            BarChartGroupData group,
            int groupIndex,
            BarChartRodData rod,
            int rodIndex,
          ) {
            return BarTooltipItem(
              rod.toY.round().toString(),
              const TextStyle(
                color: Colors.indigo,
                fontWeight: FontWeight.bold,
              ),
            );
          },
        ),
      );

  Widget getTitles(double value, TitleMeta meta, List<DateTime> lists) {
    const style = TextStyle(
      color: Colors.blue,
      fontWeight: FontWeight.bold,
      fontSize: 14,
    );
    String text = meta.formattedValue;
    text = DateConverter.convertDateDefault2(lists[value.toInt()]);

    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 4,
      child: Text(text, style: style),
    );
  }

  FlTitlesData titlesData(List<TimeSeriesCoordinate> lists) => FlTitlesData(
        show: true,
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 30,
            getTitlesWidget: (value, meta) =>
                getTitles(value, meta, lists.map((e) => e.time).toList()),
          ),
        ),
        leftTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        topTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        rightTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
      );

  FlBorderData get borderData => FlBorderData(
        show: false,
      );

  LinearGradient get _barsGradient => const LinearGradient(
        colors: [Colors.red, Colors.blue],
        begin: Alignment.bottomCenter,
        end: Alignment.topCenter,
      );
}

class TableItemWidget extends StatelessWidget {
  const TableItemWidget({
    super.key,
    required this.label,
  });
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: Text(
          label,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ));
  }
}

/// Sample ordinal data type.
class OrdinalSales {
  final String year;
  final int sales;

  OrdinalSales(this.year, this.sales);
}

class TimeSeriesSales {
  final DateTime time;
  final int sales;

  TimeSeriesSales(this.time, this.sales);
}
