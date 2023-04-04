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
                      return Container(
                          width: double.infinity,
                          child: SingleChildScrollView(
                            child: DataTable(
                                columnSpacing: 12,
                                horizontalMargin: 12,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.grey.shade300,
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
                                    .toList()),
                          ));
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

  DataRow applicationDataRow(SimpleVisaModel visa, int index) {
    return DataRow(selected: index % 2 == 0 ? true : false, cells: [
      DataCell(Text((index + 1).toString())),
      DataCell(Text(visa.title ?? "")),
      DataCell(Text(visa.subTitle ?? "")),
      DataCell(Text(visa.status ?? "")),
      DataCell(Text(visa.applicationID ?? "")),
    ]);
  }

  DataColumn applicationHeaderColumn({required String label}) {
    return DataColumn(
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
