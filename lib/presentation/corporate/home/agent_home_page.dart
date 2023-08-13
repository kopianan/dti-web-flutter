import 'package:auto_route/auto_route.dart';
import 'package:dti_web/presentation/corporate/widgets/banner_home_widget.dart';
import 'package:flutter/material.dart';

@RoutePage()
class AgentHomePage extends StatelessWidget {
  const AgentHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: const [
      BannerHomeWidget(),
    ]));
  }
}
