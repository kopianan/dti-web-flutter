import 'package:data_table_2/data_table_2.dart';
import 'package:dti_web/application/app_list/app_list_cubit.dart';
import 'package:dti_web/domain/core/simple_visa_model.dart';
import 'package:dti_web/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ApplicationPage extends StatefulWidget {
  ApplicationPage({super.key});

  @override
  State<ApplicationPage> createState() => _ApplicationPageState();
}

class _ApplicationPageState extends State<ApplicationPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Application",
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: BlocProvider(
              create: (context) => getIt<AppListCubit>()..getUserApplication(),
              child: BlocBuilder<AppListCubit, AppListState>(
                builder: (context, state) {
                  return state.maybeMap(
                    orElse: () {
                      return Container();
                    },
                    onGetUsersApplication: (e) {
                      return DataTable2(
                          columnSpacing: 12,
                          horizontalMargin: 12,
                          minWidth: 600,
                          smRatio: 0.75,
                          lmRatio: 1.5,
                          columns: const [
                            DataColumn2(
                              size: ColumnSize.S,
                              label: Text('Column A'),
                            ),
                            DataColumn(
                              label: Text('Column B'),
                            ),
                            DataColumn(
                              label: Text('Column C'),
                            ),
                            DataColumn(
                              label: Text('Column D'),
                            ),
                            DataColumn2(
                              label: Text('Column NUMBERS'),
                              numeric: true,
                              size: ColumnSize.L,
                            ),
                          ],
                          rows: List<DataRow>.generate(
                              100,
                              (index) => DataRow(cells: [
                                    DataCell(Text('A' * (10 - index % 10))),
                                    DataCell(
                                        Text('B' * (10 - (index + 5) % 10))),
                                    DataCell(
                                        Text('C' * (15 - (index + 5) % 10))),
                                    DataCell(
                                        Text('D' * (15 - (index + 10) % 10))),
                                    DataCell(
                                        Text(((index + 0.1) * 25.4).toString()))
                                  ])));
                      // return Container(
                      //     width: double.infinity,
                      //     child: DataTable2(
                      //         columnSpacing: 12,
                      //         horizontalMargin: 12,
                      //         minWidth: 600,

                      //         smRatio: 0.75,
                      //         lmRatio: 1.5,
                      //         decoration: BoxDecoration(
                      //           border: Border.all(
                      //             color: Colors.grey.shade300,
                      //             width: 1.0,
                      //             style: BorderStyle.solid,
                      //           ),
                      //         ),
                      //         columns: [
                      //           applicationHeaderColumn(label: "Email"),
                      //           applicationHeaderColumn(label: "Visa Type"),
                      //           applicationHeaderColumn(label: "Status"),
                      //           applicationHeaderColumn(
                      //               label: "Reference Number"),
                      //         ],
                      //         rows: e.apps
                      //             .map((e) => applicationDataRow(e))
                      //             .toList()));
                    },
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  DataRow2 applicationDataRow(SimpleVisaModel visa) {
    return DataRow2(cells: [
      DataCell(Text(visa.title ?? "")),
      DataCell(Text(visa.subTitle ?? "")),
      DataCell(Text(visa.status ?? "")),
      DataCell(Text(visa.applicationID ?? "")),
    ]);
  }

  DataColumn2 applicationHeaderColumn({required String label}) {
    return DataColumn2(
      label: Padding(
        padding: EdgeInsets.symmetric(vertical: 16.0),
        child: Text(
          label,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16.0,
          ),
        ),
      ),
    );
  }
}
