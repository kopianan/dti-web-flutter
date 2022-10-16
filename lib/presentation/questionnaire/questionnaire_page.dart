import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:dti_web/application/questionnaire_cubit.dart';
import 'package:dti_web/domain/questionnaire/questionnaire_model.dart';
import 'package:dti_web/injection.dart';
import 'package:dti_web/routes/app_router.dart';
import 'package:dti_web/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class QuestionnairePage extends StatefulWidget {
  const QuestionnairePage({super.key, this.question});
  static const String routeName = '/questionnaire';

  final List<QuestionnaireModel>? question;

  @override
  State<QuestionnairePage> createState() => _QuestionnairePageState();
}

class _QuestionnairePageState extends State<QuestionnairePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QuestionnaireCubit, QuestionnaireState>(
      builder: (context, state) {
        return Scaffold(
            floatingActionButton: FloatingActionButton(onPressed: () {
              print(state.listQuestionnaire!.length);
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
                        "Do you Have Stay Permit in Indonesia?",
                        style: TextStyle(
                            fontSize: 30.sp,
                            color: AppColor.primaryColor,
                            fontWeight: FontWeight.bold),
                      ),
                      20.verticalSpace,
                      Expanded(
                        child: ListView(
                          shrinkWrap: true,
                          children: widget.question!
                              .map((e) => InkWell(
                                    onTap: () async {
                                      if (e.subQuestionnaire == null ||
                                          e.subQuestionnaire!.isEmpty) {
                                        if (e.results!.contactUs == true) {
                                          //SHOW CONTACT

                                        } else {
                                          context
                                              .read<QuestionnaireCubit>()
                                              .addQuestionnaireToList(e);
                                          context
                                              .read<QuestionnaireCubit>()
                                              .updateStateNotesAndDescription();

                                          AutoRouter.of(context)
                                              .push(QuestionnaireSummaryRoute(
                                            resultModel: e.results,
                                          ));
                                          //"results": {
                                          //     "visaPrice": {
                                          //         "usd": 0
                                          //     },
                                          //     "documents": "A2, A3, A6, C2, C3, D7",
                                          //     "visaEntry": "Multiple Entry Visa",
                                          //     "visaSubTitle": "Double Position",
                                          //     "visaTitle": "Permanent Stay Permit / ITAP"

                                          // },
                                        }
                                      } else {
                                        context
                                            .read<QuestionnaireCubit>()
                                            .addQuestionnaireToList(e);
                                        context
                                            .read<QuestionnaireCubit>()
                                            .updateStateNotesAndDescription();
                                        log(e.toString());
                                        AutoRouter.of(context).push(
                                          QuestionnaireRoute(
                                            question: e.subQuestionnaire,
                                          ),
                                        );
                                      }
                                    },
                                    child: Container(
                                        clipBehavior: Clip.hardEdge,
                                        margin: REdgeInsets.only(bottom: 15),
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Colors.white,
                                            boxShadow: [
                                              BoxShadow(
                                                  offset: Offset(2, -2),
                                                  blurRadius: 10,
                                                  spreadRadius: 1,
                                                  color: Colors.grey)
                                            ]),
                                        child: Column(
                                          children: [
                                            Container(
                                                alignment: Alignment.center,
                                                width: double.infinity,
                                                color: AppColor.primaryColor,
                                                padding: EdgeInsets.all(10),
                                                child: Text(
                                                  e.header!,
                                                  style: TextStyle(
                                                      fontSize: 17.sp,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.white),
                                                )),
                                            Container(
                                                padding: EdgeInsets.symmetric(
                                                    vertical: 20.h,
                                                    horizontal: 10.w),
                                                child: Text(e.body!)),
                                            Container(
                                                alignment: Alignment.center,
                                                width: double.infinity,
                                                color: Colors.grey[300],
                                                padding: EdgeInsets.all(10),
                                                child: Text(
                                                  e.footer!,
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.black),
                                                )),
                                          ],
                                        )),
                                  ))
                              .toList(),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ));
      },
    );
  }
}
