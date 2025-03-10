import 'package:auto_route/auto_route.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:dti_web/application/admin/admin_data/admin_data_cubit.dart';
import 'package:dti_web/application/admin_application/cubit/admin_application_cubit.dart';
import 'package:dti_web/domain/core/simple_visa_model.dart';
import 'package:dti_web/presentation/corporate/widgets/table_page_header.dart';
import 'package:dti_web/routes/app_router.dart';
import 'package:dti_web/utils/date_converter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class AdminCorpApplicationDraftPage extends StatefulWidget {
  const AdminCorpApplicationDraftPage({super.key});

  @override
  State<AdminCorpApplicationDraftPage> createState() =>
      _AdmiCorpnApplicationPageState();
}

class _AdmiCorpnApplicationPageState
    extends State<AdminCorpApplicationDraftPage> {
  @override
  void initState() {
    context.read<AdminApplicationCubit>().getAllUserCorpVisaDraft();
    super.initState();
  }

  var controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocListener<AdminApplicationCubit, AdminApplicationState>(
        listener: (context, state) {
          state.maybeMap(
            orElse: () {
              EasyLoading.dismiss();
            },
            getAllUserCorpVisaDraft: (e) {
              EasyLoading.dismiss();
              context.read<AdminDataCubit>().setApplicationCorpDraftData(e.visas);
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
                      context
                          .read<AdminApplicationCubit>()
                          .getAllUserCorpVisaDraft();
                    },
                    controller: controller,
                    label: "Corporate Application",
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
                        columns: [
                          applicationHeaderColumn(label: "Name"),
                          applicationHeaderColumn(label: "Created Date"),
                          applicationHeaderColumn(label: "Title"),
                          applicationHeaderColumn(label: "Subtitle"),
                          applicationHeaderColumn(label: "Status", width: 150),
                          applicationHeaderColumn(label: "Reference Number"),
                        ],
                        rows: adminState
                            .getListCorpApplicationDraft()
                            .map((value) => applicationDataRow(
                                value,
                                adminState
                                    .getListCorpApplicationDraft()
                                    .indexOf(value)))
                            .toList(),
                      );
                    },
                  ),
                ),
              ),
              SizedBox(height: 30.h),
            ],
          ),
        ));
  }

  DataRow applicationDataRow(SimpleVisaModel visa, int index) {
    return DataRow2(
      onTap: () {
        final id = visa.firebaseDocId;
        if (id != null) {
          context.router.push(
            ApplicationCorpDetailRoute(
              firebaseDocId: id,
            ),
          );
        }
      },
      color: index % 2 == 0
          ? WidgetStatePropertyAll(Colors.blue[100])
          : const WidgetStatePropertyAll(Colors.white),
      cells: [
        DataCell(Text(visa.userName ?? "")),
        DataCell(Text(DateConverter.convertDateDefault(
            visa.createdDate?.toIso8601String()))),
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
