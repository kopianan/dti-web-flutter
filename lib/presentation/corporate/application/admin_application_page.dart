import 'package:auto_route/auto_route.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:dti_web/application/admin_application/cubit/admin_application_cubit.dart';
import 'package:dti_web/domain/core/simple_visa_model.dart';
import 'package:dti_web/routes/app_router.dart';
import 'package:dti_web/utils/date_converter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class AdminApplicationPage extends StatefulWidget {
  const AdminApplicationPage({super.key});

  @override
  State<AdminApplicationPage> createState() => _AdminApplicationPageState();
}

class _AdminApplicationPageState extends State<AdminApplicationPage> {
  @override
  void initState() {
    context.read<AdminApplicationCubit>().getAllUserVisa();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<AdminApplicationCubit, AdminApplicationState>(
        builder: (context, state) {
          return Container(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Application",
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                    ),
                    Container(
                      constraints: BoxConstraints(minWidth: 100.w),
                      height: 45.h,
                      child: OutlinedButton.icon(
                        label: Text(
                          "Refresh",
                          style: TextStyle(fontSize: 16.sp),
                        ),
                        icon: const Icon(Icons.refresh),
                        onPressed: () {
                          context
                              .read<AdminApplicationCubit>()
                              .getAllUserVisa();
                        },
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                state.maybeMap(
                  orElse: () {
                    return const SizedBox();
                  },
                  getAllUserVisa: (e) {
                    return Expanded(
                      child: SizedBox(
                          width: double.infinity,
                          child: DataTable2(
                              minWidth: 2000,
                              showCheckboxColumn: true,
                              checkboxHorizontalMargin: 10,
                              columnSpacing: 12,
                              horizontalMargin: 12,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: const Color.fromARGB(255, 49, 19, 19),
                                  width: 1.0,
                                  style: BorderStyle.solid,
                                ),
                              ),
                              columns: [
                                applicationHeaderColumn(label: "Name"),
                                applicationHeaderColumn(
                                    label: "Submitted Date"),
                                applicationHeaderColumn(label: "Title"),
                                applicationHeaderColumn(label: "Subtitle"),
                                applicationHeaderColumn(
                                    label: "Status", width: 150),
                                applicationHeaderColumn(
                                    label: "Reference Number"),
                              ],
                              rows: e.visas
                                  .map((value) => applicationDataRow(
                                      value, e.visas.indexOf(value)))
                                  .toList())),
                    );
                  },
                )
              ],
            ),
          );
        },
      ),
    );
  }

  DataRow applicationDataRow(SimpleVisaModel visa, int index) {
    return DataRow2(
      onTap: () {
        final id = visa.firebaseDocId; 
        if (id != null) {
          context.router.push(
            ApplicationDetailRoute(firebaseDocId: id),
          );
        }
      },
      color: index % 2 == 0
          ? MaterialStatePropertyAll(Colors.blue[100])
          : const MaterialStatePropertyAll(Colors.white),
      cells: [
        DataCell(Text(visa.title ?? "")),
        DataCell(Text(DateConverter.convertDateDefault(
            visa.usedByDate.toIso8601String()))),
        DataCell(Text(visa.title ?? "")),
        DataCell(Text(visa.subTitle ?? "")),
        DataCell(Text(visa.status ?? "")),
        DataCell(Text(visa.applicationID ?? "")),
      ],
    );
  }

  DataColumn applicationHeaderColumn(
      {required String label, double width = 250}) {
    return DataColumn2(
      fixedWidth: width,
      onSort: (index, status) {},
      label: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        child: Text(
          label,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16.0,
          ),
        ),
      ),
    );
  }
}
