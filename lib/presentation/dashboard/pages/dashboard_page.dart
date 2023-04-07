import 'package:auto_route/auto_route.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:dti_web/application/auth/auth_cubit.dart';
import 'package:dti_web/application/dashboard/dashboard_cubit.dart';
import 'package:dti_web/application/other/other_cubit.dart';
import 'package:dti_web/application/timer/timer_cubit.dart';
import 'package:dti_web/core/widgets/application_card.dart';
import 'package:dti_web/core/widgets/passport_card.dart';
import 'package:dti_web/core/widgets/social_button_widget.dart';
import 'package:dti_web/domain/core/simple_visa_model.dart';
import 'package:dti_web/domain/core/visa_application_model.dart';
import 'package:dti_web/injection.dart';
import 'package:dti_web/presentation/dashboard/pages/application_card_page.dart';
import 'package:dti_web/presentation/dashboard/pages/section/feedback_section.dart';
import 'package:dti_web/routes/app_router.dart';

import 'package:dti_web/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';
import 'package:url_launcher/url_launcher.dart';

@RoutePage()
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
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              dashboardCubit..getLastPassportAndApplicationData(),
        ),
        BlocProvider(
          create: (context) => getIt<OtherCubit>()
            ..getLocation()
            ..getDocumentsData(),
        ),
      ],
      child: BlocBuilder<OtherCubit, OtherState>(
        builder: (context, state) {
          return BlocListener<DashboardCubit, DashboardState>(
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
                onDeletePassport: (e) {
                  dashboardCubit.getLastPassportAndApplicationData();
                  if (e.appType == 1) {
                    AutoRouter.of(context)
                        .push(QuestionnaireRoute(boolIsInit: true));
                  } else if (e.appType == 2) {
                    AutoRouter.of(context).push(VOASummaryRoute());
                  } else {
                    AutoRouter.of(context).push(ChoosePassportRoute());
                  }
                },
                onDeleteSingleData: (e) {
                  //get another data

                  dashboardCubit.getLastPassport();

                  if (e.appType == 1) {
                    AutoRouter.of(context)
                        .push(QuestionnaireRoute(boolIsInit: true));
                  } else if (e.appType == 2) {
                    AutoRouter.of(context).push(VOASummaryRoute());
                  } else {
                    AutoRouter.of(context).push(ChoosePassportRoute());
                  }

                  // if (e.deletedVisa.subTitle == "Visa On Arrival") {
                  //   if (e.isOnArrival == null) {
                  //     AutoRouter.of(context).push(VOASummaryRoute());
                  //   } else if (e.isOnArrival == true) {
                  //     AutoRouter.of(context).push(VOASummaryRoute());
                  //   } else {
                  //     AutoRouter.of(context)
                  //         .push(QuestionnaireRoute(boolIsInit: true));
                  //   }
                  // } else {
                  //   if (e.isOnArrival == null) {
                  //     AutoRouter.of(context)
                  //         .push(QuestionnaireRoute(boolIsInit: true));
                  //   } else if (e.isOnArrival == true) {
                  //     AutoRouter.of(context).push(VOASummaryRoute());
                  //   } else {
                  //     AutoRouter.of(context)
                  //         .push(QuestionnaireRoute(boolIsInit: true));
                  //   }
                  // }
                },
              );
            },
            child: Scaffold(
              floatingActionButton: FloatingActionButton(
                onPressed: () {},
              ),
              appBar: AppBar(
                toolbarHeight: 80.h,
                backgroundColor: Color(0xff000649),
                title: Container(
                  width: 100,
                  height: 100,
                  padding: const EdgeInsets.only(left: 10),
                  child: Image.asset(
                    'assets/imgs/me.png',
                    fit: BoxFit.cover,
                  ),
                ),
                actions: [
                  BlocProvider(
                    create: (context) => getIt<AuthCubit>()..getUserData(),
                    child: BlocListener<AuthCubit, AuthState>(
                      listener: (context, state) {
                        state.maybeMap(
                            orElse: () {},
                            onGetUserData: (e) {
                              if (e.userData.mobileNumber == null) {
                                //user must verify the number.
                                AutoRouter.of(context)
                                    .navigate(NumberRegistrationRoute());
                              }
                            });
                      },
                      child: BlocBuilder<AuthCubit, AuthState>(
                        builder: (context, state) {
                          return state.maybeMap(orElse: () {
                            return Shimmer.fromColors(
                                baseColor: Colors.grey,
                                highlightColor: Colors.white70,
                                child: Container(
                                  margin:
                                      const EdgeInsets.symmetric(vertical: 30),
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
                                Text(
                                  e.userData.name == null
                                      ? e.userData.email!.toString()
                                      : e.userData.name!.toString(),
                                  style: TextStyle(
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            );
                          });
                        },
                      ),
                    ),
                  ),
                  10.horizontalSpace,
                  BlocProvider(
                    create: (context) => getIt<AuthCubit>(),
                    child: BlocConsumer<AuthCubit, AuthState>(
                      listener: (context, state) {
                        state.maybeMap(
                          orElse: () {},
                          onSignOut: (e) {
                            AutoRouter.of(context).replaceAll([SignInRoute()]);
                          },
                        );
                      },
                      builder: (context, state) {
                        return PopupMenuButton(
                          itemBuilder: (context) {
                            return [
                              PopupMenuItem(
                                child: Text("Log Out"),
                                onTap: () {
                                  context.read<AuthCubit>().signOut();
                                },
                              ),
                            ];
                          },
                          child: Container(
                            margin: EdgeInsets.symmetric(vertical: 15.h),
                            width: 50.w,
                            height: 50.h,
                            child: const Icon(
                              Icons.menu,
                              color: Colors.white,
                            ),
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
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
                                    20.verticalSpace,
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
                                    return state.maybeMap(
                                        orElse: () => Column(
                                              children: [
                                                Row(
                                                  children: [
                                                    Expanded(
                                                      child: InkWell(
                                                        onTap: () {
                                                          onCreateVisaApps(
                                                              state);
                                                        },
                                                        child: Card(
                                                          clipBehavior:
                                                              Clip.hardEdge,
                                                          shape: RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10)),
                                                          child: Container(
                                                            padding: REdgeInsets
                                                                .only(
                                                                    left: 20.w,
                                                                    top: 10.h,
                                                                    bottom:
                                                                        10.h),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              children: [
                                                                Image.asset(
                                                                  'assets/images/bookimage.png',
                                                                  width: 70,
                                                                ),
                                                                SizedBox(
                                                                    width:
                                                                        20.w),
                                                                Column(
                                                                    children: [
                                                                      Text(
                                                                        "Create Visa\nor Stay Permit",
                                                                        style: TextStyle(
                                                                            fontSize:
                                                                                18.sp,
                                                                            fontWeight: FontWeight.bold),
                                                                      )
                                                                    ]),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: InkWell(
                                                        onTap: () {
                                                          onCreateVOA(state);
                                                        },
                                                        child: Card(
                                                          clipBehavior:
                                                              Clip.hardEdge,
                                                          shape: RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10)),
                                                          child: Container(
                                                            padding: REdgeInsets
                                                                .only(
                                                                    left: 20.w,
                                                                    top: 10.h,
                                                                    bottom:
                                                                        10.h),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              children: [
                                                                Image.asset(
                                                                  'assets/images/bookimage.png',
                                                                  width: 70,
                                                                ),
                                                                SizedBox(
                                                                    width:
                                                                        20.w),
                                                                Column(
                                                                    children: [
                                                                      Text(
                                                                        "Create Visa\non Arrival",
                                                                        style: TextStyle(
                                                                            fontSize:
                                                                                18.sp,
                                                                            fontWeight: FontWeight.bold),
                                                                      )
                                                                    ]),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                InkWell(
                                                  onTap: () {
                                                    onCreatePassport(state);
                                                    // AutoRouter.of(context).push(
                                                    //     ChoosePassportRoute());
                                                  },
                                                  child: Card(
                                                    clipBehavior: Clip.hardEdge,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10)),
                                                    child: Container(
                                                      width: double.infinity,
                                                      padding: REdgeInsets.only(
                                                          left: 20.w,
                                                          top: 10.h,
                                                          bottom: 10.h),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        children: [
                                                          Image.asset(
                                                            'assets/images/bookimage.png',
                                                            width: 70,
                                                          ),
                                                          SizedBox(width: 20.w),
                                                          Column(children: [
                                                            Text(
                                                              "Create Passport",
                                                              style: TextStyle(
                                                                  fontSize:
                                                                      18.sp,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold),
                                                            )
                                                          ]),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                        loading: (e) {
                                          return Shimmer.fromColors(
                                            baseColor:
                                                Colors.grey.withAlpha(100),
                                            highlightColor:
                                                Colors.grey.withAlpha(300),
                                            child: SizedBox(
                                              width: double.infinity,
                                              child: Card(
                                                clipBehavior: Clip.hardEdge,
                                                elevation: 6,
                                                child: Container(
                                                  width: 200.w,
                                                  height: 100.h,
                                                  color: Colors.grey,
                                                ),
                                              ),
                                            ),
                                          );
                                        });
                                  },
                                ),
                                20.verticalSpace,
                                InkWell(
                                  onTap: () {
                                    // context.router.push(ApplicationCardRoute());
                                    showDialog(
                                      context: context,
                                      builder: (context) {
                                        return Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Colors.white,
                                          ),
                                          margin: const EdgeInsets.symmetric(
                                              horizontal: 100, vertical: 100),
                                          width: width,
                                          height: height,
                                          child: ApplicationCardPage(
                                            dashboardCubit: dashboardCubit,
                                          ),
                                        );
                                      },
                                    );
                                  },
                                  child: Container(
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 20),
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
                                              child:
                                                  CircularProgressIndicator(),
                                            ),
                                          ),
                                        );
                                      },
                                      error: (e) {
                                        return Container(
                                          height: 200,
                                          alignment: Alignment.center,
                                          child: Text(
                                            "No Application. Make Your First Application",
                                            style: TextStyle(
                                                fontSize: 20.sp,
                                                fontWeight: FontWeight.bold,
                                                color: AppColor.primaryColor),
                                          ),
                                        );
                                      },
                                      onGetSingleData: (e) {
                                        if (e.visa.subTitle!
                                            .toLowerCase()
                                            .contains('passport')) {
                                          return PassportCard(
                                            visaApps: e.visa,
                                            onCardClick: () {
                                              onPassportCardClicked(context,
                                                  e.visa, width, height);
                                            },
                                          );
                                        } else {
                                          return VisaApplicationCard(
                                            visaApps: e.visa,
                                            onCardClick: () {
                                              onVisaCardApplicationClicked(
                                                context,
                                                e.visa,
                                                width,
                                                height,
                                              );
                                            },
                                          );
                                        }
                                      },
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                        )),
                        Expanded(child: Image.asset('assets/images/koper.png')),
                      ],
                    )),
                    const SizedBox(height: 20),
                    Container(
                        padding: EdgeInsets.symmetric(horizontal: 40.w),
                        child: const FeedbackSection()),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 50.h),
                      child: const _DashboardFooter(),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  void onVisaCardApplicationClicked(
    BuildContext context,
    SimpleVisaModel visa,
    double width,
    double height,
  ) {
    if (visa.status!.toLowerCase() == 'draft') {
      AwesomeDialog(
          context: context,
          width: ScreenUtil().screenWidth / 4,
          title: "Draft Application",
          desc: visa.subTitle == "Visa On Arrival"
              ? "You have Incomplete Visa On Arrival Application. Do you want to continue from your latest draft?"
              : visa.title!.toLowerCase().contains('passport')
                  ? "You have Incomplete Passport. Do you want to continue from your latest draft?"
                  : "You have Incomplete Visa Application. Do you want to continue from your latest draft?",
          btnOkText: "Continue",
          btnCancelText: "Delete",
          btnOkOnPress: () {
            if (visa.title!.toLowerCase().contains('passport')) {
              AutoRouter.of(context).push(PassportPersonalParticularRoute(
                  firebaseDocId: visa.firebaseDocId!));
            } else {
              AutoRouter.of(context).push(PersonalInformation1Route(
                  firebaseDocId: visa.firebaseDocId!));
            }
          },
          btnCancelOnPress: () {
            if (visa.subTitle == "Visa On Arrival") {
              dashboardCubit.deleteSingleData(visa, 2);
            } else if (visa.title!.toLowerCase().contains('passport')) {
              dashboardCubit.deleteSinglePassport(visa, 3);
            } else {
              dashboardCubit.deleteSingleData(visa, 1);
            }
          }).show();
    } else {
      showDialog(
        context: context,
        builder: (context) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            margin: const EdgeInsets.symmetric(horizontal: 100, vertical: 100),
            width: width,
            height: height,
            child: ApplicationCardPage(
              dashboardCubit: dashboardCubit,
            ),
          );
        },
      );
    }
  }

  void onPassportCardClicked(
    BuildContext context,
    SimpleVisaModel visa,
    double width,
    double height,
  ) {
    if (visa.status!.toLowerCase() == 'draft') {
      AwesomeDialog(
          context: context,
          width: ScreenUtil().screenWidth / 4,
          title: "Draft Passport",
          desc: visa.subTitle == "Visa On Arrival"
              ? "You have Incomplete Visa On Arrival Application. Do you want to continue from your latest draft?"
              : visa.title!.toLowerCase().contains('passport')
                  ? "You have Incomplete Passport. Do you want to continue from your latest draft?"
                  : "You have Incomplete Visa Application. Do you want to continue from your latest draft?",
          btnOkText: "Continue",
          btnCancelText: "Delete",
          btnOkOnPress: () {
            if (visa.title!.toLowerCase().contains('passport')) {
              AutoRouter.of(context).push(PassportPersonalParticularRoute(
                  firebaseDocId: visa.firebaseDocId!));
            } else {
              AutoRouter.of(context).push(PersonalInformation1Route(
                  firebaseDocId: visa.firebaseDocId!));
            }
          },
          btnCancelOnPress: () {
            if (visa.subTitle == "Visa On Arrival") {
              dashboardCubit.deleteSingleData(visa, 2);
            } else if (visa.title!.toLowerCase().contains('passport')) {
              dashboardCubit.deleteSinglePassport(visa, 3);
            } else {
              dashboardCubit.deleteSingleData(visa, 1);
            }
          }).show();
    } else {
      showDialog(
        context: context,
        builder: (context) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            margin: const EdgeInsets.symmetric(horizontal: 100, vertical: 100),
            width: width,
            height: height,
            child: ApplicationCardPage(
              dashboardCubit: dashboardCubit,
            ),
          );
        },
      );
    }
  }

  void onCreateVOA(DashboardState state) {
    state.maybeMap(
      orElse: () {
        AutoRouter.of(context).push(VOASummaryRoute());
      },
      onGetSingleData: (e) {
        if (e.visa.status!.toLowerCase() == 'draft') {
          AwesomeDialog(
              context: context,
              width: ScreenUtil().screenWidth / 4,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              title: "Draft Application",
              desc: e.visa.subTitle == "Visa On Arrival"
                  ? "You have Incomplete Visa On Arrival Application. Do you want to continue from your latest draft?"
                  : e.visa.subTitle!.toLowerCase().contains('passport')
                      ? "You have Incomplete Passport . Do you want to start Visa On Arrival Application?"
                      : "You have Incomplete Visa Application. Do you want to start Visa On Arrival Application?",
              btnOkText:
                  e.visa.subTitle == "Visa On Arrival" ? "Continue" : "Yes",
              btnCancelText:
                  e.visa.subTitle == "Visa On Arrival" ? "Create New" : "No",
              btnOkOnPress: () {
                if (e.visa.subTitle != "Visa On Arrival") {
                  if (e.visa.subTitle!.toLowerCase().contains('passport')) {
                    dashboardCubit.deleteSinglePassport(e.visa, 2);
                  } else {
                    dashboardCubit.deleteSingleData(e.visa, 2);
                  }
                } else {
                  AutoRouter.of(context).popAndPush(PersonalInformation1Route(
                      firebaseDocId: e.visa.firebaseDocId!));
                }
              },
              btnCancelOnPress: () {
                if (e.visa.subTitle != "Visa On Arrival") {
                } else {
                  dashboardCubit.deleteSingleData(e.visa, 2);
                } //
              }).show();
        } else {
          AutoRouter.of(context).push(VOASummaryRoute());
        }
      },
    );
  }

  void onCreatePassport(DashboardState state) {
    state.maybeMap(
      orElse: () {
        AutoRouter.of(context).push(ChoosePassportRoute());
      },
      onGetSingleData: (e) {
        if (e.visa.status!.toLowerCase() == 'draft') {
          AwesomeDialog(
              context: context,
              width: ScreenUtil().screenWidth / 4,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              title: "Draft Application",
              desc: e.visa.subTitle!.toLowerCase().contains('passport')
                  ? "You have Incomplete Passport. Do you want to continue from your latest draft?"
                  : e.visa.subTitle == "Visa On Arrival"
                      ? "You have Incomplete Visa On Arrival . Do you want to start New Passport Application?"
                      : "You have Incomplete Visa Application.  Do you want to start New Passport Application?",
              btnOkText: e.visa.subTitle == "Visa On Arrival"
                  ? "Yes"
                  : e.visa.subTitle!.toLowerCase().contains('passport')
                      ? "Continue"
                      : "Yes",
              btnCancelText: e.visa.subTitle == "Visa On Arrival"
                  ? "No"
                  : e.visa.subTitle!.toLowerCase().contains('passport')
                      ? "Create New"
                      : "No",
              btnOkOnPress: () {
                if (e.visa.subTitle == "Visa On Arrival") {
                  dashboardCubit.deleteSingleData(e.visa, 3);
                } else if (e.visa.subTitle!
                    .toLowerCase()
                    .contains('passport')) {
                  AutoRouter.of(context).popAndPush(
                      PassportPersonalParticularRoute(
                          firebaseDocId: e.visa.firebaseDocId!));
                } else {
                  dashboardCubit.deleteSingleData(e.visa, 3);
                }
              },
              btnCancelOnPress: () {
                if (e.visa.subTitle!.toLowerCase().contains('passport')) {
                  dashboardCubit.deleteSinglePassport(e.visa, 3);
                }
                if (e.visa.subTitle == "Visa On Arrival" ||
                    e.visa.subTitle!.toLowerCase().contains('passport')) {}
              }).show();
        } else {
          AutoRouter.of(context).push(ChoosePassportRoute());
        }
      },
    );
  }

  void onCreateVisaApps(DashboardState state) {
    state.maybeMap(
      orElse: () {
        AutoRouter.of(context).push(QuestionnaireRoute(boolIsInit: true));
      },
      onGetSingleData: (e) {
        if (e.visa.status!.toLowerCase() == 'draft') {
          AwesomeDialog(
              context: context,
              width: ScreenUtil().screenWidth / 4,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              title: "Draft Application",
              desc: e.visa.subTitle == "Visa On Arrival"
                  ? "You have Incomplete Visa On Arrival Application. Do you want to start Visa Application?"
                  : e.visa.subTitle!.toLowerCase().contains('passport')
                      ? "You have Incomplete Passport . Do you want to start Visa Application?"
                      : "You have Incomplete Visa Application. Do you want to continue from your latest draft?",
              btnOkText: e.visa.subTitle == "Visa On Arrival"
                  ? "Yes"
                  : e.visa.subTitle!.toLowerCase().contains('passport')
                      ? "Yes"
                      : "Continue",
              btnCancelText: e.visa.subTitle == "Visa On Arrival"
                  ? "No"
                  : e.visa.subTitle!.toLowerCase().contains('passport')
                      ? "No"
                      : "Create New",
              btnOkOnPress: () {
                if (e.visa.subTitle == "Visa On Arrival") {
                  dashboardCubit.deleteSingleData(e.visa, 1);
                } else if (e.visa.subTitle!
                    .toLowerCase()
                    .contains('passport')) {
                  dashboardCubit.deleteSinglePassport(e.visa, 1);
                } else {
                  AutoRouter.of(context).popAndPush(PersonalInformation1Route(
                      firebaseDocId: e.visa.firebaseDocId!));
                }
              },
              btnCancelOnPress: () {
                if (e.visa.subTitle == "Visa On Arrival" ||
                    e.visa.subTitle!.toLowerCase().contains('passport')) {
                } else {
                  dashboardCubit.deleteSingleData(e.visa, 1);
                }
              }).show();
        } else {
          AutoRouter.of(context).push(QuestionnaireRoute(boolIsInit: true));
        }
      },
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
                                const SafetyInfoWidget(
                                    title: "Data Privacy",
                                    subtitle:
                                        "We are in compliance with data\nprotection laws and regulations"),
                                10.horizontalSpace,
                                const SafetyInfoWidget(
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
            const SocialButtonWidget()
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
                InkWell(
                    onTap: () {
                      launch("https://doortoid.com/term-of-use/");
                    },
                    child: Text("Terms of Use")),
                30.horizontalSpace,
                InkWell(
                    onTap: () {
                      launch("https://doortoid.com/privacy-policy/");
                    },
                    child: Text("Privacy Policy")),
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
