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
    ApplicationDetailRoute.name: (routeData) {
      final args = routeData.argsAs<ApplicationDetailRouteArgs>();
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: ApplicationDetailPage(
          key: args.key,
          firebaseDocId: args.firebaseDocId,
          documentCubit: args.documentCubit,
        ),
      );
    },
    SignatureRoute.name: (routeData) {
      final args = routeData.argsAs<SignatureRouteArgs>();
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: SignaturePage(
          key: args.key,
          visaApplication: args.visaApplication,
          appDocument: args.appDocument,
        ),
      );
    },
    UserDomicileRoute.name: (routeData) {
      final args = routeData.argsAs<UserDomicileRouteArgs>(
          orElse: () => const UserDomicileRouteArgs());
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: UserDomicilePage(
          key: args.key,
          question: args.question,
        ),
      );
    },
    GuarantorRoute.name: (routeData) {
      final args = routeData.argsAs<GuarantorRouteArgs>(
          orElse: () => const GuarantorRouteArgs());
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: GuarantorPage(
          key: args.key,
          question: args.question,
        ),
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
    ApplicationCardRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const ApplicationCardPage(),
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
      final args = routeData.argsAs<PersonalInformation1RouteArgs>();
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: PersonalInformation1Page(
          key: args.key,
          firebaseDocId: args.firebaseDocId,
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
    PhotoViewRoute.name: (routeData) {
      final args = routeData.argsAs<PhotoViewRouteArgs>();
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: PhotoViewPage(
          key: args.key,
          images: args.images,
        ),
        fullscreenDialog: true,
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
      );
    },
    SignUpRoute.name: (routeData) {
      final args = routeData.argsAs<SignUpRouteArgs>(
          orElse: () => const SignUpRouteArgs());
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: SignUpPage(key: args.key),
      );
    },
    ResetRoute.name: (routeData) {
      final args = routeData.argsAs<ResetRouteArgs>(
          orElse: () => const ResetRouteArgs());
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: ResetPage(key: args.key),
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
          ApplicationDetailRoute.name,
          path: '/application-detail',
        ),
        RouteConfig(
          SignatureRoute.name,
          path: '/signature',
        ),
        RouteConfig(
          UserDomicileRoute.name,
          path: '/user-domicile',
        ),
        RouteConfig(
          GuarantorRoute.name,
          path: '/guaraontor',
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
          ApplicationCardRoute.name,
          path: '/application-card',
        ),
        RouteConfig(
          PersonalInformation3Route.name,
          path: '/personal-information3',
        ),
        RouteConfig(
          PersonalInformation1Route.name,
          path: '/personal-information1-page',
        ),
        RouteConfig(
          SignInRoute.name,
          path: '/',
        ),
        RouteConfig(
          UploadDocumentRoute.name,
          path: '/upload-document',
        ),
        RouteConfig(
          PhotoViewRoute.name,
          path: '/photo-view',
        ),
        RouteConfig(
          QuestionnaireSummaryRoute.name,
          path: '/questionnaire-summary',
        ),
        RouteConfig(
          QuestionnaireRoute.name,
          path: '/questionnaire',
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
/// [ApplicationDetailPage]
class ApplicationDetailRoute extends PageRouteInfo<ApplicationDetailRouteArgs> {
  ApplicationDetailRoute({
    Key? key,
    required String firebaseDocId,
    required DocumentCubit documentCubit,
  }) : super(
          ApplicationDetailRoute.name,
          path: '/application-detail',
          args: ApplicationDetailRouteArgs(
            key: key,
            firebaseDocId: firebaseDocId,
            documentCubit: documentCubit,
          ),
        );

  static const String name = 'ApplicationDetailRoute';
}

class ApplicationDetailRouteArgs {
  const ApplicationDetailRouteArgs({
    this.key,
    required this.firebaseDocId,
    required this.documentCubit,
  });

  final Key? key;

  final String firebaseDocId;

  final DocumentCubit documentCubit;

  @override
  String toString() {
    return 'ApplicationDetailRouteArgs{key: $key, firebaseDocId: $firebaseDocId, documentCubit: $documentCubit}';
  }
}

/// generated route for
/// [SignaturePage]
class SignatureRoute extends PageRouteInfo<SignatureRouteArgs> {
  SignatureRoute({
    Key? key,
    required VisaApplicationModel visaApplication,
    required DocumentDataModel appDocument,
  }) : super(
          SignatureRoute.name,
          path: '/signature',
          args: SignatureRouteArgs(
            key: key,
            visaApplication: visaApplication,
            appDocument: appDocument,
          ),
        );

  static const String name = 'SignatureRoute';
}

class SignatureRouteArgs {
  const SignatureRouteArgs({
    this.key,
    required this.visaApplication,
    required this.appDocument,
  });

  final Key? key;

  final VisaApplicationModel visaApplication;

  final DocumentDataModel appDocument;

  @override
  String toString() {
    return 'SignatureRouteArgs{key: $key, visaApplication: $visaApplication, appDocument: $appDocument}';
  }
}

/// generated route for
/// [UserDomicilePage]
class UserDomicileRoute extends PageRouteInfo<UserDomicileRouteArgs> {
  UserDomicileRoute({
    Key? key,
    List<QuestionnaireModel>? question,
  }) : super(
          UserDomicileRoute.name,
          path: '/user-domicile',
          args: UserDomicileRouteArgs(
            key: key,
            question: question,
          ),
        );

  static const String name = 'UserDomicileRoute';
}

class UserDomicileRouteArgs {
  const UserDomicileRouteArgs({
    this.key,
    this.question,
  });

  final Key? key;

  final List<QuestionnaireModel>? question;

  @override
  String toString() {
    return 'UserDomicileRouteArgs{key: $key, question: $question}';
  }
}

/// generated route for
/// [GuarantorPage]
class GuarantorRoute extends PageRouteInfo<GuarantorRouteArgs> {
  GuarantorRoute({
    Key? key,
    List<QuestionnaireModel>? question,
  }) : super(
          GuarantorRoute.name,
          path: '/guaraontor',
          args: GuarantorRouteArgs(
            key: key,
            question: question,
          ),
        );

  static const String name = 'GuarantorRoute';
}

class GuarantorRouteArgs {
  const GuarantorRouteArgs({
    this.key,
    this.question,
  });

  final Key? key;

  final List<QuestionnaireModel>? question;

  @override
  String toString() {
    return 'GuarantorRouteArgs{key: $key, question: $question}';
  }
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
/// [ApplicationCardPage]
class ApplicationCardRoute extends PageRouteInfo<void> {
  const ApplicationCardRoute()
      : super(
          ApplicationCardRoute.name,
          path: '/application-card',
        );

  static const String name = 'ApplicationCardRoute';
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
    required String firebaseDocId,
  }) : super(
          PersonalInformation1Route.name,
          path: '/personal-information1-page',
          args: PersonalInformation1RouteArgs(
            key: key,
            firebaseDocId: firebaseDocId,
          ),
        );

  static const String name = 'PersonalInformation1Route';
}

