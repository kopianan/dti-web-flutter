import 'package:auto_route/auto_route.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:dti_web/application/other/other_cubit.dart';
import 'package:dti_web/application/questionnaire_cubit.dart';
import 'package:dti_web/core/storage.dart';
import 'package:dti_web/domain/core/corp_enum.dart';
import 'package:dti_web/domain/questionnaire/questionnaire_model.dart';
import 'package:dti_web/injection.dart';
import 'package:dti_web/presentation/questionnaire/questionnaire_summary_corp_page.dart';
import 'package:dti_web/presentation/questionnaire/widget/custom_second_header.dart';
import 'package:dti_web/presentation/questionnaire/widget/questionnaire_item_card.dart';
import 'package:dti_web/routes/app_router.dart';
import 'package:dti_web/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class QuestionnaireCorp2Page extends StatelessWidget {
  const QuestionnaireCorp2Page({super.key});

  final String title = "Foreigner Work Permit";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlocProvider(
            create: (context) =>
                getIt<OtherCubit>()..getQuestionnaireCorpList(CorpEnum.company),
            child: BlocListener<OtherCubit, OtherState>(
                listener: (context, state) {
              state.maybeMap(
                orElse: () {
                  EasyLoading.dismiss();
                },
                loading: (e) {
                  EasyLoading.show(
                    dismissOnTap: true,
                    maskType: EasyLoadingMaskType.black,
                  );
                },
              );
            }, child: BlocBuilder<OtherCubit, OtherState>(
              builder: (context, otherState) {
                return otherState.maybeMap(
                  orElse: () {
                    return Container();
                  },
                  getCorpQuestionnaire: (value) {
                    return Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: ScreenUtil().screenHeight,
                            padding: REdgeInsets.symmetric(
                              horizontal: 30.w,
                            ),
                            margin: EdgeInsets.symmetric(vertical: 40.h),
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.horizontal(
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
                                10.verticalSpace,
                                Text(
                                  "Do you have a work permit agent for Indonesia?",
                                  style: TextStyle(
                                      fontSize: 30.sp,
                                      color: AppColor.primaryColor,
                                      fontWeight: FontWeight.bold),
                                ),
                                20.verticalSpace,
                                Expanded(
                                  child: ListView(
                                    shrinkWrap: true,
                                    children: value.questionnaire.map((e) {
                                      return InkWell(
                                        onTap: () {
                                          //prepare desc
                                          String desc =
                                              "At Doortoid, we specialize in facilitating the entire process of obtaining work permits in Indonesia. From acquiring the RPTKA (Foreign Worker Placement Plan) to securing Notifications (Work Permits), eVisas, ITAS (Stay Permits), and MERP (Re-entry Permits), we ensure a seamless experience. Our extensive experience and dedicated relationship management guarantee not only successful permit acquisition but also diligent tracking of permit validity, with timely reminders for extensions. We assure you of our expertise and commitment to your company's needs.";

                                          //prepare doc
                                          String doc =
                                              '''- Company documents, such as the incorporation document, business license, and tax number
- The company’s annual reports on number of local and international employees (WLKP - Wajib Lapor Ketenagakerjaan Perusahaan)
- Copy of passport
- Proof of education and experience
- A copy of their sponsor’s identity card (KTP)''';
                                          //prepare notes
                                          String notes =
                                              '''If you're unsure about the required documents or process, don't worry. Feel free to contact us for assistance. We're here to ensure a smooth experience for you. ''';

                                          context.router.push(
                                              QuestionnaireSummaryCorpRoute(
                                            title: title,
                                            desc: desc,
                                            document: doc,
                                            notes: notes,
                                            questionnare: e,
                                            corpEnum: CorpEnum.company,
                                          ));
                                        },
                                        child: QuestionnaireItemCard(
                                            questionnaireModel: e),
                                      );
                                    }).toList(),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 50.w),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.all(100.sp),
                            child: Image.asset(
                              'assets/images/bg/bg_visa1.webp',
                            ),
                          ),
                        )
                      ],
                    );
                  },
                );
              },
            ))));
  }
}
