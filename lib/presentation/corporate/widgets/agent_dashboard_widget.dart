import 'package:auto_route/auto_route.dart';
import 'package:dti_web/application/agent/agent_cubit.dart';
import 'package:dti_web/application/agent/create_new_application_cubit.dart';
import 'package:dti_web/application/global/global_user_cubit.dart';
import 'package:dti_web/application/other/other_cubit.dart';
import 'package:dti_web/core/storage.dart';
import 'package:dti_web/injection.dart';
import 'package:dti_web/routes/app_router.dart';
import 'package:dti_web/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AgentDashboardWidget extends StatelessWidget {
  const AgentDashboardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      inheritNavigatorObservers: true,
      routes: const [
        AgentHomeRoute(),
        ApplicationRoute(),
        CreateApplicationRoute(),
      ],
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);

        return MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => getIt<CreateNewApplicationCubit>(),
            ),
            BlocProvider(
              create: (context) => getIt<AgentCubit>(),
            ),
           
          ],
          child: BlocBuilder<OtherCubit, OtherState>(
            builder: (context, state) {
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
                          NavigationRail(
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
                            },
                            destinations: _menuList(),
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
      },
    );
  }

  List<NavigationRailDestination> _menuList() => [
        const NavigationRailDestination(
          icon: Icon(Icons.home_outlined, size: 30),
          selectedIcon: Icon(Icons.home, size: 30),
          label: Text(
            'Home',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
        const NavigationRailDestination(
          icon: Icon(Icons.file_copy, size: 30),
          selectedIcon: Icon(Icons.file_copy, size: 30),
          label: Text('View Application',
              style: TextStyle(fontSize: 20, color: Colors.white)),
        ),
        const NavigationRailDestination(
          icon: Icon(Icons.edit_document, size: 30),
          selectedIcon: Icon(Icons.edit_document, size: 30),
          label: Text('Create Application',
              style: TextStyle(fontSize: 20, color: Colors.white)),
        ),
      ];
}
