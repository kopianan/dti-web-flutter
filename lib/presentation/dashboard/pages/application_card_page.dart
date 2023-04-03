import 'package:auto_route/auto_route.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:dti_web/application/app_list/app_list_cubit.dart';
import 'package:dti_web/application/dashboard/dashboard_cubit.dart';
import 'package:dti_web/core/widgets/application_card.dart';
import 'package:dti_web/core/widgets/passport_card.dart';
import 'package:dti_web/routes/app_router.dart';
import 'package:dti_web/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class ApplicationCardPage extends StatefulWidget {
  static const String routeName = '/application-card';
  const ApplicationCardPage({super.key, required this.dashboardCubit});
  final DashboardCubit dashboardCubit;

  @override
  State<ApplicationCardPage> createState() => _ApplicationCardPageState();
}

class _ApplicationCardPageState extends State<ApplicationCardPage> {
  @override
  void initState() {
    BlocProvider.of<AppListCubit>(context).getUserApplication();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        foregroundColor: Colors.black,
        title: const Text("Application List"),
      ),
      body: SizedBox(
        width: ScreenUtil().screenWidth,
        child: BlocConsumer<AppListCubit, AppListState>(
          listener: (context, state) {},
          builder: (context, state) {
            return state.maybeMap(
              orElse: () {
                return Container();
              },
              onLoading: (e) {
                return Shimmer(
                  direction: ShimmerDirection.ltr,
                  gradient: const LinearGradient(colors: [
                    Color.fromARGB(255, 198, 198, 198),
                    Color.fromARGB(255, 235, 235, 235),
                    Color.fromARGB(255, 188, 188, 188),
                  ]),
                  child: GridView.builder(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    itemCount: 8,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 20,
                            crossAxisSpacing: 20,
                            childAspectRatio: 2 / 0.7),
                    itemBuilder: (context, index) {
                      return Container(
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(20)),
                      );
                    },
                  ),
                );
              },
              onGetUsersApplication: (e) {
                if (e.apps.isEmpty) {
                  return const Center(
                    child: Text(
                      "No Application Data Yet",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: AppColor.primaryColor),
                    ),
                  );
                }
                return SingleChildScrollView(
                  child: Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Wrap(
                        verticalDirection: VerticalDirection.down,
                        crossAxisAlignment: WrapCrossAlignment.center,
                        alignment: WrapAlignment.start,
                        children: e.apps
                            .map((element) => SizedBox(
                                  width: 500,
                                  child: element.subTitle!
                                          .toLowerCase()
                                          .contains('passport')
                                      ? PassportCard(
                                          visaApps: element,
                                          onCardClick: () async {
                                            if (element.status!.toLowerCase() ==
                                                'draft') {
                                              AwesomeDialog(
                                                context: context,
                                                width:
                                                    ScreenUtil().screenWidth /
                                                        4,
                                                title: "Draft Passport",
                                                desc: element.subTitle ==
                                                        "Visa On Arrival"
                                                    ? "You have Incomplete Visa On Arrival Application. Do you want to continue from your latest draft?"
                                                    : element.title!
                                                            .toLowerCase()
                                                            .contains(
                                                                'passport')
                                                        ? "You have Incomplete Passport. Do you want to continue from your latest draft?"
                                                        : "You have Incomplete Visa Application. Do you want to continue from your latest draft?",
                                                btnOkText: "Continue",
                                                btnCancelText: "Delete",
                                                btnOkOnPress: () async {
                                                  await AutoRouter.of(context)
                                                      .pop();
                                                  if (element.title!
                                                      .toLowerCase()
                                                      .contains('passport')) {
                                                    AutoRouter.of(context).push(
                                                        PassportPersonalParticularRoute(
                                                            firebaseDocId: element
                                                                .firebaseDocId!));
                                                  } else {
                                                    AutoRouter.of(context).push(
                                                        PersonalInformation1Route(
                                                            firebaseDocId: element
                                                                .firebaseDocId!));
                                                  }
                                                },
                                                btnCancelOnPress: () async {
                                                  await AutoRouter.of(context)
                                                      .pop();
                                                  if (element.subTitle ==
                                                      "Visa On Arrival") {
                                                    widget.dashboardCubit
                                                        .deleteSingleData(
                                                            element, 2);
                                                  } else if (element.title!
                                                      .toLowerCase()
                                                      .contains('passport')) {
                                                    widget.dashboardCubit
                                                        .deleteSinglePassport(
                                                            element, 3);
                                                  } else {
                                                    widget.dashboardCubit
                                                        .deleteSingleData(
                                                            element, 1);
                                                  }
                                                },
                                              ).show();
                                            } else {
                                              await AutoRouter.of(context)
                                                  .pop();
                                              AutoRouter.of(context).navigate(
                                                PassportDetailRoute(
                                                  firebaseDocId:
                                                      element.firebaseDocId!,
                                                ),
                                              );
                                            }
                                          },
                                        )
                                      : VisaApplicationCard(
                                          visaApps: element,
                                          onCardClick: () async {
                                            if (element.status!.toLowerCase() ==
                                                'draft') {
                                              AwesomeDialog(
                                                context: context,
                                                width:
                                                    ScreenUtil().screenWidth /
                                                        4,
                                                title: "Draft Application",
                                                desc: element.subTitle ==
                                                        "Visa On Arrival"
                                                    ? "You have Incomplete Visa On Arrival Application. Do you want to continue from your latest draft?"
                                                    : element.title!
                                                            .toLowerCase()
                                                            .contains(
                                                                'passport')
                                                        ? "You have Incomplete Passport. Do you want to continue from your latest draft?"
                                                        : "You have Incomplete Visa Application. Do you want to continue from your latest draft?",
                                                btnOkText: "Continue",
                                                btnCancelText: "Delete",
                                                btnOkOnPress: () async {
                                                  await AutoRouter.of(context)
                                                      .pop();
                                                  if (element.title!
                                                      .toLowerCase()
                                                      .contains('passport')) {
                                                    AutoRouter.of(context).push(
                                                        PassportPersonalParticularRoute(
                                                            firebaseDocId: element
                                                                .firebaseDocId!));
                                                  } else {
                                                    AutoRouter.of(context).push(
                                                        PersonalInformation1Route(
                                                            firebaseDocId: element
                                                                .firebaseDocId!));
                                                  }
                                                },
                                                btnCancelOnPress: () async {
                                                  await AutoRouter.of(context)
                                                      .pop();
                                                  if (element.subTitle ==
                                                      "Visa On Arrival") {
                                                    widget.dashboardCubit
                                                        .deleteSingleData(
                                                            element, 2);
                                                  } else if (element.title!
                                                      .toLowerCase()
                                                      .contains('passport')) {
                                                    widget.dashboardCubit
                                                        .deleteSinglePassport(
                                                            element, 3);
                                                  } else {
                                                    widget.dashboardCubit
                                                        .deleteSingleData(
                                                            element, 1);
                                                  }
                                                },
                                              ).show();
                                            } else {
                                              await AutoRouter.of(context)
                                                  .pop();
                                              AutoRouter.of(context).navigate(
                                                ApplicationDetailRoute(
                                                  firebaseDocId:
                                                      element.firebaseDocId!,
                                                ),
                                              );
                                            }
                                          },
                                        ),
                                ))
                            .toList()),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
