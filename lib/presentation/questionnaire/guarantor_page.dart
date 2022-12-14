import 'package:auto_route/auto_route.dart';
import 'package:dti_web/application/application_cubit.dart';
import 'package:dti_web/application/update_application/update_application_cubit.dart';
import 'package:dti_web/core/widgets/questionnaire_card.dart';
import 'package:dti_web/domain/questionnaire/questionnaire_model.dart';
import 'package:dti_web/routes/app_router.dart';
import 'package:dti_web/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GuarantorPage extends StatefulWidget {
  const GuarantorPage({super.key, this.question});
  static const String routeName = '/guaraontor';

  final List<QuestionnaireModel>? question;

  @override
  State<GuarantorPage> createState() => _GuarantorPageState();
}

class _GuarantorPageState extends State<GuarantorPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<UpdateApplicationCubit, UpdateApplicationState>(
      listener: (context, state) {
        state.maybeMap(
          orElse: () {},
          onLoading: (e) {
            EasyLoading.show();
          },
          onError: (e) {
            EasyLoading.dismiss();
          },
          onUpdateGuarantor: (e) {
            EasyLoading.dismiss();
            AutoRouter.of(context)
                .replaceAll([DashboardRoute(), UploadDocumentRoute()]);
          },
        );
      },
      child: BlocListener<ApplicationCubit, ApplicationState>(
        listener: (context, state) {
          context
              .read<UpdateApplicationCubit>()
              .updateGuaranotr(state.visaApplicationModel!);
        },
        child: BlocBuilder<UpdateApplicationCubit, UpdateApplicationState>(
          builder: (context, upState) {
            return BlocBuilder<ApplicationCubit, ApplicationState>(
              builder: (context, state) {
                return Scaffold(
                    body: Stack(
                  children: [
                    Container(
                        width: ScreenUtil().screenWidth,
                        height: ScreenUtil().screenHeight,
                        child: Image.asset(
                          'assets/images/bg/bg_visa5.png',
                          fit: BoxFit.cover,
                        )),
                    Container(
                      width: ScreenUtil().screenWidth / 2.2,
                      height: ScreenUtil().screenHeight,
                      padding: REdgeInsets.symmetric(
                          horizontal: 50.w, vertical: 20.h),
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
                            "THE GUARANTOR ? ",
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
                                        .read<ApplicationCubit>()
                                        .updateGuarantor(true);
                                    context
                                        .read<UpdateApplicationCubit>()
                                        .updateGuaranotr(
                                            state.visaApplicationModel!);
                                  },
                                  body:
                                      "I affirm and attest that I meet the Moral Character requirements for sponsorship as required by Door To Indonesia in the country of Republic of Indonesia.",
                                  footer: "",
                                  header: "Door To Indonesia"),
                              QuestionnaireCard(
                                  onTap: () {
                                    context
                                        .read<ApplicationCubit>()
                                        .updateGuarantor(false);
                                    context
                                        .read<UpdateApplicationCubit>()
                                        .updateGuaranotr(
                                            state.visaApplicationModel!);
                                  },
                                  body:
                                      "I have my personal guarantor. Door To Indonesia will help to apply my Visa Application to the head of the Indonesia embassy / consulate.",
                                  footer: "",
                                  header: "Non Door To Indonesia"),
                            ],
                          ))
                        ],
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
