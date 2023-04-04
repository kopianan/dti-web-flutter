import 'package:dti_web/presentation/corporate/application/application_page.dart';
import 'package:dti_web/presentation/corporate/widgets/banner_home_widget.dart';
import 'package:dti_web/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CDashboardPage extends StatefulWidget {
  static const String routeName = '/cdashboard';
  const CDashboardPage({super.key});

  @override
  State<CDashboardPage> createState() => _CDashboardPageState();
}

class _CDashboardPageState extends State<CDashboardPage> {
  int selected = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Card(
            margin: EdgeInsets.zero,
            child: Container(
              width: double.infinity,
              height: 100,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              color: Colors.white,
              child: Row(
                children: [
                  Image.asset('assets/imgs/me.png'),
                  20.horizontalSpace,
                  const Text(
                    "Welcome, Name Here",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Spacer(),
                  InkWell(
                    onTap: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Icon(Icons.logout, color: Colors.grey, size: 25),
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
                  selectedIconTheme: const IconThemeData(color: Colors.white),
                  unselectedIconTheme: const IconThemeData(color: Colors.white),
                  indicatorColor: Colors.blue[300],
                  useIndicator: true,
                  selectedIndex: selected,
                  onDestinationSelected: (e) {
                    setState(() {
                      selected = e;
                    });
                  },
                  destinations: _menuList(),
                ),
                const VerticalDivider(thickness: 1, width: 1),
                Expanded(child: _body[selected]),
              ],
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> _body = [
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
    ApplicationPage(),
    Container(color: Colors.blue),
  ];

  List<NavigationRailDestination> _menuList() => [
        const NavigationRailDestination(
          icon: Icon(Icons.home_outlined, size: 30),
          selectedIcon: Icon(Icons.home, size: 30),
          label: Text('Home', style: TextStyle(fontSize: 20)),
        ),
        const NavigationRailDestination(
          icon: Icon(Icons.person_outline_rounded, size: 30),
          selectedIcon: Icon(Icons.person_rounded, size: 30),
          label: Text('Customers', style: TextStyle(fontSize: 20)),
        ),
        const NavigationRailDestination(
          icon: Icon(Icons.star_border, size: 30),
          selectedIcon: Icon(Icons.star, size: 30),
          label: Text('Application', style: TextStyle(fontSize: 20)),
        ),
      ];
}
