import 'package:auto_route/auto_route.dart';
import 'package:dti_web/application/application_cubit.dart';
import 'package:dti_web/application/dashboard/dashboard_cubit.dart';
import 'package:dti_web/application/questionnaire_cubit.dart';
import 'package:dti_web/application/update_application/update_application_cubit.dart';
import 'package:dti_web/core/widgets/primary_button.dart';
import 'package:dti_web/domain/core/document_data_model.dart';
import 'package:dti_web/domain/questionnaire/raw_data.dart';
import 'package:dti_web/domain/questionnaire/result_model.dart';
import 'package:dti_web/injection.dart';
import 'package:dti_web/presentation/questionnaire/widget/custom_second_header.dart';
import 'package:dti_web/routes/app_router.dart';

import 'package:dti_web/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
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

    List rawDocuments = documentRaw['document_list'];
    final fullData =
        rawDocuments.map((e) => DocumentDataModel.fromJson(e)).toList();

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
    return BlocProvider(
        create: (context) => getIt<UpdateApplicationCubit>(),
        child: BlocListener<UpdateApplicationCubit, UpdateApplicationState>(
          listener: (context, state) {
            state.maybeMap(
                orElse: () {},
                onCreateApplication: (value) {
                  context
                      .read<ApplicationCubit>()
                      .setupApplication(value.visaApps);
                  getIt<DashboardCubit>().getLastPassportAndApplicationData();

                  AutoRouter.of(context).navigate(PersonalInformation1Route(
                      firebaseDocId: value.visaApps.firebaseDocId!));
                });
          },
          child: BlocBuilder<UpdateApplicationCubit, UpdateApplicationState>(
            builder: (context, upState) {
              return BlocBuilder<QuestionnaireCubit, QuestionnaireState>(
                builder: (context, qState) {
                  return Scaffold(
                      body: Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: ScreenUtil().screenHeight,
                          margin: EdgeInsets.only(
                            top: 40.h,
                            bottom: 40.h,
                            right: 10.w,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white.withAlpha(230),
                            borderRadius: const BorderRadius.horizontal(
                                right: Radius.circular(10)),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomSecondHeader(
                                onBack: () {
                                  context
                                      .read<QuestionnaireCubit>()
                                      .removeLastQuestionnaire();
                                  AutoRouter.of(context).pop();
                                },
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      widget.resultModel?.visaTitle ?? "",
                                      style: TextStyle(
                                          fontSize: 30.sp,
                                          color: AppColor.primaryColor,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      widget.resultModel?.visaSubTitle ?? "",
                                      style: TextStyle(
                                          fontSize: 20.sp,
                                          color: AppColor.primaryColor,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Stack(
                                  children: [
                                    SingleChildScrollView(
                                      child: Container(
                                        margin: EdgeInsets.only(
                                            right: 30.w, left: 30.w),
                                        padding:
                                            const EdgeInsets.only(bottom: 50),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            20.verticalSpace,
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Description",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 18.sp,
                                                      color: AppColor
                                                          .primaryColor),
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
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: context
                                                      .read<
                                                          QuestionnaireCubit>()
                                                      .getDescriptions()
                                                      .map((e) => Text(
                                                            "- $e",
                                                            style: TextStyle(
                                                                fontSize: 16.sp,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
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
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Document Required",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 18.sp,
                                                      color: AppColor
                                                          .primaryColor),
                                                ),
                                                10.verticalSpace,
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: listData
                                                      .map((e) => Text(
                                                            "- ${e.header!}",
                                                            style: TextStyle(
                                                                fontSize:
                                                                    16.sp),
                                                          ))
                                                      .toList(),
                                                ),
                                              ],
                                            ),
                                            20.verticalSpace,
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Important Notes",
                                                  style: TextStyle(
                                                      fontSize: 18.sp,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: AppColor
                                                          .primaryColor),
                                                ),
                                                10.verticalSpace,
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: context
                                                      .read<
                                                          QuestionnaireCubit>()
                                                      .getImportant()
                                                      .map((e) => Text(
                                                            "- $e",
                                                            style: TextStyle(
                                                                fontSize:
                                                                    16.sp),
                                                          ))
                                                      .toList(),
                                                ),
                                              ],
                                            ),
                                            20.verticalSpace,
                                          ],
                                        ),
                                      ),
                                    ),
                                    ContinuerButton(
                                      listData: listData,
                                      qState: qState,
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.all(100.sp),
                          child: Image.asset(
                            'assets/images/bg/bg_visa1.webp',
                          ),
                        ),
                      )
                    ],
                  ));
                },
              );
            },
          ),
        ));
  }
}

class ContinuerButton extends StatelessWidget {
  const ContinuerButton({
    Key? key,
    required this.listData,
    required this.qState,
  }) : super(key: key);

  final List<DocumentDataModel> listData;
  final QuestionnaireState qState;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
          color: Colors.white,
          width: double.infinity,
          height: 45.h,
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: BlocBuilder<UpdateApplicationCubit, UpdateApplicationState>(
            builder: (context, state) {
              return state.maybeMap(
                orElse: () {
                  return PrimaryButton(
                      label: "Continue",
                      labelStyle: TextStyle(fontSize: 15.sp),
                      onClick: () {
                        context.read<ApplicationCubit>().updateData(listData);
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
              );
            },
          )),
    );
  }
}
