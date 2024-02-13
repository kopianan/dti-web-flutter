import 'package:auto_route/auto_route.dart';
import 'package:dti_web/application/admin/admin_data/admin_data_cubit.dart';
import 'package:dti_web/application/admin_application/cubit/admin_application_cubit.dart';
import 'package:dti_web/application/agent/agent_cubit.dart';
import 'package:dti_web/application/agent/create_new_application_cubit.dart';
import 'package:dti_web/application/contact_us/cubit/contact_us_cubit.dart';
import 'package:dti_web/application/customer/cubit/customer_cubit.dart';
import 'package:dti_web/application/feedback/cubit/feedback_cubit.dart';
import 'package:dti_web/application/global/global_user_cubit.dart';
import 'package:dti_web/core/mixin/core_mixin.dart';
import 'package:dti_web/core/storage.dart';
import 'package:dti_web/injection.dart';
import 'package:dti_web/routes/app_router.dart';
import 'package:dti_web/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AdminDashboardWidget extends StatelessWidget with CoreMixin {
  const AdminDashboardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<CreateNewApplicationCubit>(),
        ),
        BlocProvider(
          create: (context) => getIt<AdminApplicationCubit>(),
        ),
        BlocProvider(
          create: (context) => getIt<CustomerCubit>(),
        ),
        BlocProvider(
          create: (context) => getIt<FeedbackCubit>(),
        ),
        BlocProvider(
          create: (context) => getIt<ContactUsCubit>(),
        ),
        BlocProvider(
          create: (context) => getIt<AgentCubit>(),
        ),
        BlocProvider(
          create: (context) => getIt<AdminDataCubit>(),
        ),
      ],
      child: AutoTabsRouter(
        inheritNavigatorObservers: true,
        routes: const [
          AdminStatisticRoute(),
          AdminApplicationRoute(),
          AdminCustomerRoute(),
          AdminFeedbackRoute(),
          AdminContactUsRoute(),
        ],
        builder: (context, child) {
          final tabsRouter = AutoTabsRouter.of(context);
          return Scaffold(
            body: Column(
              children: [
                Card(
                  elevation: 7,
                  margin: const EdgeInsets.only(bottom: 10),
                  child: Container(
                    width: double.infinity,
                    height: 100,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    color: Colors.white,
                    child: Row(
                      children: [
                        Image.asset('assets/imgs/me.png'),
                        20.horizontalSpace,
                        BlocBuilder<GlobalUserCubit, GlobalUserState>(
                          builder: (context, state) {
                            return Text(
                              "Welcome, ${state.user.name ?? "-"}",
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            );
                          },
                        ),
                        const Spacer(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {},
                              child: Row(
                                children: [
                                  const Icon(Icons.notifications_active,
                                      color: Colors.grey, size: 25),
                                  10.horizontalSpace,
                                  const Text(
                                    "Notification",
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                            30.horizontalSpace,
                            InkWell(
                              onTap: () {
                                Storage().deleteStorage();
                                AutoRouter.of(context)
                                    .replaceAll([const SignInRoute()]);
                              },
                              child: Row(
                                children: [
                                  const Icon(Icons.logout,
                                      color: Colors.grey, size: 25),
                                  10.horizontalSpace,
                                  const Text(
                                    "Logout",
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      BlocBuilder<AdminDataCubit, AdminDataState>(
                        builder: (context, state) {
                          return NavigationRail(
                            backgroundColor: AppColor.primaryColor,
                            minExtendedWidth: 300,
                            elevation: 10,
                            extended: true,
                            selectedLabelTextStyle:
                                const TextStyle(fontSize: 20),
                            unselectedLabelTextStyle:
                                const TextStyle(fontSize: 20),
                            selectedIconTheme:
                                const IconThemeData(color: Colors.white),
                            unselectedIconTheme:
                                const IconThemeData(color: Colors.white),
                            indicatorColor: Colors.blue[300],
                            selectedIndex: tabsRouter.activeIndex,
                            onDestinationSelected: (e) {
                              tabsRouter.setActiveIndex(e);
                              context.read<AdminDataCubit>().setSearchType(e);
                              print(e);
                            },
                            destinations: _menuList(),
                          );
                        },
                      ),
                      // const VerticalDivider(thickness: 1, width: 1),
                      Expanded(child: child),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  List<NavigationRailDestination> _menuList() => [
        const NavigationRailDestination(
          icon: Icon(Icons.dashboard, size: 30),
          selectedIcon: Icon(Icons.home, size: 30),
          label: Text(
            'Dashboard',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
        const NavigationRailDestination(
          icon: Icon(Icons.home_outlined, size: 30),
          selectedIcon: Icon(Icons.home, size: 30),
          label: Text(
            'Application',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
        const NavigationRailDestination(
          icon: Icon(Icons.people_alt_outlined, size: 30),
          selectedIcon: Icon(Icons.people_alt, size: 30),
          label: Text('Customer',
              style: TextStyle(fontSize: 20, color: Colors.white)),
        ),
        const NavigationRailDestination(
          icon: Icon(Icons.feedback_outlined, size: 30),
          selectedIcon: Icon(Icons.feedback, size: 30),
          label: Text('FeedBack',
              style: TextStyle(fontSize: 20, color: Colors.white)),
        ),
        const NavigationRailDestination(
          icon: Icon(Icons.contact_emergency_outlined, size: 30),
          selectedIcon: Icon(Icons.contact_emergency, size: 30),
          label: Text('Contact Us',
              style: TextStyle(fontSize: 20, color: Colors.white)),
        ),
      ];
}
