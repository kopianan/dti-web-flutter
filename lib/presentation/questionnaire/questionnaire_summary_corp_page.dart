import 'package:auto_route/auto_route.dart';
import 'package:dti_web/application/application_cubit.dart';
import 'package:dti_web/application/dashboard/dashboard_cubit.dart';
import 'package:dti_web/application/questionnaire_cubit.dart';
import 'package:dti_web/application/update_application/update_application_cubit.dart';
import 'package:dti_web/core/widgets/primary_button.dart';
import 'package:dti_web/domain/core/corp_enum.dart';
import 'package:dti_web/domain/core/document_data_model.dart';
import 'package:dti_web/domain/core/visa_application_corp.dart';
import 'package:dti_web/domain/questionnaire/questionnaire_model.dart';
import 'package:dti_web/domain/questionnaire/raw_data.dart';
import 'package:dti_web/domain/questionnaire/result_model.dart';
import 'package:dti_web/injection.dart';
import 'package:dti_web/presentation/applications/widgets/message_button_with_icon.dart';
import 'package:dti_web/presentation/questionnaire/widget/custom_second_header.dart';
import 'package:dti_web/routes/app_router.dart';

import 'package:dti_web/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

@RoutePage()
class QuestionnaireSummaryCorpPage extends StatefulWidget {
  static const String routeName = '/questionnaire-corp-summary';
  const QuestionnaireSummaryCorpPage({
    super.key,
    required this.questionnare,
    required this.desc,
    required this.title,
    required this.document,
    required this.notes,
    required this.corpEnum,
  });

  final QuestionnaireModel questionnare;
  final String title;
  final String desc;
  final String notes;
  final String document;
  final CorpEnum corpEnum;

  @override
  State<QuestionnaireSummaryCorpPage> createState() =>
      _QuestionnaireSummaryCorpPageState();
}

class _QuestionnaireSummaryCorpPageState
    extends State<QuestionnaireSummaryCorpPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<UpdateApplicationCubit>(),
      child: BlocConsumer<UpdateApplicationCubit, UpdateApplicationState>(
        listener: (context, state) {
          state.maybeMap(
            orElse: () {
              EasyLoading.dismiss();
            },
            onCreateCorpApplication: (e) {
              EasyLoading.dismiss();

              if (widget.corpEnum == CorpEnum.company) {
                context.router.push(ApplicationCorpFormCompanyRoute(
                    firebaseDocId: e.firebaseDocId));
              } else {
                context.router.push(ApplicationCorpFormForeignerRoute(
                    firebaseDocId: e.firebaseDocId));
              }
            },
            onLoading: (e) {
              EasyLoading.show();
            },
          );
        },
        builder: (context, state) {
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
                          AutoRouter.of(context).pop();
                        },
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.title,
                              style: TextStyle(
                                  fontSize: 30.sp,
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
                                margin:
                                    EdgeInsets.only(right: 30.w, left: 30.w),
                                padding: const EdgeInsets.only(bottom: 50),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    20.verticalSpace,
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
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
                                          widget.desc,
                                          style: TextStyle(fontSize: 16.sp),
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
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18.sp,
                                              color: AppColor.primaryColor),
                                        ),
                                        10.verticalSpace,
                                        Text(
                                          widget.document,
                                          style: TextStyle(fontSize: 16.sp),
                                        )
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
                                              fontWeight: FontWeight.bold,
                                              color: AppColor.primaryColor),
                                        ),
                                        10.verticalSpace,
                                        Text(
                                          widget.notes,
                                          style: TextStyle(fontSize: 16.sp),
                                        )
                                      ],
                                    ),
                                    20.verticalSpace,
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      PrimaryButton(
                        onClick: () {
                          final current = VisaApplicationCorp(
                            title: checkTitle(),
                            subTitle: checkSubtitle(),
                            entry: "",
                            price: 0,
                            currency: "Rp",
                            status: "Draft",
                          );
                          context
                              .read<UpdateApplicationCubit>()
                              .createCorporateApplication(current);
                        },
                        label: "Continue",
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
      ),
    );
  }

  String checkSubtitle() {
    if (widget.corpEnum == CorpEnum.foreigner) {
      if (widget.questionnare.header?.toLowerCase().contains("no") ?? false) {
        return "Do Not Have Agent";
      } else {
        return "Have Agent";
      }
    } else {
      return widget.questionnare.header ?? "";
    }
  }

  String checkTitle() {
    if (widget.corpEnum == CorpEnum.foreigner) {
      return "Foreigner Work Permit";
    } else {
      return "Company Establishment";
    }
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
