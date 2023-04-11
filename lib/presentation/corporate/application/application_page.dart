import 'package:auto_route/auto_route.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:dti_web/application/app_list/app_list_cubit.dart';
import 'package:dti_web/domain/core/simple_visa_model.dart';
import 'package:dti_web/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class ApplicationPage extends StatefulWidget {
  const ApplicationPage({super.key});

  @override
  State<ApplicationPage> createState() => _ApplicationPageState();
}

class _ApplicationPageState extends State<ApplicationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
                create: (context) =>
                    getIt<AppListCubit>()..getUserApplication(),
                child: BlocBuilder<AppListCubit, AppListState>(
                  builder: (context, state) {
                    return state.maybeMap(
                      orElse: () {
                        return Container();
                      },
                      onGetUsersApplication: (e) {
                        return Container(
                            width: double.infinity,
                            child: DataTable2(
                                showCheckboxColumn: true,
                                checkboxHorizontalMargin: 10,
                                columnSpacing: 12,
                                horizontalMargin: 12,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Color.fromARGB(255, 49, 19, 19),
                                    width: 1.0,
                                    style: BorderStyle.solid,
                                  ),
                                ),
                                columns: [
                                  applicationHeaderColumn(label: "No"),
                                  applicationHeaderColumn(label: "Email"),
                                  applicationHeaderColumn(label: "Visa Type"),
                                  applicationHeaderColumn(label: "Status"),
                                  applicationHeaderColumn(
                                      label: "Reference Number"),
                                ],
                                rows: e.apps
                                    .map((value) => applicationDataRow(
                                        value, e.apps.indexOf(value)))
                                    .toList()));
                      },
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  DataRow applicationDataRow(SimpleVisaModel visa, int index) {
    return DataRow2(
      onSelectChanged: (e) {},
      onTap: () {},
      color: index % 2 == 0
          ? MaterialStatePropertyAll(Colors.blue[100])
          : MaterialStatePropertyAll(Colors.white),
      cells: [
        DataCell(Text((index + 1).toString())),
        DataCell(Text(visa.title ?? "")),
        DataCell(Text(visa.subTitle ?? "")),
        DataCell(Text(visa.status ?? "")),
        DataCell(Text(visa.applicationID ?? "")),
      ],
    );
  }

  DataColumn applicationHeaderColumn({required String label}) {
    return DataColumn2(
      label: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
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
