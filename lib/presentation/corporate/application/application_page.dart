import 'package:auto_route/auto_route.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:dti_web/application/agent/agent_cubit.dart';
import 'package:dti_web/application/app_list/app_list_cubit.dart';
import 'package:dti_web/domain/core/simple_visa_model.dart';
import 'package:dti_web/domain/global/data_list_model.dart';
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
  void initState() {
    context.read<AppListCubit>().getUserApplication();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<AgentCubit, AgentState>(
        listener: (context, agentState) {
          agentState.maybeMap(
            orElse: () {
              EasyLoading.dismiss();
            },
            loading: (value) {
              EasyLoading.show();
            },
            onDeleteBulkSuccess: (e) {
              EasyLoading.dismiss();
              context.read<AppListCubit>().getUserApplication();
            },
          );
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
                          context.read<AppListCubit>().getUserApplication();
                        },
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Expanded(
                  child: BlocBuilder<AppListCubit, AppListState>(
                    builder: (context, state) {
                      if (state.status == AppListStatus.success) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Visibility(
                              visible: state.showDeleteButton,
                              child: SizedBox(
                                height: 40,
                                width: 100,
                                child: ElevatedButton(
                                  onPressed: () {
                                    List<SimpleVisaModel> visa = [];
                                    for (var element
                                        in state.getSelectedApplication) {
                                      visa.add(element.bodyData);
                                    }
                                    context
                                        .read<AgentCubit>()
                                        .deleteApplicationAndPassport(visa);
                                  },
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.red),
                                  child: const Text("Delete"),
                                ),
                              ),
                            ),
                            const SizedBox(height: 20),
                            Expanded(
                              child: SizedBox(
                                  width: double.infinity,
                                  child: DataTable2(
                                      showCheckboxColumn: true,
                                      checkboxHorizontalMargin: 10,
                                      columnSpacing: 12,
                                      horizontalMargin: 12,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: const Color.fromARGB(
                                              255, 49, 19, 19),
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
                                        applicationHeaderColumn(label: "Title"),
                                        applicationHeaderColumn(
                                            label: "Subtitle"),
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

  bool _isOpenDetail(String status) {
    if (status == "Completed" ||
        status == "Submitted" ||
        status == "Paid" ||
        status == "Pending Payment") {
      return true;
    } else {
      return false;
    }
  }

  onOpenPressed() {}

  DataRow applicationDataRow(DataListModel visa, int index) {
    return DataRow2(
      selected: visa.selected,
      // onSelectChanged: (e) {
      // context.read<AppListCubit>().updateSelectedRow(index);
      // },
      onTap: () {
        String subtitle = visa.bodyData.subTitle?.toLowerCase() ?? "";
        if (visa.bodyData.status?.toLowerCase() == "draft") {
          late String desc;
          if (subtitle.contains('passport')) {
            desc =
                "You have incomplete Passport. Do you want to continue from your latest draft ? ";
          } else if (subtitle.contains("arrival")) {
            desc =
                "You have incomplete Visa On Arrivale. Do you want to continue from your latest draft ? ";
          } else {
            desc =
                "You have incomplete Visa Application. Do you want to continue from your latest draft ? ";
          }
          AwesomeDialog(
            context: context,
            width: 400,
            dialogType: DialogType.info,
            title: "Draft Application",
            desc: desc,
            btnCancelText: "Delete",
            btnOkText: "Continue",
            btnCancelOnPress: () {
              context
                  .read<AgentCubit>()
                  .deleteApplicationAndPassport([visa.bodyData]);
            },
            btnOkOnPress: () {
              final status = visa.bodyData.status!;
              if (subtitle.toLowerCase().contains('passport')) {
                if (_isOpenDetail(status)) {
                  AutoRouter.of(context).push(PassportDetailRoute(
                      firebaseDocId: visa.bodyData.firebaseDocId!));
                } else {
                  AutoRouter.of(context).push(
                    PassportPersonalParticularRoute(
                      firebaseDocId: visa.bodyData.firebaseDocId!,
                    ),
                  );
                }
              } else {
                if (_isOpenDetail(status)) {
                  AutoRouter.of(context).push(ApplicationDetailRoute(
                      firebaseDocId: visa.bodyData.firebaseDocId!));
                } else {
                  AutoRouter.of(context).push(PersonalInformation1Route(
                      firebaseDocId: visa.bodyData.firebaseDocId!));
                }
              }
            },
          ).show();
        } else {
          final status = visa.bodyData.status!;
          if (subtitle.toLowerCase().contains('passport')) {
            if (_isOpenDetail(status)) {
              AutoRouter.of(context).push(PassportDetailRoute(
                  firebaseDocId: visa.bodyData.firebaseDocId!));
            } else {
              AutoRouter.of(context).push(
                PassportPersonalParticularRoute(
                  firebaseDocId: visa.bodyData.firebaseDocId!,
                ),
              );
            }
          } else {
            if (_isOpenDetail(status)) {
              AutoRouter.of(context).push(ApplicationDetailRoute(
                  firebaseDocId: visa.bodyData.firebaseDocId!));
            } else {
              AutoRouter.of(context).push(PersonalInformation1Route(
                  firebaseDocId: visa.bodyData.firebaseDocId!));
            }
          }
        }
      },
      color: index % 2 == 0
          ? MaterialStatePropertyAll(Colors.blue[100])
          : const MaterialStatePropertyAll(Colors.white),
      cells: [
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
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16.0,
          ),
        ),
      ),
    );
  }
}
