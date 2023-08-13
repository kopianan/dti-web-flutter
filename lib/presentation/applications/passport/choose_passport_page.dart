import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:dti_web/application/application_cubit.dart';
import 'package:dti_web/application/update_application/update_application_cubit.dart';
import 'package:dti_web/core/widgets/questionnaire_card.dart';
import 'package:dti_web/domain/questionnaire/questionnaire_data_model.dart';
import 'package:dti_web/domain/questionnaire/questionnaire_model.dart';
import 'package:dti_web/injection.dart';
import 'package:dti_web/presentation/questionnaire/widget/custom_second_header.dart';
import 'package:dti_web/routes/app_router.dart';
import 'package:dti_web/utils/app_color.dart';
import 'package:dti_web/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class ChoosePassportPage extends StatefulWidget {
  const ChoosePassportPage({super.key, this.question});
  static const String routeName = '/choose-passport';

  final List<QuestionnaireModel>? question;

  @override
  State<ChoosePassportPage> createState() => ChoosePassportPageState();
}

class ChoosePassportPageState extends State<ChoosePassportPage> {
  final List<QuestionnaireModel> passportList = Constant.getPassport();

  @override
  void initState() {
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
            onLoading: (e) {
              EasyLoading.show(
                maskType: EasyLoadingMaskType.black,
              );
            },
            onError: (e) {
              EasyLoading.dismiss();
            },
            onCreatePassport: (e) {
              log(e.toString());
              EasyLoading.dismiss();
              AutoRouter.of(context).navigate(PassportPersonalParticularRoute(
                  firebaseDocId: e.visaApps.firebaseDocId ?? ""));
            },
          );
        },
        child: BlocBuilder<UpdateApplicationCubit, UpdateApplicationState>(
          builder: (context, upState) {
            return BlocBuilder<ApplicationCubit, ApplicationState>(
              builder: (context, state) {
                return Scaffold(
                    body: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: ScreenUtil().screenHeight,
                        padding: REdgeInsets.symmetric(
                            vertical: 10.h, horizontal: 10.w),
                        margin: EdgeInsets.symmetric(vertical: 40.h),
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.horizontal(
                              right: Radius.circular(10)),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomSecondHeader(
                              header: Center(
                                child: Text(
                                  'Passport',
                                  style: TextStyle(
                                      fontSize: 18.sp,
                                      color: AppColor.primaryColor,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 50.w, vertical: 20.h),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "PASSPORT TYPE",
                                      style: TextStyle(
                                          fontSize: 30.sp,
                                          color: AppColor.primaryColor,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    20.verticalSpace,
                                    Expanded(
                                      child: Column(
                                        children: [
                                          QuestionnaireCard(
                                            onTap: () {
                                              context
                                                  .read<
                                                      UpdateApplicationCubit>()
                                                  .createPassport(
                                                      0 == 0 ? true : false);
                                            },
                                            header:
                                                passportList[0].header ?? "",
                                            body: passportList[0].body ?? "",
                                            footer:
                                                passportList[0].footer ?? "",
                                          ),
                                          QuestionnaireCard(
                                            onTap: () {
                                              context
                                                  .read<
                                                      UpdateApplicationCubit>()
                                                  .createPassport(
                                                      1 == 0 ? true : false);
                                            },
                                            header:
                                                passportList[1].header ?? "",
                                            body: passportList[1].body ?? "",
                                            footer:
                                                passportList[1].footer ?? "",
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.all(100.sp),
                        child: Image.asset(
                          'assets/images/bg/guarantor.webp',
                        ),
                      ),
                    )
                  ],
                ));
              },
            );
          },
        ),
      ),
    );
  }
}
