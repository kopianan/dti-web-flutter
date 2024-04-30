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
class QuestionnaireCorp1Page extends StatelessWidget {
  const QuestionnaireCorp1Page({super.key});

  final String title = "Company Establishment";

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
                                  "Expanding or starting company in Indonesia?",
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
                                              "Establishing a new company in Indonesia involves setting up a completely new legal entity within the country. This could be in the form of a limited liability company (PT), a foreign-owned company (PT PMA), or other business structures depending on the specific requirements and objectives.";

                                          //prepare doc
                                          String doc =
                                              '''- Passport copies of directors and shareholders.
- Proof of address for the new company's registered office in Indonesia.
- Business plan outlining the objectives and operations of the new company.
- Investment plan and capital injection details, if applicable.''';
                                          //prepare notes
                                          String notes =
                                              '''- Approval from the Indonesia Investment Coordinating Board (BKPM) may be required for foreign-owned companies (PT PMA).\n
- Compliance with Indonesian company law and regulations is mandatory for all new businesses operating in Indonesia. ''';

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
