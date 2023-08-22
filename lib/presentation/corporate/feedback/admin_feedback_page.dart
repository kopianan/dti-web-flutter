import 'package:auto_route/auto_route.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:dti_web/application/app_list/app_list_cubit.dart';
import 'package:dti_web/application/feedback/cubit/feedback_cubit.dart';
import 'package:dti_web/domain/feedback/feedback_model.dart';
import 'package:dti_web/injection.dart';
import 'package:dti_web/utils/date_converter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class AdminFeedbackPage extends StatefulWidget {
  const AdminFeedbackPage({super.key});

  @override
  State<AdminFeedbackPage> createState() => _AdminFeedbackPageState();
}

class _AdminFeedbackPageState extends State<AdminFeedbackPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<FeedbackCubit, FeedbackState>(
        bloc: getIt<FeedbackCubit>()..getAllCustomer(),
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
                      "Feedback",
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
                }, getAllFeedback: (e) {
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
                          applicationHeaderColumn(label: "Submitted Date", width: 150),
                          applicationHeaderColumn(label: "Rating", width: 80),
                          applicationHeaderColumn(label: "Comment", width: 400),
                        ],
                        rows: e.feedbacks
                            .map((value) => applicationDataRow(
                                value, e.feedbacks.indexOf(value)))
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

  DataRow applicationDataRow(FeedbackModel feedback, int index) {
    return DataRow2(
      onTap: () {},
      color: index % 2 == 0
          ? MaterialStatePropertyAll(Colors.blue[100])
          : const MaterialStatePropertyAll(Colors.white),
      cells: [
        DataCell(Text(feedback.name)),
        DataCell(Text(DateConverter.convertDateDefault(
            feedback.createdDate.toIso8601String()))),
        DataCell(Text(feedback.rating.toString())),
        DataCell(Text(feedback.comment)),
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
