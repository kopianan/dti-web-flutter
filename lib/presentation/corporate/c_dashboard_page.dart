import 'package:auto_route/auto_route.dart';
import 'package:dti_web/application/agent/agent_cubit.dart';
import 'package:dti_web/application/agent/create_new_application_cubit.dart';
import 'package:dti_web/application/app_list/app_list_cubit.dart';
import 'package:dti_web/application/global/global_user_cubit.dart';
import 'package:dti_web/application/other/other_cubit.dart';
import 'package:dti_web/core/storage.dart';
import 'package:dti_web/injection.dart';
import 'package:dti_web/presentation/corporate/application/application_page.dart';
import 'package:dti_web/presentation/corporate/create_application/create_application_page.dart';
import 'package:dti_web/presentation/corporate/widgets/banner_home_widget.dart';
import 'package:dti_web/routes/app_router.dart';
import 'package:dti_web/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class CDashboardPage extends StatefulWidget {
  const CDashboardPage({super.key});

  @override
  State<CDashboardPage> createState() => _CDashboardPageState();
}

class _CDashboardPageState extends State<CDashboardPage> {
  int selected = 0;
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
            BlocProvider(
              create: (context) => getIt<AppListCubit>(),
            ),
            BlocProvider(
              create: (context) => getIt<OtherCubit>()
                ..getLocation()
                ..getDocumentsData(),
            ),
          ],
          child: Scaffold(
            body: Column(
              children: [
                Card(
                  margin: EdgeInsets.zero,
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
                        InkWell(
                          onTap: () {
                            Storage().deleteStorage();
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
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
                        selectedLabelTextStyle: const TextStyle(fontSize: 20),
                        unselectedLabelTextStyle: const TextStyle(fontSize: 20),
                        selectedIconTheme:
                            const IconThemeData(color: Colors.white),
                        unselectedIconTheme:
                            const IconThemeData(color: Colors.white),
                        indicatorColor: Colors.blue[300],
                        selectedIndex: tabsRouter.activeIndex,
                        onDestinationSelected: (e) {
                          tabsRouter.setActiveIndex(e);

                          // switch (e) {
                          //   case 0:
                          //     context.router.push(const CustomerRoute());
                          //     break;
                          //   case 1:
                          //     context.router.push(const CustomerRoute());
                          //     break;
                          //   case 2:
                          //     context.router.push(const ApplicationRoute());
                          //     break;
                          //   case 3:
                          //     context.router
                          //         .push(const CreateApplicationRoute());
                          //     break;
                          // }
                          // setState(() {
                          // //   selected = e;
                          // // });
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
          ),
        );
      },
    );
  }

  final List<Widget> _body = [
    Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "Customers",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
            ),
            BannerHomeWidget()
          ],
        )),
    Container(color: Colors.blue),
    const ApplicationPage(),
    const CreateApplicationPage()
  ];

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
          icon: Icon(Icons.star_border, size: 30),
          selectedIcon: Icon(Icons.star, size: 30),
          label: Text('View Application',
              style: TextStyle(fontSize: 20, color: Colors.white)),
        ),
        const NavigationRailDestination(
          icon: Icon(Icons.star_border, size: 30),
          selectedIcon: Icon(Icons.star, size: 30),
          label: Text('Create Application',
              style: TextStyle(fontSize: 20, color: Colors.white)),
        ),
      ];
}
