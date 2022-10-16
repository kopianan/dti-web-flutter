import 'package:auto_route/auto_route.dart';
import 'package:dti_web/application/application_cubit.dart';
import 'package:dti_web/application/questionnaire_cubit.dart';
import 'package:dti_web/core/widgets/primary_button.dart';
import 'package:dti_web/domain/core/document_data_model.dart';
import 'package:dti_web/domain/questionnaire/raw_data.dart';
import 'package:dti_web/domain/questionnaire/result_model.dart';
import 'package:dti_web/injection.dart';
import 'package:dti_web/routes/app_router.dart';

import 'package:dti_web/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class QuestionnaireSummaryPage extends StatefulWidget {
  const QuestionnaireSummaryPage({super.key, required this.resultModel});
  static const String routeName = '/questionnaire-summary';
  final ResultModel? resultModel;

  @override
  State<QuestionnaireSummaryPage> createState() =>
      _QuestionnaireSummaryPageState();
}

class _QuestionnaireSummaryPageState extends State<QuestionnaireSummaryPage> {
  var listData = <DocumentDataModel>[];

  @override
  void initState() {
// "documents": "A2, A3, A6, C3, D1, D2, D7",

    final documents = widget.resultModel!.documents!.split(',');
    print(documents);
    List rawDocuments = documentRaw['document_list'];
    final fullData =
        rawDocuments.map((e) => DocumentDataModel.fromJson(e)).toList();
    print(fullData.length);
    for (var idDocument in documents) {
      try {
        listData.add(fullData
            .firstWhere((element) => element.id!.trim() == idDocument.trim()));
      } catch (e) {}
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QuestionnaireCubit, QuestionnaireState>(
      builder: (context, state) {
        return Scaffold(
            floatingActionButton: FloatingActionButton(onPressed: () {
              print(state.listQuestionnaire);
              print(state.importantNotes!);
              print(state.description!);
            }),
            body: Stack(
              children: [
                Container(
                    width: ScreenUtil().screenWidth,
                    height: ScreenUtil().screenHeight,
                    child: Image.network(
                      'https://picsum.photos/200/300',
                      fit: BoxFit.cover,
                    )),
                Container(
                  width: ScreenUtil().screenWidth / 2.2,
                  height: ScreenUtil().screenHeight,
                  padding:
                      REdgeInsets.symmetric(horizontal: 50.w, vertical: 20.h),
                  margin: EdgeInsets.symmetric(vertical: 40.h),
                  decoration: BoxDecoration(
                    color: Colors.white.withAlpha(180),
                    borderRadius:
                        BorderRadius.horizontal(right: Radius.circular(10)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.resultModel!.visaTitle!,
                        style: TextStyle(
                            fontSize: 30.sp,
                            color: AppColor.primaryColor,
                            fontWeight: FontWeight.bold),
                      ),
                      20.verticalSpace,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Description",
                            style: TextStyle(
                                fontSize: 16.sp, color: AppColor.primaryColor),
                          ),
                          10.verticalSpace,
                          Text(
                              "Indonesia immigration law details business visitor activities as the following (non-exhaustive): "),
                          5.verticalSpace,
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: state.description!
                                .map((e) => Text("- " + e))
                                .toList(),
                          ),
                          5.verticalSpace,
                          Text(
                              "The activities being performed on a Short Term Visit Pass should not involve a contract of service or a contract for service"),
                        ],
                      ),
                      20.verticalSpace,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Document Required",
                            style: TextStyle(
                                fontSize: 16.sp, color: AppColor.primaryColor),
                          ),
                          10.verticalSpace,
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: listData
                                .map((e) => Text("- " + e.header!))
                                .toList(),
                          ),
                        ],
                      ),
                      20.verticalSpace,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Important Notes",
                            style: TextStyle(
                                fontSize: 16.sp, color: AppColor.primaryColor),
                          ),
                          10.verticalSpace,
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: state.importantNotes!
                                .map((e) => Text("- " + e))
                                .toList(),
                          ),
                        ],
                      ),
                      20.verticalSpace,
                      SizedBox(
                        width: double.infinity,
                        child: PrimaryButton(
                            label: "Next",
                            onClick: () {
                              context
                                  .read<ApplicationCubit>()
                                  .updateData(listData);
                              AutoRouter.of(context)
                                  .push(PersonalInformation1Route());
                            }),
                      )
                    ],
                  ),
                )
              ],
            ));
      },
    );
  }
}
