import 'package:auto_route/auto_route.dart';
import 'package:dti_web/presentation/auth/pages/splash_screen_page.dart';
import 'package:flutter/material.dart';

import '../presentation/auth/pages/check_email_page.dart';
import '../presentation/auth/pages/create_new_password_page.dart';
import '../presentation/auth/pages/otp_page.dart';
import '../presentation/auth/pages/reset_page.dart';
import '../presentation/auth/pages/sign_in_page.dart';
import '../presentation/auth/pages/sign_up_page.dart';
import '../presentation/dashboard/pages/dashboard_page.dart';
import '../presentation/landing/presentation/pages/landing_page.dart';
// import 'package:auto_route/annotations.dart';

part "app_router.gr.dart";

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: SplashScreenPage, initial: true, path: '/'),
    AutoRoute(page: DashboardPage, path: DashboardPage.routeName),
    AutoRoute(page: SignInPage, path: SignInPage.routeName),
    AutoRoute(page: SignUpPage, path: SignUpPage.routeName),
    AutoRoute(page: ResetPage, path: ResetPage.routeName),
    AutoRoute(page: OTPPage, path: OTPPage.routeName),
    AutoRoute(page: LandingPage, path: LandingPage.routeName),
    AutoRoute(page: CheckEmailPage, path: CheckEmailPage.routeName),
    AutoRoute(
        page: CreateNewPasswordPage, path: CreateNewPasswordPage.routeName),
  ],
)
class AppRouter extends _$AppRouter {}
