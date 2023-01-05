import 'package:auto_route/auto_route.dart';
import 'package:dti_web/application/application_cubit.dart';
import 'package:dti_web/application/questionnaire_cubit.dart';
import 'package:dti_web/application/update_application/update_application_cubit.dart';
import 'package:dti_web/core/widgets/primary_button.dart';
import 'package:dti_web/domain/core/document_data_model.dart';
import 'package:dti_web/domain/questionnaire/raw_data.dart';
import 'package:dti_web/domain/questionnaire/result_model.dart';
import 'package:dti_web/injection.dart';
import 'package:dti_web/presentation/dashboard/pages/dashboard_page.dart';
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
    return BlocBuilder<UpdateApplicationCubit, UpdateApplicationState>(
      builder: (context, upState) {
        return BlocBuilder<QuestionnaireCubit, QuestionnaireState>(
          builder: (context, qState) {
            return Scaffold(
                body: Stack(
              children: [
                Container(
                    width: ScreenUtil().screenWidth,
                    height: ScreenUtil().screenHeight,
                    child: Image.asset(
                      'assets/images/bg/bg_visa1.png',
                      fit: BoxFit.cover,
                    )),
                Container(
                  width: ScreenUtil().screenWidth / 2.2,
                  height: ScreenUtil().screenHeight,
                  padding:
                      REdgeInsets.only(left: 50.w, top: 20.h, bottom: 20.h),
                  margin: EdgeInsets.only(top: 40.h, bottom: 40.h, right: 10.w),
                  decoration: BoxDecoration(
                    color: Colors.white.withAlpha(230),
                    borderRadius:
                        BorderRadius.horizontal(right: Radius.circular(10)),
                  ),
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.only(right: 10.w),
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
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.sp,
                                    color: AppColor.primaryColor),
                              ),
                              10.verticalSpace,
                              Text(
                                "Indonesia immigration law details business visitor activities as the following (non-exhaustive): ",
                                style: TextStyle(
                                  fontSize: 16.sp,
                                ),
                              ),
                              10.verticalSpace,
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: qState.description!
                                    .map((e) => Text(
                                          "- " + e,
                                          style: TextStyle(
                                              fontSize: 16.sp,
                                              fontWeight: FontWeight.bold),
                                        ))
                                    .toList(),
                              ),
                              10.verticalSpace,
                              Text(
                                "The activities being performed on a Short Term Visit Pass should not involve a contract of service or a contract for service",
                                style: TextStyle(
                                  fontSize: 16.sp,
                                ),
                              ),
                            ],
                          ),
                          20.verticalSpace,
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Document Required",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.sp,
                                    color: AppColor.primaryColor),
                              ),
                              10.verticalSpace,
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: listData
                                    .map((e) => Text(
                                          "- " + e.header!,
                                          style: TextStyle(fontSize: 16.sp),
                                        ))
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
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.bold,
                                    color: AppColor.primaryColor),
                              ),
                              10.verticalSpace,
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: qState.importantNotes!
                                    .map((e) => Text(
                                          "- " + e,
                                          style: TextStyle(fontSize: 16.sp),
                                        ))
                                    .toList(),
                              ),
                            ],
                          ),
                          20.verticalSpace,
                          MultiBlocListener(
                            listeners: [
                              BlocListener<ApplicationCubit, ApplicationState>(
                                listener: (context, state) {
                                  // TODO: implement listener
                                },
                              ),
                              BlocListener<UpdateApplicationCubit,
                                  UpdateApplicationState>(
                                listener: (context, state) {
                                  state.maybeMap(
                                      orElse: () {},
                                      onCreateApplication: (value) {
                                        context
                                            .read<ApplicationCubit>()
                                            .setupApplication(value.visaApps);

                                        AutoRouter.of(context).replaceAll([
                                          DashboardRoute(),
                                          PersonalInformation1Route(
                                              firebaseDocId:
                                                  value.visaApps.firebaseDocId!)
                                        ]);
                                      });
                                },
                              ),
                            ],
                            child: Container(),
                          ),
                          SizedBox(
                            width: double.infinity,
                            height: 45.h,
                            child: upState.maybeMap(
                              orElse: () {
                                return PrimaryButton(
                                    label: "Next",
                                    labelStyle: TextStyle(fontSize: 15.sp),
                                    onClick: () {
                                      context
                                          .read<ApplicationCubit>()
                                          .updateData(listData);
                                      context
                                          .read<UpdateApplicationCubit>()
                                          .createUserApplication(
                                              qState.listQuestionnaire!.last);
                                    });
                              },
                              onLoading: (e) {
                                return PrimaryButton(
                                  labelStyle: TextStyle(fontSize: 15.sp),
                                  height: 45.h,
                                  onClick: () {},
                                  label: "Loading . . .",
                                );
                              },
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ));
          },
        );
      },
    );
  }
}
