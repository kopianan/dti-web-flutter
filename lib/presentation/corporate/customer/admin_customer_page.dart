import 'package:auto_route/auto_route.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:dti_web/application/app_list/app_list_cubit.dart';
import 'package:dti_web/application/customer/cubit/customer_cubit.dart';
import 'package:dti_web/domain/core/customer_model.dart';
import 'package:dti_web/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class AdminCustomerPage extends StatefulWidget {
  const AdminCustomerPage({super.key});

  @override
  State<AdminCustomerPage> createState() => _AdminCustomerPageState();
}

class _AdminCustomerPageState extends State<AdminCustomerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<CustomerCubit, CustomerState>(
        bloc: getIt<CustomerCubit>()..getAllCustomer(),
        builder: (context, customerState) {
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
                      "Customer",
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
                          // context.read<AppListCubit>().getUserApplication();
                        },
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                customerState.maybeMap(
                  orElse: () {
                    return const SizedBox();
                  },
                  getAllCustomer: (e) {
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
                              onSelectAll: (e) {
                                context
                                    .read<AppListCubit>()
                                    .updateAllSelected(e ?? false);
                              },
                              columns: [
                                applicationHeaderColumn(label: "First Name"),
                                applicationHeaderColumn(label: "Last Name"),
                                applicationHeaderColumn(label: "Phone Number"),
                                applicationHeaderColumn(label: "Total Visa"),
                              ],
                              rows: e.customers
                                  .map(
                                    (value) => applicationDataRow(
                                      value,
                                      e.customers.indexOf(value),
                                    ),
                                  )
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

  DataRow applicationDataRow(CustomerModel customer, int index) {
    return DataRow2(
      onTap: () {
        // String subtitle = visa.bodyData.subTitle?.toLowerCase() ?? "";
        // if (visa.bodyData.status?.toLowerCase() == "draft") {
        //   late String desc;
        //   if (subtitle.contains('passport')) {
        //     desc =
        //         "You have incomplete Passport. Do you want to continue from your latest draft ? ";
        //   } else if (subtitle.contains("arrival")) {
        //     desc =
        //         "You have incomplete Visa On Arrivale. Do you want to continue from your latest draft ? ";
        //   } else {
        //     desc =
        //         "You have incomplete Visa Application. Do you want to continue from your latest draft ? ";
        //   }
        //   AwesomeDialog(
        //     context: context,
        //     width: 400,
        //     dialogType: DialogType.info,
        //     title: "Draft Application",
        //     desc: desc,
        //     btnCancelText: "Delete",
        //     btnOkText: "Continue",
        //     btnCancelOnPress: () {
        //       context
        //           .read<AgentCubit>()
        //           .deleteApplicationAndPassport([visa.bodyData]);
        //     },
        //     btnOkOnPress: () {
        //       final status = visa.bodyData.status!;
        //       if (subtitle.toLowerCase().contains('passport')) {
        //         if (_isOpenDetail(status)) {
        //           AutoRouter.of(context).push(PassportDetailRoute(
        //               firebaseDocId: visa.bodyData.firebaseDocId!));
        //         } else {
        //           AutoRouter.of(context).push(
        //             PassportPersonalParticularRoute(
        //               firebaseDocId: visa.bodyData.firebaseDocId!,
        //             ),
        //           );
        //         }
        //       } else {
        //         if (_isOpenDetail(status)) {
        //           AutoRouter.of(context).push(ApplicationDetailRoute(
        //               firebaseDocId: visa.bodyData.firebaseDocId!));
        //         } else {
        //           AutoRouter.of(context).push(PersonalInformation1Route(
        //               firebaseDocId: visa.bodyData.firebaseDocId!));
        //         }
        //       }
        //     },
        //   ).show();
        // } else {
        //   final status = visa.bodyData.status!;
        //   if (subtitle.toLowerCase().contains('passport')) {
        //     if (_isOpenDetail(status)) {
        //       AutoRouter.of(context).push(PassportDetailRoute(
        //           firebaseDocId: visa.bodyData.firebaseDocId!));
        //     } else {
        //       AutoRouter.of(context).push(
        //         PassportPersonalParticularRoute(
        //           firebaseDocId: visa.bodyData.firebaseDocId!,
        //         ),
        //       );
        //     }
        //   } else {
        //     if (_isOpenDetail(status)) {
        //       AutoRouter.of(context).push(ApplicationDetailRoute(
        //           firebaseDocId: visa.bodyData.firebaseDocId!));
        //     } else {
        //       AutoRouter.of(context).push(PersonalInformation1Route(
        //           firebaseDocId: visa.bodyData.firebaseDocId!));
        //     }
        //   }
        // }
      },
      color: index % 2 == 0
          ? MaterialStatePropertyAll(Colors.blue[100])
          : const MaterialStatePropertyAll(Colors.white),
      cells: [
        DataCell(Text(customer.name ?? "")),
        DataCell(Text(customer.name ?? "")),
        DataCell(Text(customer.name ?? "")),
        DataCell(Text(customer.name ?? "")),
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