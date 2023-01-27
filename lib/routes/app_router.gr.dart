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
    VOASummaryRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const VOASummaryPage(),
      );
    },
    ApplicationDetailRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<ApplicationDetailRouteArgs>(
          orElse: () => ApplicationDetailRouteArgs(
              firebaseDocId: pathParams.getString('id')));
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: ApplicationDetailPage(
          key: args.key,
          firebaseDocId: args.firebaseDocId,
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
          index: args.index,
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
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const PersonalInformation4Page(),
      );
    },
    PersonalInformation4bRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const PersonalInformation4bPage(),
      );
    },
    ApplicationCardRoute.name: (routeData) {
      final args = routeData.argsAs<ApplicationCardRouteArgs>();
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: ApplicationCardPage(
          key: args.key,
          dashboardCubit: args.dashboardCubit,
        ),
      );
    },
    PaymentRoute.name: (routeData) {
      final args = routeData.argsAs<PaymentRouteArgs>();
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: PaymentPage(
          key: args.key,
          visa: args.visa,
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
    NumberRegistrationRoute.name: (routeData) {
      final args = routeData.argsAs<NumberRegistrationRouteArgs>(
          orElse: () => const NumberRegistrationRouteArgs());
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: NumberRegistrationPage(key: args.key),
      );
    },
    DTIPdfViewerRoute.name: (routeData) {
      final args = routeData.argsAs<DTIPdfViewerRouteArgs>();
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: DTIPdfViewerPage(
          key: args.key,
          imageUrl: args.imageUrl,
          isNetwork: args.isNetwork,
          bytesImage: args.bytesImage,
        ),
      );
    },
    PhotoViewRoute.name: (routeData) {
      final args = routeData.argsAs<PhotoViewRouteArgs>();
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: PhotoViewPage(
          key: args.key,
          images: args.images,
          isNetwork: args.isNetwork,
          isAsset: args.isAsset,
          imagesBytes: args.imagesBytes,
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
          title: args.title,
          subtitle: args.subtitle,
          boolIsInit: args.boolIsInit,
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
      final args = routeData.argsAs<OTPRouteArgs>();
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: OTPPage(
          key: args.key,
          code: args.code,
          number: args.number,
        ),
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
          VOASummaryRoute.name,
          path: '/voa-summary',
        ),
        RouteConfig(
          ApplicationDetailRoute.name,
          path: '/application-detail/:id',
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
          PersonalInformation4bRoute.name,
          path: '/personal-information4b',
        ),
        RouteConfig(
          ApplicationCardRoute.name,
          path: '/application-card',
        ),
        RouteConfig(
          PaymentRoute.name,
          path: '/payment',
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
          path: '/login',
        ),
        RouteConfig(
          UploadDocumentRoute.name,
          path: '/upload-document',
        ),
        RouteConfig(
          NumberRegistrationRoute.name,
          path: '/number-registration',
        ),
        RouteConfig(
          DTIPdfViewerRoute.name,
          path: '/dti-pdf-viewer',
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
/// [VOASummaryPage]
class VOASummaryRoute extends PageRouteInfo<void> {
  const VOASummaryRoute()
      : super(
          VOASummaryRoute.name,
          path: '/voa-summary',
        );

  static const String name = 'VOASummaryRoute';
}

/// generated route for
/// [ApplicationDetailPage]
class ApplicationDetailRoute extends PageRouteInfo<ApplicationDetailRouteArgs> {
  ApplicationDetailRoute({
    Key? key,
    required String firebaseDocId,
  }) : super(
          ApplicationDetailRoute.name,
          path: '/application-detail/:id',
          args: ApplicationDetailRouteArgs(
            key: key,
            firebaseDocId: firebaseDocId,
          ),
          rawPathParams: {'id': firebaseDocId},
        );

  static const String name = 'ApplicationDetailRoute';
}

class ApplicationDetailRouteArgs {
  const ApplicationDetailRouteArgs({
    this.key,
    required this.firebaseDocId,
  });

  final Key? key;

  final String firebaseDocId;

  @override
  String toString() {
    return 'ApplicationDetailRouteArgs{key: $key, firebaseDocId: $firebaseDocId}';
  }
}

/// generated route for
/// [SignaturePage]
class SignatureRoute extends PageRouteInfo<SignatureRouteArgs> {
  SignatureRoute({
    Key? key,
    required VisaApplicationModel visaApplication,
    required DocumentDataModel appDocument,
    required int index,
  }) : super(
          SignatureRoute.name,
          path: '/signature',
          args: SignatureRouteArgs(
            key: key,
            visaApplication: visaApplication,
            appDocument: appDocument,
            index: index,
          ),
        );

  static const String name = 'SignatureRoute';
}

class SignatureRouteArgs {
  const SignatureRouteArgs({
    this.key,
    required this.visaApplication,
    required this.appDocument,
    required this.index,
  });

  final Key? key;

  final VisaApplicationModel visaApplication;

  final DocumentDataModel appDocument;

  final int index;

  @override
  String toString() {
    return 'SignatureRouteArgs{key: $key, visaApplication: $visaApplication, appDocument: $appDocument, index: $index}';
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
class PersonalInformation4Route extends PageRouteInfo<void> {
  const PersonalInformation4Route()
      : super(
          PersonalInformation4Route.name,
          path: '/personal-information4',
        );

  static const String name = 'PersonalInformation4Route';
}

/// generated route for
/// [PersonalInformation4bPage]
class PersonalInformation4bRoute extends PageRouteInfo<void> {
  const PersonalInformation4bRoute()
      : super(
          PersonalInformation4bRoute.name,
          path: '/personal-information4b',
        );

  static const String name = 'PersonalInformation4bRoute';
}

/// generated route for
/// [ApplicationCardPage]
class ApplicationCardRoute extends PageRouteInfo<ApplicationCardRouteArgs> {
  ApplicationCardRoute({
    Key? key,
    required DashboardCubit dashboardCubit,
  }) : super(
          ApplicationCardRoute.name,
          path: '/application-card',
          args: ApplicationCardRouteArgs(
            key: key,
            dashboardCubit: dashboardCubit,
          ),
        );

  static const String name = 'ApplicationCardRoute';
}

class ApplicationCardRouteArgs {
  const ApplicationCardRouteArgs({
    this.key,
    required this.dashboardCubit,
  });

  final Key? key;

  final DashboardCubit dashboardCubit;

  @override
  String toString() {
    return 'ApplicationCardRouteArgs{key: $key, dashboardCubit: $dashboardCubit}';
  }
}

/// generated route for
/// [PaymentPage]
class PaymentRoute extends PageRouteInfo<PaymentRouteArgs> {
  PaymentRoute({
    Key? key,
    required VisaApplicationModel visa,
  }) : super(
          PaymentRoute.name,
          path: '/payment',
          args: PaymentRouteArgs(
            key: key,
            visa: visa,
          ),
        );

  static const String name = 'PaymentRoute';
}

class PaymentRouteArgs {
  const PaymentRouteArgs({
    this.key,
    required this.visa,
  });

  final Key? key;

  final VisaApplicationModel visa;

  @override
  String toString() {
    return 'PaymentRouteArgs{key: $key, visa: $visa}';
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
          path: '/upload-document',
        );

  static const String name = 'UploadDocumentRoute';
}

/// generated route for
/// [NumberRegistrationPage]
class NumberRegistrationRoute
    extends PageRouteInfo<NumberRegistrationRouteArgs> {
  NumberRegistrationRoute({Key? key})
      : super(
          NumberRegistrationRoute.name,
          path: '/number-registration',
          args: NumberRegistrationRouteArgs(key: key),
        );

  static const String name = 'NumberRegistrationRoute';
}

class NumberRegistrationRouteArgs {
  const NumberRegistrationRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'NumberRegistrationRouteArgs{key: $key}';
  }
}

/// generated route for
/// [DTIPdfViewerPage]
class DTIPdfViewerRoute extends PageRouteInfo<DTIPdfViewerRouteArgs> {
  DTIPdfViewerRoute({
    Key? key,
    required String imageUrl,
    bool isNetwork = false,
    Uint8List? bytesImage,
  }) : super(
          DTIPdfViewerRoute.name,
          path: '/dti-pdf-viewer',
          args: DTIPdfViewerRouteArgs(
            key: key,
            imageUrl: imageUrl,
            isNetwork: isNetwork,
            bytesImage: bytesImage,
          ),
        );

  static const String name = 'DTIPdfViewerRoute';
}

class DTIPdfViewerRouteArgs {
  const DTIPdfViewerRouteArgs({
    this.key,
    required this.imageUrl,
    this.isNetwork = false,
    this.bytesImage,
  });

  final Key? key;

  final String imageUrl;

  final bool isNetwork;

  final Uint8List? bytesImage;

  @override
  String toString() {
    return 'DTIPdfViewerRouteArgs{key: $key, imageUrl: $imageUrl, isNetwork: $isNetwork, bytesImage: $bytesImage}';
  }
}

/// generated route for
/// [PhotoViewPage]
class PhotoViewRoute extends PageRouteInfo<PhotoViewRouteArgs> {
  PhotoViewRoute({
    Key? key,
    required List<String> images,
    bool isNetwork = true,
    bool isAsset = false,
    List<Uint8List>? imagesBytes,
  }) : super(
          PhotoViewRoute.name,
          path: '/photo-view',
          args: PhotoViewRouteArgs(
            key: key,
            images: images,
            isNetwork: isNetwork,
            isAsset: isAsset,
            imagesBytes: imagesBytes,
          ),
        );

  static const String name = 'PhotoViewRoute';
}

class PhotoViewRouteArgs {
  const PhotoViewRouteArgs({
    this.key,
    required this.images,
    this.isNetwork = true,
    this.isAsset = false,
    this.imagesBytes,
  });

  final Key? key;

  final List<String> images;

  final bool isNetwork;

  final bool isAsset;

  final List<Uint8List>? imagesBytes;

  @override
  String toString() {
    return 'PhotoViewRouteArgs{key: $key, images: $images, isNetwork: $isNetwork, isAsset: $isAsset, imagesBytes: $imagesBytes}';
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
    String? title,
    String? subtitle,
    bool boolIsInit = false,
  }) : super(
          QuestionnaireRoute.name,
          path: '/questionnaire',
          args: QuestionnaireRouteArgs(
            key: key,
            question: question,
            title: title,
            subtitle: subtitle,
            boolIsInit: boolIsInit,
          ),
        );

  static const String name = 'QuestionnaireRoute';
}

class QuestionnaireRouteArgs {
  const QuestionnaireRouteArgs({
    this.key,
    this.question,
    this.title,
    this.subtitle,
    this.boolIsInit = false,
  });

  final Key? key;

  final List<QuestionnaireModel>? question;

  final String? title;

  final String? subtitle;

  final bool boolIsInit;

  @override
  String toString() {
    return 'QuestionnaireRouteArgs{key: $key, question: $question, title: $title, subtitle: $subtitle, boolIsInit: $boolIsInit}';
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
class OTPRoute extends PageRouteInfo<OTPRouteArgs> {
  OTPRoute({
    Key? key,
    required CountryCode code,
    required String number,
  }) : super(
          OTPRoute.name,
          path: '/otp-page',
          args: OTPRouteArgs(
            key: key,
            code: code,
            number: number,
          ),
        );

  static const String name = 'OTPRoute';
}

class OTPRouteArgs {
  const OTPRouteArgs({
    this.key,
    required this.code,
    required this.number,
  });

  final Key? key;

  final CountryCode code;

  final String number;

  @override
  String toString() {
    return 'OTPRouteArgs{key: $key, code: $code, number: $number}';
  }
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
