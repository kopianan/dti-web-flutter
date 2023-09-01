import 'package:auto_route/auto_route.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:dti_web/application/admin/admin_data/admin_data_cubit.dart';
import 'package:dti_web/application/admin/cubit/admin_cubit.dart';
import 'package:dti_web/application/app_list/app_list_cubit.dart';
import 'package:dti_web/application/contact_us/cubit/contact_us_cubit.dart';
import 'package:dti_web/application/customer/cubit/customer_cubit.dart';
import 'package:dti_web/domain/contact_us/contact_us_model.dart';
import 'package:dti_web/injection.dart';
import 'package:dti_web/presentation/corporate/widgets/table_page_header.dart';
import 'package:dti_web/utils/date_converter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

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

  var controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<ContactUsCubit, ContactUsState>(
        listener: (context, state) {
          state.maybeMap(
            orElse: () {
              EasyLoading.dismiss();
            },
            getAllContactUsData: (e) {
              EasyLoading.dismiss();
              context.read<AdminDataCubit>().setContactUsData(e.contacts);
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
                      context.read<ContactUsCubit>().getAllCustomer();
                    },
                    controller: controller,
                    label: "Contact Us",
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
                        builder: (context, adminState) {
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
                          applicationHeaderColumn(label: "Name"),
                          applicationHeaderColumn(
                              label: "Created Date", width: 150),
                          applicationHeaderColumn(label: "Email"),
                          applicationHeaderColumn(label: "Title", width: 300),
                          applicationHeaderColumn(label: "Contact", width: 400),
                        ],
                        rows: adminState
                            .getContactUs()
                            .map((value) => applicationDataRow(value,
                                adminState.getContactUs().indexOf(value)))
                            .toList(),
                      );
                    })),
              ),
              SizedBox(height: 30.h),
            ],
          ),
        ),
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
                  BlocProvider(
                    create: (context) => getIt<CustomerCubit>(),
                    child: BlocConsumer<CustomerCubit, CustomerState>(
                      listener: (context, state) {
                        state.maybeMap(orElse: () {
                          EasyLoading.dismiss();
                        }, loading: (e) {
                          EasyLoading.show();
                        }, getSingleCustomer: (e) async {
                          //generate link
                          EasyLoading.dismiss();
                          final phone =
                              e.user.countryCode.replaceFirst('+', '') +
                                  e.user.mobileNumber;
                          print(phone);
                          await launchUrl(Uri.parse(
                              "https://api.whatsapp.com/send/?phone=$phone"));
                        });
                      },
                      builder: (context, state) {
                        return SizedBox(
                          width: 30,
                          height: 30,
                          child: InkWell(
                            child: Image.asset(
                              'assets/icons/whatsapp.png',
                            ),
                            onTap: () {
                              //get user data
                              context
                                  .read<CustomerCubit>()
                                  .getUserById(contact.createdBy);
                            },
                          ),
                        );
                      },
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
