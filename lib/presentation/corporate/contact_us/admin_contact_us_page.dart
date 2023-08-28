import 'package:auto_route/auto_route.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:dti_web/application/admin/cubit/admin_cubit.dart';
import 'package:dti_web/application/app_list/app_list_cubit.dart';
import 'package:dti_web/application/contact_us/cubit/contact_us_cubit.dart';
import 'package:dti_web/domain/contact_us/contact_us_model.dart';
import 'package:dti_web/injection.dart';
import 'package:dti_web/utils/date_converter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class AdminContactUsPage extends StatefulWidget {
  const AdminContactUsPage({super.key});

  @override
  State<AdminContactUsPage> createState() => _AdminContactUsPageState();
}

class _AdminContactUsPageState extends State<AdminContactUsPage> {
  @override
  void initState() {
    context.read<ContactUsCubit>().getAllCustomer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<ContactUsCubit, ContactUsState>(
        builder: (context, feedbackState) {
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
                      "Contact Us",
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
                feedbackState.maybeMap(orElse: () {
                  return const SizedBox();
                }, getAllContactUsData: (e) {
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
                          applicationHeaderColumn(label: "Name"),
                          applicationHeaderColumn(
                              label: "Created Date", width: 150),
                          applicationHeaderColumn(label: "Email"),
                          applicationHeaderColumn(label: "Title", width: 400),
                          applicationHeaderColumn(label: "Contact", width: 400),
                        ],
                        rows: e.contacts
                            .map((value) => applicationDataRow(
                                value, e.contacts.indexOf(value)))
                            .toList(),
                      ),
                    ),
                  );
                }),
              ],
            ),
          );
        },
      ),
    );
  }

  DataRow applicationDataRow(ContactUsModel contact, int index) {
    return DataRow2(
      onTap: () {},
      color: index % 2 == 0
          ? MaterialStatePropertyAll(Colors.blue[100])
          : const MaterialStatePropertyAll(Colors.white),
      cells: [
        DataCell(Text(contact.name)),
        DataCell(Text(DateConverter.convertDateDefault(
            contact.createdDate.toIso8601String()))),
        DataCell(Text(contact.email.toString())),
        DataCell(Text(contact.title)),
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
                        context
                            .read<AdminCubit>()
                            .sendEmail(contact.title, contact.email);
                      },
                    ),
                  ),
                  const SizedBox(width: 10),
                  SizedBox(
                    width: 30,
                    height: 30,
                    child: InkWell(
                      child: Image.asset(
                        'assets/icons/whatsapp.png',
                      ),
                      onTap: () {},
                    ),
                  ),
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
            fontSize: 16.0,
          ),
        ),
      ),
    );
  }
}
