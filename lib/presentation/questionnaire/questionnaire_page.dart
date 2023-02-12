import 'package:auto_route/auto_route.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:dti_web/application/other/other_cubit.dart';
import 'package:dti_web/application/questionnaire_cubit.dart';
import 'package:dti_web/core/storage.dart';
import 'package:dti_web/domain/questionnaire/questionnaire_model.dart';
import 'package:dti_web/injection.dart';
import 'package:dti_web/presentation/questionnaire/widget/custom_second_header.dart';
import 'package:dti_web/routes/app_router.dart';
import 'package:dti_web/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class QuestionnairePage extends StatefulWidget {
  const QuestionnairePage(
      {super.key,
      this.question,
      this.title,
      this.subtitle,
      this.boolIsInit = false});
  static const String routeName = '/questionnaire';

  final List<QuestionnaireModel>? question;
  final String? title;
  final String? subtitle;
  final bool boolIsInit;
  @override
  State<QuestionnairePage> createState() => _QuestionnairePageState();
}

class _QuestionnairePageState extends State<QuestionnairePage> {
  final otherCubit = getIt<OtherCubit>();
  late List<QuestionnaireModel>? question;

  @override
  void initState() {
    super.initState();
    if (widget.boolIsInit) {
      //need to get questionnaire
      otherCubit.getQuestionnaireList();
    } else {
      question = widget.question;
    }
  }

  late String title;
  late String subTitle;

  @override
  Widget build(BuildContext context) {
    title = widget.title ?? "Do You Have Stay Permit In Indonesia";
    subTitle = widget.subtitle ?? "";
    return Scaffold(
        body: BlocProvider(
            create: (context) => otherCubit,
            child: BlocListener<OtherCubit, OtherState>(
                listener: (context, state) {
                  state.maybeMap(
                    orElse: () {},
                    loading: (e) {
                      EasyLoading.show(
                        dismissOnTap: true,
                        maskType: EasyLoadingMaskType.black,
                      );
                    },
                    getAllQuestionnaire: (e) {
                      question = e.questionnaire.questionnaire;
                    },
                  );
                },
                child: BlocBuilder<OtherCubit, OtherState>(
                  bloc: otherCubit,
                  builder: (context, otherState) {
                    return otherState.maybeMap(
                      loading: (e) {
                        return Center(
                          child: CircularProgressIndicator(),
                        );
                      },
                      orElse: () {
                        return BlocBuilder<QuestionnaireCubit,
                            QuestionnaireState>(builder: (context, state) {
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CustomSecondHeader(
                                        onBack: () {
                                          //remove the last item
                                          context
                                              .read<QuestionnaireCubit>()
                                              .removeLastQuestionnaire();
                                          AutoRouter.of(context).pop();
                                        },
                                      ),
                                      10.verticalSpace,
                                      Text(
                                        title,
                                        style: TextStyle(
                                            fontSize: 30.sp,
                                            color: AppColor.primaryColor,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        subTitle,
                                        style: TextStyle(
                                            fontSize: 30.sp,
                                            color: AppColor.primaryColor,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      20.verticalSpace,
                                      Expanded(
                                        child: ListView(
                                          shrinkWrap: true,
                                          children: question!
                                              .map((e) => QuestionnaireCard(
                                                    questionnaireModel: e,
                                                  ))
                                              .toList(),
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
                        });
                      },
                    );
                  },
                ))));
  }
}

class QuestionnaireCard extends StatelessWidget {
  QuestionnaireCard({Key? key, required this.questionnaireModel})
      : super(key: key);
  final QuestionnaireModel questionnaireModel;
  final cubit = getIt<OtherCubit>();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => cubit,
      child: BlocListener<OtherCubit, OtherState>(
        bloc: cubit,
        listener: (context, state) {
          state.maybeMap(orElse: () {
            EasyLoading.dismiss();
          }, loading: (e) {
            EasyLoading.show(maskType: EasyLoadingMaskType.black);
          }, onContactUs: (e) {
            EasyLoading.dismiss();
            AwesomeDialog(
              context: context,
              width: ScreenUtil().screenWidth / 4,
              dialogType: DialogType.info,
              animType: AnimType.scale,
              headerAnimationLoop: true,
              title: questionnaireModel.header,
              desc: "We have add you to our queue list, we will contact you.",
              btnOkOnPress: () {},
              btnOkColor: Colors.green,
              btnOkText: "Thankyou",
            ).show();
          });
        },
        child: InkWell(
          onTap: () async {
            if (questionnaireModel.subQuestionnaire == null ||
                questionnaireModel.subQuestionnaire!.isEmpty) {
              if (questionnaireModel.results!.contactUs == true) {
                //SHOW CONTACT
                await AwesomeDialog(
                        context: context,
                        width: ScreenUtil().screenWidth / 4,
                        dialogType: DialogType.info,
                        animType: AnimType.scale,
                        headerAnimationLoop: true,
                        title: questionnaireModel.header,
                        desc:
                            "Our team need to contact you and understand further of your needs.",
                        btnOkOnPress: () {
                          final storage = Storage().getLocalUserData();

                          cubit.contactUs(storage!.name ?? storage.email!,
                              questionnaireModel.header!);
                        },
                        btnOkColor: Colors.green,
                        btnOkText: "Contact Us",
                        btnCancelOnPress: () {},
                        btnCancelColor: Colors.red,
                        btnCancelText: "Cancel")
                    .show();
              } else {
                context
                    .read<QuestionnaireCubit>()
                    .addQuestionnaireToList(questionnaireModel);
                context
                    .read<QuestionnaireCubit>()
                    .updateStateNotesAndDescription();

                AutoRouter.of(context).push(QuestionnaireSummaryRoute(
                  resultModel: questionnaireModel.results,
                ));
              }
            } else {
              context
                  .read<QuestionnaireCubit>()
                  .addQuestionnaireToList(questionnaireModel);
              context
                  .read<QuestionnaireCubit>()
                  .updateStateNotesAndDescription();

              AutoRouter.of(context).push(
                QuestionnaireRoute(
                  subtitle: "Stay Permit You Need",
                  title: "Type Of Visa",
                  question: questionnaireModel.subQuestionnaire,
                ),
              );
            }
          },
          child: Container(
              clipBehavior: Clip.hardEdge,
              margin: REdgeInsets.only(bottom: 15),
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: const [
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
                        questionnaireModel.header!,
                        style: TextStyle(
                            fontSize: 17.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )),
                  Container(
                      padding: EdgeInsets.symmetric(
                          vertical: 20.h, horizontal: 10.w),
                      child: Text(
                        questionnaireModel.body!,
                        style: TextStyle(fontSize: 15.sp),
                      )),
                  Container(
                      alignment: Alignment.center,
                      width: double.infinity,
                      color: Colors.grey[300],
                      padding: EdgeInsets.all(10),
                      child: Text(
                        questionnaireModel.footer!,
                        style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      )),
                ],
              )),
        ),
      ),
    );
  }
}
