import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:dti_web/application/auth/auth_cubit.dart';
import 'package:dti_web/application/global/global_user_cubit.dart';
import 'package:dti_web/injection.dart';
import 'package:dti_web/routes/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

@RoutePage()
class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({super.key});

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    EasyLoading.instance
      ..displayDuration = const Duration(milliseconds: 2000)
      ..indicatorType = EasyLoadingIndicatorType.fadingCircle
      ..loadingStyle = EasyLoadingStyle.dark
      ..indicatorSize = 45.0
      ..radius = 10.0
      ..dismissOnTap = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AuthCubit>()..checkSession(),
      child: Scaffold(
        body: BlocListener<AuthCubit, AuthState>(
          listener: (context, state) {
            state.maybeMap(
              orElse: () {},
              authorized: (e) {
                log(e.userData.isAgent.toString(), name: "AGENT");
                getIt<GlobalUserCubit>().setUserDatata(e.userData);
                if (e.userData.isAgent) {
                  AutoRouter.of(context).replaceAll([const CDashboardRoute()]);
                  // AutoRouter.of(context).replaceAll([const CDashboardRoute()]);
                } else {
                  AutoRouter.of(context).replaceAll([const DashboardRoute()]);
                  // AutoRouter.of(context).replaceAll([const CDashboardRoute()]);
                }
              },
              unAuthorized: (e) {
                AutoRouter.of(context).replaceAll([const SignInRoute()]);
              },
              isOpenFromPhone: (e) {
                AutoRouter.of(context).replaceAll([const PlatformRoute()]);
              },
            );
          },
          child: BlocBuilder<AuthCubit, AuthState>(
            builder: (context, state) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/dti_bottom_icon.png',
                    width: 100,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(height: 30),
                  const Center(child: CircularProgressIndicator())
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
