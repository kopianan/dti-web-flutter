import 'package:auto_route/auto_route.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:dti_web/application/agent/agent_cubit.dart';
import 'package:dti_web/application/app_list/app_list_cubit.dart';
import 'package:dti_web/domain/core/simple_visa_model.dart';
import 'package:dti_web/domain/global/data_list_model.dart';
import 'package:dti_web/injection.dart';
import 'package:dti_web/routes/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
      body: BlocListener<AgentCubit, AgentState>(
        listener: (context, agentState) {
          agentState.maybeMap(orElse: () {
            EasyLoading.dismiss();
          }, loading: (value) {
            EasyLoading.show();
          }, onDeleteBulkSuccess: (e) {
            EasyLoading.dismiss();
            context.read<AppListCubit>().getUserApplication();
          });
        },
        child: BlocListener<AppListCubit, AppListState>(
          listener: (context, state) {
            if (state.status == AppListStatus.loading) {
              EasyLoading.show();
            } else {
              EasyLoading.dismiss();
            }
          },
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 40),
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
                        icon: Icon(Icons.refresh),
                        onPressed: () {
                          context.read<AppListCubit>().getUserApplication();
                        },
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Expanded(
                  child: BlocBuilder<AppListCubit, AppListState>(
                    bloc: context.read<AppListCubit>()..getUserApplication(),
                    builder: (context, state) {
                      if (state.status == AppListStatus.success) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Visibility(
                              visible: state.showDeleteButton,
                              child: Container(
                                height: 40,
                                width: 100,
                                child: ElevatedButton(
                                  child: Text("Delete"),
                                  onPressed: () {
                                    List<SimpleVisaModel> visa = [];
                                    state.getSelectedApplication
                                        .forEach((element) {
                                      visa.add(element.bodyData);
                                    });
                                    context
                                        .read<AgentCubit>()
                                        .deleteApplicationAndPassport(visa);
                                  },
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.red),
                                ),
                              ),
                            ),
                            SizedBox(height: 20),
                            Expanded(
                              child: Container(
                                  width: double.infinity,
                                  child: DataTable2(
                                      showCheckboxColumn: true,
                                      checkboxHorizontalMargin: 10,
                                      columnSpacing: 12,
                                      horizontalMargin: 12,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color:
                                              Color.fromARGB(255, 49, 19, 19),
                                          width: 1.0,
                                          style: BorderStyle.solid,
                                        ),
                                      ),
                                      onSelectAll: (e) {
                                        context
                                            .read<AppListCubit>()
                                            .updateAllSelected(e ?? false);
                                      },
                                      columns: [
                                        applicationHeaderColumn(label: "No"),
                                        applicationHeaderColumn(label: "Email"),
                                        applicationHeaderColumn(
                                            label: "Visa Type"),
                                        applicationHeaderColumn(
                                            label: "Status"),
                                        applicationHeaderColumn(
                                            label: "Reference Number"),
                                      ],
                                      rows: state.apps
                                          .map((value) => applicationDataRow(
                                              value, state.apps.indexOf(value)))
                                          .toList())),
                            ),
                          ],
                        );
                      } else {
                        return Container();
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  DataRow applicationDataRow(DataListModel visa, int index) {
    return DataRow2(
      selected: visa.selected,
      onSelectChanged: (e) {
        context.read<AppListCubit>().updateSelectedRow(index);
      },
      onTap: () {
        AutoRouter.of(context).push(PersonalInformation1Route(
            firebaseDocId: visa.bodyData.firebaseDocId!));
      },
      color: index % 2 == 0
          ? MaterialStatePropertyAll(Colors.blue[100])
          : MaterialStatePropertyAll(Colors.white),
      cells: [
        DataCell(Text((index + 1).toString())),
        DataCell(Text(visa.bodyData.title ?? "")),
        DataCell(Text(visa.bodyData.subTitle ?? "")),
        DataCell(Text(visa.bodyData.status ?? "")),
        DataCell(Text(visa.bodyData.applicationID ?? "")),
      ],
    );
  }

  DataColumn applicationHeaderColumn({required String label}) {
    return DataColumn2(
      onSort: (index, status) {},
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
