import 'package:auto_route/auto_route.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:dti_web/application/admin/admin_data/admin_data_cubit.dart';
import 'package:dti_web/application/admin/cubit/admin_cubit.dart';
import 'package:dti_web/application/app_list/app_list_cubit.dart';
import 'package:dti_web/application/customer/cubit/customer_cubit.dart';
import 'package:dti_web/domain/core/customer_model.dart';
import 'package:dti_web/injection.dart';
import 'package:dti_web/presentation/corporate/widgets/table_page_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

@RoutePage()
class AdminCustomerPage extends StatefulWidget {
  const AdminCustomerPage({super.key});

  @override
  State<AdminCustomerPage> createState() => _AdminCustomerPageState();
}

class _AdminCustomerPageState extends State<AdminCustomerPage> {
  @override
  void initState() {
    context.read<CustomerCubit>().getAllCustomer();
    super.initState();
  }

  var controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlocListener<CustomerCubit, CustomerState>(
      listener: (context, customerState) {
        customerState.maybeMap(
          orElse: () {
            EasyLoading.dismiss();
          },
          getAllCustomer: (e) {
            EasyLoading.dismiss();
            context.read<AdminDataCubit>().setCustomerData(e.customers);
          },
          loading: (e) {
            EasyLoading.show();
          },
        );
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10.h),
            BlocBuilder<AdminDataCubit, AdminDataState>(
              builder: (context, state) {
                return TablePageHeader(
                  onRefresh: () {
                    context.read<CustomerCubit>().getAllCustomer();
                  },
                  controller: controller,
                  label: "Customer",
                  onDelete: () {
                    context.read<AdminDataCubit>().searchKeywoard("");
                    controller.clear();
                  },
                  onSearch: (e) {
                    context.read<AdminDataCubit>().searchKeywoard(e);
                  },
                );
              },
            ),
            const SizedBox(height: 20),
            Expanded(
              child: SizedBox(
                width: double.infinity,
                child: BlocBuilder<AdminDataCubit, AdminDataState>(
                  builder: (context, state) {
                    return DataTable2(
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
                        applicationHeaderColumn(
                          label: "Name",
                        ),
                        applicationHeaderColumn(
                          label: "Phone Number",
                        ),
                        applicationHeaderColumn(label: "Total Visa"),
                        applicationHeaderColumn(label: "Contact", width: 400),
                      ],
                      rows: state
                          .getCustomers()
                          .map((value) => applicationDataRow(
                              value, state.getCustomers().indexOf(value)))
                          .toList(),
                    );
                  },
                ),
              ),
            ),
            SizedBox(height: 30.h),
          ],
        ),
      ),
    ));
  }

  DataRow applicationDataRow(CustomerModel customer, int index) {
    return DataRow2(
      onTap: () {},
      color: index % 2 == 0
          ? MaterialStatePropertyAll(Colors.blue[100])
          : const MaterialStatePropertyAll(Colors.white),
      cells: [
        DataCell(Text(customer.name)),
        DataCell(Text(customer.countryCode + customer.mobileNumber)),
        DataCell(Text(customer.totalVisa.toString())),
        DataCell(BlocProvider(
          create: (context) => getIt<AdminCubit>(),
          child: BlocBuilder<AdminCubit, AdminState>(
            builder: (context, state) {
              return Row(
                children: [
                  SizedBox(
                    width: 30,
                    height: 30,
                    child: InkWell(
                      child: Image.asset(
                        'assets/icons/email.png',
                      ),
                      onTap: () {
                        context.read<AdminCubit>().sendEmail(
                            "DoortToID", customer.email,
                            sbjct: "DoorToID");
                      },
                    ),
                  ),
                  const SizedBox(width: 10),
                  Visibility(
                    visible: customer.mobileNumber.isNotEmpty &&
                        customer.countryCode.isNotEmpty,
                    child: SizedBox(
                      width: 30,
                      height: 30,
                      child: InkWell(
                        child: Image.asset(
                          'assets/icons/whatsapp.png',
                        ),
                        onTap: () async {
                          if (customer.mobileNumber.isNotEmpty &&
                              customer.countryCode.isNotEmpty) {
                            final phone =
                                customer.countryCode.replaceFirst('+', '') +
                                    customer.mobileNumber;
                            await launchUrl(Uri.parse(
                                "https://api.whatsapp.com/send/?phone=$phone"));
                          }
                        },
                      ),
                    ),
                  )
                ],
              );
            },
          ),
        )),
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
            fontSize: 20.0,
          ),
        ),
      ),
    );
  }
}
