import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:dti_web/application/auth/auth_cubit.dart';
import 'package:dti_web/injection.dart';
import 'package:dti_web/routes/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'package:url_launcher/url_launcher.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({super.key});

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
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
                AutoRouter.of(context).replaceAll([DashboardRoute()]);
              },
              unAuthorized: (e) {
                AutoRouter.of(context).replaceAll([SignInRoute()]);
              },
              isOpenFromPhone: (e) {
                AutoRouter.of(context).replaceAll([PlatformRoute()]);
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
