import 'package:dti_web/application/dashboard/cubit/dashboard_application_cubit.dart';
import 'package:dti_web/application/dashboard/dashboard_cubit.dart';
import 'package:dti_web/core/widgets/application_card.dart';
import 'package:dti_web/core/widgets/passport_card.dart';
import 'package:dti_web/injection.dart';
import 'package:dti_web/presentation/dashboard/widgets/visa_application_corp_card.dart';
import 'package:dti_web/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CorporateSection extends StatefulWidget {
  const CorporateSection({super.key});

  @override
  State<CorporateSection> createState() => _CorporateSectionState();
}

class _CorporateSectionState extends State<CorporateSection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            // showDialog(
            //   context: context,
            //   builder: (context) {
            //     return Container(
            //       decoration: BoxDecoration(
            //         borderRadius: BorderRadius.circular(10),
            //         color: Colors.white,
            //       ),
            //       margin: const EdgeInsets.symmetric(
            //           horizontal: 100, vertical: 100),
            //       width: width,
            //       height: height,
            //       child: ApplicationCardPage(
            //         dashboardCubit: dashboardCubit,
            //       ),
            //     );
            //   },
            // );
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
        BlocProvider(
          create: (context) =>
              getIt<DashboardApplicationCubit>()..getLastCorporateApplication(),
          child:
              BlocBuilder<DashboardApplicationCubit, DashboardApplicationState>(
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
                      "No Application. Make Your First Application",
                      style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.bold,
                          color: AppColor.primaryColor),
                    ),
                  );
                },
                onGetCorporateApplication: (e) {
                  return VisaApplicationCorpCard(visa: e.visa);
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
