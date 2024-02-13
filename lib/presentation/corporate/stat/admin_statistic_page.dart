import 'package:auto_route/auto_route.dart';
import 'package:dti_web/application/admin_application/cubit/admin_application_cubit.dart';
import 'package:dti_web/application/application_cubit.dart';
import 'package:dti_web/application/customer/cubit/customer_cubit.dart';
import 'package:dti_web/domain/core/customer_model.dart';
import 'package:dti_web/injection.dart';
import 'package:dti_web/presentation/corporate/widgets/chart_filter_widget.dart';
import 'package:dti_web/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:community_charts_flutter/community_charts_flutter.dart'
    as charts;
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/admin/admin_data/admin_data_cubit.dart';

@RoutePage()
class AdminStatisticPage extends StatefulWidget {
  const AdminStatisticPage({super.key});

  @override
  State<AdminStatisticPage> createState() => _AdminStatisticPageState();
}

class _AdminStatisticPageState extends State<AdminStatisticPage> {
  /// Create one series with sample hard coded data.
  static List<charts.Series<OrdinalSales, String>> _createSampleData() {
    final data = [
      OrdinalSales('2014', 5),
      OrdinalSales('2015', 25),
      OrdinalSales('2016', 100),
      OrdinalSales('2017', 75),
    ];
    return [
      charts.Series<OrdinalSales, String>(
        id: 'Sales',
        colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
        domainFn: (OrdinalSales sales, _) => sales.year,
        measureFn: (OrdinalSales sales, _) => sales.sales,
        data: data,
      )
    ];
  }

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
                                  charts.ArcLabelDecorator()
                                ]),
                            animate: false,
                          );
                        },
                      ),
                    ),
                  ],
                ),
              )),
          const SizedBox(height: 20),
          Container(
              margin: const EdgeInsets.symmetric(horizontal: 30),
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
                        "Customer Graph",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                      child: Container(
                        padding: const EdgeInsets.only(left: 30),
                        child: BlocBuilder<AdminDataCubit, AdminDataState>(
                          builder: (context, state) => Row(
                            children: state.usersChartFilter
                                .map(
                                  (e) => InkWell(
                                    onTap: () {
                                      context
                                          .read<AdminDataCubit>()
                                          .setActiveFilter(e);
                                    },
                                    child: ChartFilterWidget(filterModel: e),
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
                          if (state.users.isNotEmpty) {
                            return charts.TimeSeriesChart(
                              state.getCustomerLineSeries(),
                              animate: true,
                            );
                          } else {
                            return Container();
                          }
                        },
                      ),
                    ),
                  ],
                ),
              )),
          const SizedBox(height: 20),
          Container(
              margin: const EdgeInsets.symmetric(horizontal: 30),
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
                        "Application Graph",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                      child: Container(
                        padding: const EdgeInsets.only(left: 30),
                        child: BlocBuilder<AdminDataCubit, AdminDataState>(
                          builder: (context, state) => Row(
                            children: state.appsChartFilter
                                .map(
                                  (e) => InkWell(
                                    onTap: () {
                                      context
                                          .read<AdminDataCubit>()
                                          .setActiveFilterApplication(e);
                                    },
                                    child: ChartFilterWidget(filterModel: e),
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
                            return charts.TimeSeriesChart(
                              state.getApplicationLineSeries(),
                              animate: true,
                            );
                          } else {
                            return Container();
                          }
                        },
                      ),
                    ),
                  ],
                ),
              )),
        ],
      )),
    );
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
