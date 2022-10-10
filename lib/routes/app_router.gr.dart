// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    SplashScreenRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const SplashScreenPage(),
      );
    },
    DashboardRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const DashboardPage(),
      );
    },
    SignInRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const SignInPage(),
      );
    },
    SignUpRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const SignUpPage(),
      );
    },
    ResetRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const ResetPage(),
      );
    },
    OTPRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const OTPPage(),
      );
    },
    LandingRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const LandingPage(),
      );
    },
    CheckEmailRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const CheckEmailPage(),
      );
    },
    CreateNewPasswordRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const CreateNewPasswordPage(),
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          SplashScreenRoute.name,
          path: '/',
        ),
        RouteConfig(
          DashboardRoute.name,
          path: '/dashboard-page',
        ),
        RouteConfig(
          SignInRoute.name,
          path: '/login',
        ),
        RouteConfig(
          SignUpRoute.name,
          path: '/register',
        ),
        RouteConfig(
          ResetRoute.name,
          path: '/reset',
        ),
        RouteConfig(
          OTPRoute.name,
          path: '/otp-page',
        ),
        RouteConfig(
          LandingRoute.name,
          path: '/landing-page',
        ),
        RouteConfig(
          CheckEmailRoute.name,
          path: '/check_email',
        ),
        RouteConfig(
          CreateNewPasswordRoute.name,
          path: '/create-new-password',
        ),
      ];
}

/// generated route for
/// [SplashScreenPage]
class SplashScreenRoute extends PageRouteInfo<void> {
  const SplashScreenRoute()
      : super(
          SplashScreenRoute.name,
          path: '/',
        );

  static const String name = 'SplashScreenRoute';
}

/// generated route for
/// [DashboardPage]
class DashboardRoute extends PageRouteInfo<void> {
  const DashboardRoute()
      : super(
          DashboardRoute.name,
          path: '/dashboard-page',
        );

  static const String name = 'DashboardRoute';
}

/// generated route for
/// [SignInPage]
class SignInRoute extends PageRouteInfo<void> {
  const SignInRoute()
      : super(
          SignInRoute.name,
          path: '/login',
        );

  static const String name = 'SignInRoute';
}

/// generated route for
/// [SignUpPage]
class SignUpRoute extends PageRouteInfo<void> {
  const SignUpRoute()
      : super(
          SignUpRoute.name,
          path: '/register',
        );

  static const String name = 'SignUpRoute';
}

/// generated route for
/// [ResetPage]
class ResetRoute extends PageRouteInfo<void> {
  const ResetRoute()
      : super(
          ResetRoute.name,
          path: '/reset',
        );

  static const String name = 'ResetRoute';
}

/// generated route for
/// [OTPPage]
class OTPRoute extends PageRouteInfo<void> {
  const OTPRoute()
      : super(
          OTPRoute.name,
          path: '/otp-page',
        );

  static const String name = 'OTPRoute';
}

/// generated route for
/// [LandingPage]
class LandingRoute extends PageRouteInfo<void> {
  const LandingRoute()
      : super(
          LandingRoute.name,
          path: '/landing-page',
        );

  static const String name = 'LandingRoute';
}

/// generated route for
/// [CheckEmailPage]
class CheckEmailRoute extends PageRouteInfo<void> {
  const CheckEmailRoute()
      : super(
          CheckEmailRoute.name,
          path: '/check_email',
        );

  static const String name = 'CheckEmailRoute';
}

/// generated route for
/// [CreateNewPasswordPage]
class CreateNewPasswordRoute extends PageRouteInfo<void> {
  const CreateNewPasswordRoute()
      : super(
          CreateNewPasswordRoute.name,
          path: '/create-new-password',
        );

  static const String name = 'CreateNewPasswordRoute';
}
