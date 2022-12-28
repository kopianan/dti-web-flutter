import 'package:auto_route/auto_route.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:dti_web/application/auth/auth_cubit.dart';
import 'package:dti_web/application/dashboard/dashboard_cubit.dart';
import 'package:dti_web/core/widgets/application_card.dart';
import 'package:dti_web/core/widgets/social_button_widget.dart';
import 'package:dti_web/domain/core/visa_application_model.dart';
import 'package:dti_web/domain/questionnaire/questionnaire_data_model.dart';

import 'package:dti_web/domain/questionnaire/raw_data.dart';
import 'package:dti_web/injection.dart';
import 'package:dti_web/routes/app_router.dart';

import 'package:dti_web/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class DashboardPage extends StatefulWidget {
  static const String routeName = '/dashboard-page';
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  final dashboardCubit = getIt<DashboardCubit>();
  VisaApplicationModel? lasVisa;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => dashboardCubit..getLastData(),
      child: BlocListener<DashboardCubit, DashboardState>(
        listener: (context, state) {
          state.maybeMap(
            orElse: () {},
            error: (value) {
              value.err.maybeMap(
                orElse: () {},
                apiExpired: (err) {
                  AutoRouter.of(context).replaceAll([SignInRoute()]);
                },
              );
            },
            onDeleteSingleData: (e) {
              //get another data
              e.maybeMap(
                orElse: () {},
                error: (e) {
                  e.err.maybeMap(
                    orElse: () {},
                    apiExpired: (e) {
                      AutoRouter.of(context).replaceAll([SignInRoute()]);
                    },
                  );
                },
                onDeleteSingleData: (e) {
                  AutoRouter.of(context)
                      .push(QuestionnaireRoute(boolIsInit: true));
                  dashboardCubit.getLastData();
                },
              );
            },
          );
        },
        child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 80.h,
            backgroundColor: AppColor.primaryColor,
            leading: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Image.asset('assets/imgs/me.png'),
            ),
            actions: [
              BlocProvider(
                create: (context) => getIt<AuthCubit>()..getUserData(),
                child: BlocBuilder<AuthCubit, AuthState>(
                  builder: (context, state) {
                    return state.maybeMap(orElse: () {
                      return Shimmer.fromColors(
                          baseColor: Colors.grey,
                          highlightColor: Colors.white70,
                          child: Container(
                            margin: EdgeInsets.symmetric(vertical: 30),
                            width: 200.0,
                            height: 10.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white),
                          ));
                    }, onGetUserData: (e) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(e.userData.email ?? ""),
                        ],
                      );
                    });
                  },
                ),
              ),
              10.horizontalSpace,
              Container(
                margin: EdgeInsets.symmetric(vertical: 15.h),
                width: 50.w,
                height: 50.h,
                child: Icon(
                  Icons.menu,
                  color: Colors.white,
                ),
              )
            ],
          ),
          floatingActionButton: FloatingActionButton(onPressed: () {
            AutoRouter.of(context)
                .push(PaymentRoute(visa: VisaApplicationModel()));
          }),
          body: Container(
            height: ScreenUtil().screenHeight - kToolbarHeight,
            child: Column(
              children: [
                Expanded(
                    child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                        child: SingleChildScrollView(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 40.w),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                40.verticalSpace,
                                Text(
                                  "Services",
                                  style: TextStyle(
                                    fontSize: 30.sp,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "Do you have stay permit in Indonesia",
                                  style: TextStyle(
                                    fontSize: 17.sp,
                                  ),
                                ),
                              ],
                            ),
                            20.verticalSpace,
                            BlocBuilder<DashboardCubit, DashboardState>(
                              builder: (context, state) {
                                return InkWell(
                                  onTap: () {
                                    state.maybeMap(orElse: () {
                                      AutoRouter.of(context).push(
                                          QuestionnaireRoute(boolIsInit: true));
                                    }, onGetSingleData: (e) {
                                      if (e.visa.status!.toLowerCase() ==
                                          'draft') {
                                        AwesomeDialog(
                                            context: context,
                                            width: ScreenUtil().screenWidth / 4,
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 20),
                                            title: "Draft Application",
                                            body: const Center(
                                              child: Text(
                                                "You have Incomplete Visa Application.\nDo you want to continue from your latest draft? ",
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                            btnOkText: "Continue",
                                            btnCancelText: "Delete",
                                            btnOkOnPress: () {
                                              // context
                                              //     .read<ApplicationCubit>()
                                              //     .setupApplication(e.visa);
                                              AutoRouter.of(context).push(
                                                  PersonalInformation1Route(
                                                      firebaseDocId: e.visa
                                                          .firebaseDocId!));
                                            },
                                            btnCancelOnPress: () {
                                              dashboardCubit.deleteSingleData(
                                                  e.visa.firebaseDocId!);
                                            }).show();
                                      } else {
                                        print("DATA");
                                        final data =
                                            QuestionnaireDataModel.fromJson(
                                                rawData);

                                        AutoRouter.of(context).push(
                                            QuestionnaireRoute(
                                                boolIsInit: true));
                                        // AutoRouter.of(context).navigate(
                                        //   QuestionnaireRoute(
                                        //       question: data.questionnaire),
                                        // );
                                      }
                                    });
                                  },
                                  child: Card(
                                    clipBehavior: Clip.hardEdge,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Container(
                                      padding: REdgeInsets.only(
                                          left: 20.w,
                                          right: 80.w,
                                          top: 10.h,
                                          bottom: 10.h),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Image.asset(
                                            'assets/images/bookimage.png',
                                            width: 70,
                                          ),
                                          SizedBox(width: 20.w),
                                          Column(children: [
                                            Text(
                                              "Create Visa\nor Stay Permit",
                                              style: TextStyle(
                                                  fontSize: 18.sp,
                                                  fontWeight: FontWeight.bold),
                                            )
                                          ]),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                            20.verticalSpace,
                            InkWell(
                              onTap: () {
                                context.router.push(ApplicationCardRoute());
                              },
                              child: Container(
                                margin: EdgeInsets.symmetric(horizontal: 20),
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "See All",
                                  style: TextStyle(
                                      fontSize: 17.sp,
                                      color: AppColor.primaryColor,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            BlocBuilder<DashboardCubit, DashboardState>(
                              builder: (context, state) {
                                return state.maybeMap(
                                  orElse: () {
                                    return Text(
                                      "No Application Found",
                                      style: TextStyle(fontSize: 20.sp),
                                    );
                                  },
                                  loading: (e) {
                                    return const Card(
                                      child: SizedBox(
                                        width: double.infinity,
                                        height: 180,
                                        child: Center(
                                          child: CircularProgressIndicator(),
                                        ),
                                      ),
                                    );
                                  },
                                  error: (e) {
                                    return Container();
                                  },
                                  onGetSingleData: (e) {
                                    return VisaApplicationCard(
                                      visaApps: e.visa,
                                      onCardClick: () {
                                        if (e.visa.status!.toLowerCase() ==
                                            'draft') {
                                          AwesomeDialog(
                                              context: context,
                                              width:
                                                  ScreenUtil().screenWidth / 4,
                                              title: "Draft Application",
                                              body: const Center(
                                                child: Text(
                                                  "You have Incomplete Visa Application. Do you want to continue from your latest draft? ",
                                                  textAlign: TextAlign.center,
                                                ),
                                              ),
                                              btnOkText: "Continue",
                                              btnCancelText: "Delete",
                                              btnOkOnPress: () {
                                                // context
                                                //     .read<ApplicationCubit>()
                                                //     .setupApplication(e.visa);
                                                AutoRouter.of(context).push(
                                                    PersonalInformation1Route(
                                                        firebaseDocId: e.visa
                                                            .firebaseDocId!));
                                                //TODO
                                                // AutoRouter.of(context)
                                                //     .push(UploadDocumentRoute());
                                              },
                                              btnCancelOnPress: () {
                                                dashboardCubit.deleteSingleData(
                                                    e.visa.firebaseDocId!);
                                              }).show();
                                        } else {
                                          // final data =
                                          //     QuestionnaireDataModel.fromJson(
                                          //         rawData);

                                          AutoRouter.of(context).push(
                                            ApplicationDetailRoute(
                                              firebaseDocId:
                                                  e.visa.firebaseDocId!,
                                            ),
                                          );
                                        }
                                      },
                                    );
                                  },
                                );
                              },
                            ),
                            20.verticalSpace,
                          ],
                        ),
                      ),
                    )),
                    Expanded(
                        child: Container(
                      child: Image.asset('assets/images/koper.png'),
                    ))
                  ],
                )),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 50.h),
                  child: _DashboardFooter(),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _DashboardFooter extends StatelessWidget {
  const _DashboardFooter({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Container(
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/lock.png',
                      width: 80.w,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              child: Text("Your Data is Safe",
                                  style: TextStyle(
                                      fontSize: 17.sp,
                                      fontWeight: FontWeight.bold,
                                      color: AppColor.primaryColor))),
                          10.verticalSpace,
                          SizedBox(
                            // width: 100.w,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SafetyInfoWidget(
                                    title: "Data Privacy",
                                    subtitle:
                                        "We are in compliance with data\nprotection laws and regulations"),
                                10.horizontalSpace,
                                SafetyInfoWidget(
                                  title: "Data Security",
                                  subtitle:
                                      "We are protecting your data\nfrom internal and external attackers",
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            SocialButtonWidget()
          ],
        ),
        Divider(
          thickness: 2,
          height: 40.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Copyright © 2022 DoorToID. All Rights Reserved."),
            Row(
              children: [
                InkWell(onTap: () {}, child: Text("Terms of Use")),
                30.horizontalSpace,
                InkWell(onTap: () {}, child: Text("Privacy Policy")),
              ],
            )
          ],
        ),
        20.verticalSpace
      ],
    );
  }
}

class SafetyInfoWidget extends StatelessWidget {
  const SafetyInfoWidget(
      {Key? key, required this.title, required this.subtitle})
      : super(key: key);
  final String title;
  final String subtitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
              fontSize: 15.sp,
              fontWeight: FontWeight.bold,
              color: Colors.black),
        ),
        Text(
          subtitle,
          softWrap: true,
        ),
      ],
    );
  }
}
