import 'package:dti_web/application/dashboard/cubit/dashboard_application_cubit.dart';
import 'package:dti_web/application/dashboard/dashboard_cubit.dart';
import 'package:dti_web/core/widgets/application_card.dart';
import 'package:dti_web/core/widgets/passport_card.dart';
import 'package:dti_web/domain/core/simple_visa_model.dart';
import 'package:dti_web/injection.dart';
import 'package:dti_web/presentation/dashboard/pages/application_card_page.dart';
import 'package:dti_web/presentation/dashboard/pages/application_corp_card_page.dart';
import 'package:dti_web/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ApplicationSection extends StatefulWidget {
  const ApplicationSection(
      {super.key,
      required this.onPassportClick,
      required this.dashboardCubit,
      required this.onApplicationClick});
  final Function(SimpleVisaModel) onPassportClick;
  final Function(SimpleVisaModel) onApplicationClick;
  final DashboardCubit dashboardCubit;

  @override
  State<ApplicationSection> createState() => _ApplicationSectionState();
}

class _ApplicationSectionState extends State<ApplicationSection> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return BlocBuilder<DashboardApplicationCubit, DashboardApplicationState>(
      builder: (context, dashState) {
        return BlocProvider(
          create: (context) =>
              getIt<DashboardCubit>()..getLastPassportAndApplicationData(),
          child: BlocListener<DashboardCubit, DashboardState>(
            listener: (context, state) {
              state.maybeMap(
                orElse: () {},
                onGetSingleAppsData: (e) {
                  context.read<DashboardApplicationCubit>().setLastApps(e.visa);
                },
              );
            },
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    // context.router.push(ApplicationCardRoute());
                    showDialog(
                      context: context,
                      builder: (context) {
                        return Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          margin: const EdgeInsets.symmetric(
                              horizontal: 100, vertical: 100),
                          width: width,
                          height: height,
                          child: ApplicationCardPage(
                            dashboardCubit: widget.dashboardCubit,
                          ),
                        );
                      },
                    );
                  },
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20),
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
                        return Container(
                          height: 200,
                          alignment: Alignment.center,
                          child: Text(
                            "No Individual Application. Make your First Application",
                            style: TextStyle(
                                fontSize: 20.sp,
                                fontWeight: FontWeight.bold,
                                color: AppColor.primaryColor),
                          ),
                        );
                      },
                      onGetSingleAppsData: (e) {
                        if (dashState.passportOrApps.subTitle!
                            .toLowerCase()
                            .contains('passport')) {
                          return PassportCard(
                            visaApps: dashState.passportOrApps,
                            onCardClick: () {
                              widget.onPassportClick(dashState.passportOrApps);
                            },
                          );
                        } else {
                          return VisaApplicationCard(
                            visaApps: dashState.passportOrApps,
                            onCardClick: () {
                              widget
                                  .onApplicationClick(dashState.passportOrApps);
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
        );
      },
    );
  }
}
