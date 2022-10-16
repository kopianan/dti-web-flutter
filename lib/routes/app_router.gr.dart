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
    PersonalInformation2Route.name: (routeData) {
      final args = routeData.argsAs<PersonalInformation2RouteArgs>(
          orElse: () => const PersonalInformation2RouteArgs());
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: PersonalInformation2Page(
          key: args.key,
          question: args.question,
        ),
      );
    },
    PersonalInformation4Route.name: (routeData) {
      final args = routeData.argsAs<PersonalInformation4RouteArgs>(
          orElse: () => const PersonalInformation4RouteArgs());
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: PersonalInformation4Page(
          key: args.key,
          question: args.question,
        ),
      );
    },
    PersonalInformation3Route.name: (routeData) {
      final args = routeData.argsAs<PersonalInformation3RouteArgs>(
          orElse: () => const PersonalInformation3RouteArgs());
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: PersonalInformation3Page(
          key: args.key,
          question: args.question,
        ),
      );
    },
    PersonalInformation1Route.name: (routeData) {
      final args = routeData.argsAs<PersonalInformation1RouteArgs>(
          orElse: () => const PersonalInformation1RouteArgs());
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: PersonalInformation1Page(
          key: args.key,
          question: args.question,
        ),
      );
    },
    SignInRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const SignInPage(),
      );
    },
    UploadDocumentRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const UploadDocumentPage(),
      );
    },
    QuestionnaireSummaryRoute.name: (routeData) {
      final args = routeData.argsAs<QuestionnaireSummaryRouteArgs>();
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: QuestionnaireSummaryPage(
          key: args.key,
          resultModel: args.resultModel,
        ),
      );
    },
    QuestionnaireRoute.name: (routeData) {
      final args = routeData.argsAs<QuestionnaireRouteArgs>(
          orElse: () => const QuestionnaireRouteArgs());
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: QuestionnairePage(
          key: args.key,
          question: args.question,
        ),
        fullscreenDialog: true,
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
          path: '/splash-screen-page',
        ),
        RouteConfig(
          DashboardRoute.name,
          path: '/dashboard-page',
        ),
        RouteConfig(
          PersonalInformation2Route.name,
          path: '/personal-information2',
        ),
        RouteConfig(
          PersonalInformation4Route.name,
          path: '/personal-information4',
        ),
        RouteConfig(
          PersonalInformation3Route.name,
          path: '/personal-information3',
        ),
        RouteConfig(
          PersonalInformation1Route.name,
          path: '/',
        ),
        RouteConfig(
          SignInRoute.name,
          path: '/login',
        ),
        RouteConfig(
          UploadDocumentRoute.name,
          path: '/upload-document-page',
        ),
        RouteConfig(
          QuestionnaireSummaryRoute.name,
          path: '/questionnaire-summary',
        ),
        RouteConfig(
          QuestionnaireRoute.name,
          path: '/questionnaire-page',
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
          path: '/splash-screen-page',
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
/// [PersonalInformation2Page]
class PersonalInformation2Route
    extends PageRouteInfo<PersonalInformation2RouteArgs> {
  PersonalInformation2Route({
    Key? key,
    List<QuestionnaireModel>? question,
  }) : super(
          PersonalInformation2Route.name,
          path: '/personal-information2',
          args: PersonalInformation2RouteArgs(
            key: key,
            question: question,
          ),
        );

  static const String name = 'PersonalInformation2Route';
}

class PersonalInformation2RouteArgs {
  const PersonalInformation2RouteArgs({
    this.key,
    this.question,
  });

  final Key? key;

  final List<QuestionnaireModel>? question;

  @override
  String toString() {
    return 'PersonalInformation2RouteArgs{key: $key, question: $question}';
  }
}

/// generated route for
/// [PersonalInformation4Page]
class PersonalInformation4Route
    extends PageRouteInfo<PersonalInformation4RouteArgs> {
  PersonalInformation4Route({
    Key? key,
    List<QuestionnaireModel>? question,
  }) : super(
          PersonalInformation4Route.name,
          path: '/personal-information4',
          args: PersonalInformation4RouteArgs(
            key: key,
            question: question,
          ),
        );

  static const String name = 'PersonalInformation4Route';
}

class PersonalInformation4RouteArgs {
  const PersonalInformation4RouteArgs({
    this.key,
    this.question,
  });

  final Key? key;

  final List<QuestionnaireModel>? question;

  @override
  String toString() {
    return 'PersonalInformation4RouteArgs{key: $key, question: $question}';
  }
}

/// generated route for
/// [PersonalInformation3Page]
class PersonalInformation3Route
    extends PageRouteInfo<PersonalInformation3RouteArgs> {
  PersonalInformation3Route({
    Key? key,
    List<QuestionnaireModel>? question,
  }) : super(
          PersonalInformation3Route.name,
          path: '/personal-information3',
          args: PersonalInformation3RouteArgs(
            key: key,
            question: question,
          ),
        );

  static const String name = 'PersonalInformation3Route';
}

class PersonalInformation3RouteArgs {
  const PersonalInformation3RouteArgs({
    this.key,
    this.question,
  });

  final Key? key;

  final List<QuestionnaireModel>? question;

  @override
  String toString() {
    return 'PersonalInformation3RouteArgs{key: $key, question: $question}';
  }
}

/// generated route for
/// [PersonalInformation1Page]
class PersonalInformation1Route
    extends PageRouteInfo<PersonalInformation1RouteArgs> {
  PersonalInformation1Route({
    Key? key,
    List<QuestionnaireModel>? question,
  }) : super(
          PersonalInformation1Route.name,
          path: '/',
          args: PersonalInformation1RouteArgs(
            key: key,
            question: question,
          ),
        );

  static const String name = 'PersonalInformation1Route';
}

class PersonalInformation1RouteArgs {
  const PersonalInformation1RouteArgs({
    this.key,
    this.question,
  });

  final Key? key;

  final List<QuestionnaireModel>? question;

  @override
  String toString() {
    return 'PersonalInformation1RouteArgs{key: $key, question: $question}';
  }
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
/// [UploadDocumentPage]
class UploadDocumentRoute extends PageRouteInfo<void> {
  const UploadDocumentRoute()
      : super(
          UploadDocumentRoute.name,
          path: '/upload-document-page',
        );

  static const String name = 'UploadDocumentRoute';
}

/// generated route for
/// [QuestionnaireSummaryPage]
class QuestionnaireSummaryRoute
    extends PageRouteInfo<QuestionnaireSummaryRouteArgs> {
  QuestionnaireSummaryRoute({
    Key? key,
    required ResultModel? resultModel,
  }) : super(
          QuestionnaireSummaryRoute.name,
          path: '/questionnaire-summary',
          args: QuestionnaireSummaryRouteArgs(
            key: key,
            resultModel: resultModel,
          ),
        );

  static const String name = 'QuestionnaireSummaryRoute';
}

class QuestionnaireSummaryRouteArgs {
  const QuestionnaireSummaryRouteArgs({
    this.key,
    required this.resultModel,
  });

  final Key? key;

  final ResultModel? resultModel;

  @override
  String toString() {
    return 'QuestionnaireSummaryRouteArgs{key: $key, resultModel: $resultModel}';
  }
}

/// generated route for
/// [QuestionnairePage]
class QuestionnaireRoute extends PageRouteInfo<QuestionnaireRouteArgs> {
  QuestionnaireRoute({
    Key? key,
    List<QuestionnaireModel>? question,
  }) : super(
          QuestionnaireRoute.name,
          path: '/questionnaire-page',
          args: QuestionnaireRouteArgs(
            key: key,
            question: question,
          ),
        );

  static const String name = 'QuestionnaireRoute';
}

class QuestionnaireRouteArgs {
  const QuestionnaireRouteArgs({
    this.key,
    this.question,
  });

  final Key? key;

  final List<QuestionnaireModel>? question;

  @override
  String toString() {
    return 'QuestionnaireRouteArgs{key: $key, question: $question}';
  }
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
