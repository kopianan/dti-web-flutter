import 'package:auto_route/auto_route.dart';
import 'package:dti_web/application/application_cubit.dart';
import 'package:dti_web/application/questionnaire_cubit.dart';
import 'package:dti_web/application/update_application/update_application_cubit.dart';
import 'package:dti_web/core/widgets/primary_button.dart';
import 'package:dti_web/domain/core/document_data_model.dart';
import 'package:dti_web/domain/core/visa_application_model.dart';
import 'package:dti_web/injection.dart';
import 'package:dti_web/presentation/questionnaire/widget/custom_second_header.dart';
import 'package:dti_web/routes/app_router.dart';

import 'package:dti_web/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

class VOASummaryPage extends StatefulWidget {
  const VOASummaryPage({super.key});
  static const String routeName = '/voa-summary';

  @override
  State<VOASummaryPage> createState() => _VOASummaryPageState();
}

class _VOASummaryPageState extends State<VOASummaryPage> {
  var listData = <DocumentDataModel>[];
  String description = "";
  List<String> finalImportantNotes = [];
  String important = "";
  String documentRequired = "";
  List<String> documnets = ['A3', 'A4', 'A6'];
  late VisaApplicationModel visa;
  @override
  void initState() {
// "documents": "A2, A3, A6, C3, D1, D2, D7",
//get list data from storage.

    visa = VisaApplicationModel(
      title: "Visit Visa",
      subTitle: "Visa On Arrival",
      entry: "Single Entry Visa",
      price: 0,
      currency: "Rp",
      documents: "A3,A4,A6",
      status: "Draft",
      inIndonesia: false,
    );
    description =
        "This application is used for the issuance of e-VOA for foreigners who will enter Indonesia. Make sure to apply for a Visa in accordance with the intent of the Foreigner's activities in Indonesia. Foreigners who abuse their Visas and those who provide opportunities for Foreigners to misuse their Visas are subject to criminal sanctions as stipulated in Article 122 letters A and B of Law no. 6 of 2011 concerning Immigration.";

    finalImportantNotes.addAll([
      "The Visa on Arrival provides the traveller with an initial 30 day visa to enter Indonesia and is extendable (optional) for a further 30 days, limiting the maximum stay to 60 days within the country.",
      "The validity period is 90 days after the visa is issued.",
      "Your passport must be valid for at least 6 months from the day you enter Indonesia for a e-VOA with a 60-day stay duration",
      "Click [here](https://doortoid.com/news/visa-on-arrival-is-now-acceptable/) for list of countries that are eligible to apply",
    ]);

    for (var element in [
      "Cover Photo",
      "Passport",
      "Return ticket",
    ]) {
      documentRequired += '- $element\n';
    }

    for (var element in finalImportantNotes) {
      if (element.isNotEmpty || element != "") {
        important += '- $element\n';
      }
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

                AutoRouter.of(context).navigate(PersonalInformation1Route(
                    firebaseDocId: value.visaApps.firebaseDocId!));
              },
            );
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
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      visa.title ?? "",
                                      style: TextStyle(
                                          fontSize: 30.sp,
                                          color: AppColor.primaryColor,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      visa.subTitle ?? "",
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
                                        padding: EdgeInsets.only(bottom: 50),
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
                                                _MyMarkdown(data: description)
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
                                                _MyMarkdown(
                                                    data: documentRequired)
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
                                                _MyMarkdown(data: important)
                                                // Column(
                                                //   crossAxisAlignment:
                                                //       CrossAxisAlignment.start,
                                                //   mainAxisSize: MainAxisSize.min,
                                                //   children: finalImportantNotes
                                                //       .map((e) => Text(
                                                //             "- " + e,
                                                //             style: TextStyle(
                                                //                 fontSize: 16.sp),
                                                //           ))
                                                //       .toList(),
                                                // ),
                                              ],
                                            ),
                                            20.verticalSpace,
                                          ],
                                        ),
                                      ),
                                    ),
                                    ContinuerButton(
                                      listDocument: documnets,
                                      qState: qState,
                                      visa: visa,
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
  const ContinuerButton(
      {Key? key,
      required this.listDocument,
      required this.qState,
      required this.visa})
      : super(key: key);

  final List<String> listDocument;
  final QuestionnaireState qState;
  final VisaApplicationModel visa;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
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
                        context
                            .read<ApplicationCubit>()
                            .updateData([], list: listDocument);
                        context
                            .read<UpdateApplicationCubit>()
                            .createUserApplicationVOA(visa);
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

class _MyMarkdown extends StatelessWidget {
  const _MyMarkdown({
    Key? key,
    required this.data,
  }) : super(key: key);
  final String data;
  @override
  Widget build(BuildContext context) {
    return Markdown(
      onTapLink: ((text, href, title) {
        launch(href ?? '');
      }),
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      styleSheet: MarkdownStyleSheet(
        listBulletPadding: EdgeInsets.zero,
        blockSpacing: 0,
        listBullet: TextStyle(fontSize: 20.sp),
      ),
      data: data,
    );
  }
}
