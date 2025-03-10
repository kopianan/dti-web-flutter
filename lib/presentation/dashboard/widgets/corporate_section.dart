import 'package:auto_route/auto_route.dart';
import 'package:dti_web/application/dashboard/cubit/dashboard_application_cubit.dart';
import 'package:dti_web/application/dashboard/dashboard_cubit.dart';
import 'package:dti_web/core/widgets/application_card.dart';
import 'package:dti_web/core/widgets/passport_card.dart';
import 'package:dti_web/domain/core/simple_visa_model.dart';
import 'package:dti_web/injection.dart';
import 'package:dti_web/presentation/dashboard/pages/application_corp_card_page.dart';
import 'package:dti_web/presentation/dashboard/widgets/visa_application_corp_card.dart';
import 'package:dti_web/routes/app_router.dart';
import 'package:dti_web/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CorporateSection extends StatefulWidget {
  const CorporateSection({
    super.key,
    required this.onCardClick,
    required this.dashboardCubit,
  });
  final Function(SimpleVisaModel) onCardClick;
  final DashboardCubit dashboardCubit;

  @override
  State<CorporateSection> createState() => _CorporateSectionState();
}

class _CorporateSectionState extends State<CorporateSection> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        InkWell(
          onTap: () {
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
                  child: ApplicationCorpCardPage(
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
        BlocProvider(
          create: (context) =>
              getIt<DashboardCubit>()..getLastCorporateApplication(),
          child: BlocListener<DashboardCubit, DashboardState>(
            listener: (context, state) {
              state.maybeMap(
                onGetSingleCorpData: (value) {
                  print(value);
                  context
                      .read<DashboardApplicationCubit>()
                      .setLastCorporate(value.visa);
                },
                orElse: () {},
              );
            },
            child: BlocBuilder<DashboardCubit, DashboardState>(
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
                        "No Corporate Application. Make your First Application",
                        style: TextStyle(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.bold,
                            color: AppColor.primaryColor),
                      ),
                    );
                  },
                  onGetSingleCorpData: (e) {
                    return BlocBuilder<DashboardApplicationCubit,
                        DashboardApplicationState>(
                      builder: (context, dashState) {
                        return VisaApplicationCorpCard(
                          onCardClick: () {
                            widget.onCardClick(dashState.corporateApps);
                          },
                          visa: dashState.corporateApps,
                        );
                      },
                    );
                  },
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