class PersonalInformation1RouteArgs {
  const PersonalInformation1RouteArgs({
    this.key,
    required this.firebaseDocId,
  });

  final Key? key;

  final String firebaseDocId;

  @override
  String toString() {
    return 'PersonalInformation1RouteArgs{key: $key, firebaseDocId: $firebaseDocId}';
  }
}

/// generated route for
/// [SignInPage]
class SignInRoute extends PageRouteInfo<void> {
  const SignInRoute()
      : super(
          SignInRoute.name,
          path: '/',
        );

  static const String name = 'SignInRoute';
}

/// generated route for
/// [UploadDocumentPage]
class UploadDocumentRoute extends PageRouteInfo<void> {
  const UploadDocumentRoute()
      : super(
          UploadDocumentRoute.name,
          path: '/upload-document',
        );

  static const String name = 'UploadDocumentRoute';
}

/// generated route for
/// [PhotoViewPage]
class PhotoViewRoute extends PageRouteInfo<PhotoViewRouteArgs> {
  PhotoViewRoute({
    Key? key,
    required List<String> images,
  }) : super(
          PhotoViewRoute.name,
          path: '/photo-view',
          args: PhotoViewRouteArgs(
            key: key,
            images: images,
          ),
        );

  static const String name = 'PhotoViewRoute';
}

class PhotoViewRouteArgs {
  const PhotoViewRouteArgs({
    this.key,
    required this.images,
  });

  final Key? key;

  final List<String> images;

  @override
  String toString() {
    return 'PhotoViewRouteArgs{key: $key, images: $images}';
  }
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
          path: '/questionnaire',
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
class SignUpRoute extends PageRouteInfo<SignUpRouteArgs> {
  SignUpRoute({Key? key})
      : super(
          SignUpRoute.name,
          path: '/register',
          args: SignUpRouteArgs(key: key),
        );

  static const String name = 'SignUpRoute';
}

class SignUpRouteArgs {
  const SignUpRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'SignUpRouteArgs{key: $key}';
  }
}

/// generated route for
/// [ResetPage]
class ResetRoute extends PageRouteInfo<ResetRouteArgs> {
  ResetRoute({Key? key})
      : super(
          ResetRoute.name,
          path: '/reset',
          args: ResetRouteArgs(key: key),
        );

  static const String name = 'ResetRoute';
}

class ResetRouteArgs {
  const ResetRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'ResetRouteArgs{key: $key}';
  }
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
