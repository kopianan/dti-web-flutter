// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    CDashboardRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CDashboardPage(),
      );
    },
    CreateApplicationRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CreateApplicationPage(),
      );
    },
    ApplicationRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ApplicationPage(),
      );
    },
    CustomerRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CustomerPage(),
      );
    },
    LandingRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const LandingPage(),
      );
    },
    SignInRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SignInPage(),
      );
    },
    SignUpRoute.name: (routeData) {
      final args = routeData.argsAs<SignUpRouteArgs>(
          orElse: () => const SignUpRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: SignUpPage(key: args.key),
      );
    },
    SplashScreenRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SplashScreenPage(),
      );
    },
    PlatformRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const PlatformPage(),
      );
    },
    CheckEmailRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CheckEmailPage(),
      );
    },
    ResetRoute.name: (routeData) {
      final args = routeData.argsAs<ResetRouteArgs>(
          orElse: () => const ResetRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ResetPage(key: args.key),
      );
    },
    NumberRegistrationRoute.name: (routeData) {
      final args = routeData.argsAs<NumberRegistrationRouteArgs>(
          orElse: () => const NumberRegistrationRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: NumberRegistrationPage(key: args.key),
      );
    },
    OTPRoute.name: (routeData) {
      final args = routeData.argsAs<OTPRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: OTPPage(
          key: args.key,
          code: args.code,
          number: args.number,
        ),
      );
    },
    CreateNewPasswordRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CreateNewPasswordPage(),
      );
    },
    PaymentRoute.name: (routeData) {
      final args = routeData.argsAs<PaymentRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: PaymentPage(
          key: args.key,
          visa: args.visa,
        ),
      );
    },
    PhotoViewRoute.name: (routeData) {
      final args = routeData.argsAs<PhotoViewRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: PhotoViewPage(
          key: args.key,
          images: args.images,
          isNetwork: args.isNetwork,
          isAsset: args.isAsset,
          imagesBytes: args.imagesBytes,
        ),
      );
    },
    QuestionnaireSummaryRoute.name: (routeData) {
      final args = routeData.argsAs<QuestionnaireSummaryRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: QuestionnaireSummaryPage(
          key: args.key,
          resultModel: args.resultModel,
        ),
      );
    },
    PersonalInformation2Route.name: (routeData) {
      final args = routeData.argsAs<PersonalInformation2RouteArgs>(
          orElse: () => const PersonalInformation2RouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: PersonalInformation2Page(
          key: args.key,
          question: args.question,
        ),
      );
    },
    GuarantorRoute.name: (routeData) {
      final args = routeData.argsAs<GuarantorRouteArgs>(
          orElse: () => const GuarantorRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: GuarantorPage(
          key: args.key,
          question: args.question,
        ),
      );
    },
    PersonalInformation4Route.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const PersonalInformation4Page(),
      );
    },
    PersonalInformation3Route.name: (routeData) {
      final args = routeData.argsAs<PersonalInformation3RouteArgs>(
          orElse: () => const PersonalInformation3RouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: PersonalInformation3Page(
          key: args.key,
          question: args.question,
        ),
      );
    },
    QuestionnaireRoute.name: (routeData) {
      final args = routeData.argsAs<QuestionnaireRouteArgs>(
          orElse: () => const QuestionnaireRouteArgs());
      return AutoRoutePage<dynamic>(
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
    VOASummaryRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const VOASummaryPage(),
      );
    },
    UserDomicileRoute.name: (routeData) {
      final args = routeData.argsAs<UserDomicileRouteArgs>(
          orElse: () => const UserDomicileRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: UserDomicilePage(
          key: args.key,
          question: args.question,
        ),
      );
    },
    PersonalInformation1Route.name: (routeData) {
      final args = routeData.argsAs<PersonalInformation1RouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: PersonalInformation1Page(
          key: args.key,
          firebaseDocId: args.firebaseDocId,
        ),
      );
    },
    PersonalInformation4bRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const PersonalInformation4bPage(),
      );
    },
    ApplicationCardRoute.name: (routeData) {
      final args = routeData.argsAs<ApplicationCardRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ApplicationCardPage(
          key: args.key,
          dashboardCubit: args.dashboardCubit,
        ),
      );
    },
    DashboardRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const DashboardPage(),
      );
    },
    DTIPdfViewerRoute.name: (routeData) {
      final args = routeData.argsAs<DTIPdfViewerRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: DTIPdfViewerPage(
          key: args.key,
          imageUrl: args.imageUrl,
          isNetwork: args.isNetwork,
          bytesImage: args.bytesImage,
        ),
      );
    },
    UploadDocumentRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const UploadDocumentPage(),
      );
    },
    ChoosePassportRoute.name: (routeData) {
      final args = routeData.argsAs<ChoosePassportRouteArgs>(
          orElse: () => const ChoosePassportRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ChoosePassportPage(
          key: args.key,
          question: args.question,
        ),
      );
    },
    SelfieRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SelfiePage(),
      );
    },
    PassportPaymentRoute.name: (routeData) {
      final args = routeData.argsAs<PassportPaymentRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: PassportPaymentPage(
          key: args.key,
          visa: args.visa,
        ),
      );
    },
    PassportDetailRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<PassportDetailRouteArgs>(
          orElse: () => PassportDetailRouteArgs(
              firebaseDocId: pathParams.getString('id')));
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: PassportDetailPage(
          key: args.key,
          firebaseDocId: args.firebaseDocId,
        ),
      );
    },
    PassportPersonalParticularRoute.name: (routeData) {
      final args = routeData.argsAs<PassportPersonalParticularRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: PassportPersonalParticularPage(
          key: args.key,
          firebaseDocId: args.firebaseDocId,
        ),
      );
    },
    ApplicationDetailRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<ApplicationDetailRouteArgs>(
          orElse: () => ApplicationDetailRouteArgs(
              firebaseDocId: pathParams.getString('id')));
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ApplicationDetailPage(
          key: args.key,
          firebaseDocId: args.firebaseDocId,
        ),
      );
    },
    SignatureRoute.name: (routeData) {
      final args = routeData.argsAs<SignatureRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: SignaturePage(
          key: args.key,
          visaApplication: args.visaApplication,
          appDocument: args.appDocument,
          index: args.index,
        ),
      );
    },
  };
}

/// generated route for
/// [CDashboardPage]
class CDashboardRoute extends PageRouteInfo<void> {
  const CDashboardRoute({List<PageRouteInfo>? children})
      : super(
          CDashboardRoute.name,
          initialChildren: children,
        );

  static const String name = 'CDashboardRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [CreateApplicationPage]
class CreateApplicationRoute extends PageRouteInfo<void> {
  const CreateApplicationRoute({List<PageRouteInfo>? children})
      : super(
          CreateApplicationRoute.name,
          initialChildren: children,
        );

  static const String name = 'CreateApplicationRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ApplicationPage]
class ApplicationRoute extends PageRouteInfo<void> {
  const ApplicationRoute({List<PageRouteInfo>? children})
      : super(
          ApplicationRoute.name,
          initialChildren: children,
        );

  static const String name = 'ApplicationRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [CustomerPage]
class CustomerRoute extends PageRouteInfo<void> {
  const CustomerRoute({List<PageRouteInfo>? children})
      : super(
          CustomerRoute.name,
          initialChildren: children,
        );

  static const String name = 'CustomerRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [LandingPage]
class LandingRoute extends PageRouteInfo<void> {
  const LandingRoute({List<PageRouteInfo>? children})
      : super(
          LandingRoute.name,
          initialChildren: children,
        );

  static const String name = 'LandingRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SignInPage]
class SignInRoute extends PageRouteInfo<void> {
  const SignInRoute({List<PageRouteInfo>? children})
      : super(
          SignInRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignInRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SignUpPage]
class SignUpRoute extends PageRouteInfo<SignUpRouteArgs> {
  SignUpRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          SignUpRoute.name,
          args: SignUpRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'SignUpRoute';

  static const PageInfo<SignUpRouteArgs> page = PageInfo<SignUpRouteArgs>(name);
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
/// [SplashScreenPage]
class SplashScreenRoute extends PageRouteInfo<void> {
  const SplashScreenRoute({List<PageRouteInfo>? children})
      : super(
          SplashScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashScreenRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [PlatformPage]
class PlatformRoute extends PageRouteInfo<void> {
  const PlatformRoute({List<PageRouteInfo>? children})
      : super(
          PlatformRoute.name,
          initialChildren: children,
        );

  static const String name = 'PlatformRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [CheckEmailPage]
class CheckEmailRoute extends PageRouteInfo<void> {
  const CheckEmailRoute({List<PageRouteInfo>? children})
      : super(
          CheckEmailRoute.name,
          initialChildren: children,
        );

  static const String name = 'CheckEmailRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ResetPage]
class ResetRoute extends PageRouteInfo<ResetRouteArgs> {
  ResetRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          ResetRoute.name,
          args: ResetRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'ResetRoute';

  static const PageInfo<ResetRouteArgs> page = PageInfo<ResetRouteArgs>(name);
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
/// [NumberRegistrationPage]
class NumberRegistrationRoute
    extends PageRouteInfo<NumberRegistrationRouteArgs> {
  NumberRegistrationRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          NumberRegistrationRoute.name,
          args: NumberRegistrationRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'NumberRegistrationRoute';

  static const PageInfo<NumberRegistrationRouteArgs> page =
      PageInfo<NumberRegistrationRouteArgs>(name);
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
/// [OTPPage]
class OTPRoute extends PageRouteInfo<OTPRouteArgs> {
  OTPRoute({
    Key? key,
    required CountryCode code,
    required String number,
    List<PageRouteInfo>? children,
  }) : super(
          OTPRoute.name,
          args: OTPRouteArgs(
            key: key,
            code: code,
            number: number,
          ),
          initialChildren: children,
        );

  static const String name = 'OTPRoute';

  static const PageInfo<OTPRouteArgs> page = PageInfo<OTPRouteArgs>(name);
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
/// [CreateNewPasswordPage]
class CreateNewPasswordRoute extends PageRouteInfo<void> {
  const CreateNewPasswordRoute({List<PageRouteInfo>? children})
      : super(
          CreateNewPasswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'CreateNewPasswordRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [PaymentPage]
class PaymentRoute extends PageRouteInfo<PaymentRouteArgs> {
  PaymentRoute({
    Key? key,
    required VisaApplicationModel visa,
    List<PageRouteInfo>? children,
  }) : super(
          PaymentRoute.name,
          args: PaymentRouteArgs(
            key: key,
            visa: visa,
          ),
          initialChildren: children,
        );

  static const String name = 'PaymentRoute';

  static const PageInfo<PaymentRouteArgs> page =
      PageInfo<PaymentRouteArgs>(name);
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
/// [PhotoViewPage]
class PhotoViewRoute extends PageRouteInfo<PhotoViewRouteArgs> {
  PhotoViewRoute({
    Key? key,
    required List<String> images,
    bool isNetwork = true,
    bool isAsset = false,
    List<Uint8List>? imagesBytes,
    List<PageRouteInfo>? children,
  }) : super(
          PhotoViewRoute.name,
          args: PhotoViewRouteArgs(
            key: key,
            images: images,
            isNetwork: isNetwork,
            isAsset: isAsset,
            imagesBytes: imagesBytes,
          ),
          initialChildren: children,
        );

  static const String name = 'PhotoViewRoute';

  static const PageInfo<PhotoViewRouteArgs> page =
      PageInfo<PhotoViewRouteArgs>(name);
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
    List<PageRouteInfo>? children,
  }) : super(
          QuestionnaireSummaryRoute.name,
          args: QuestionnaireSummaryRouteArgs(
            key: key,
            resultModel: resultModel,
          ),
          initialChildren: children,
        );

  static const String name = 'QuestionnaireSummaryRoute';

  static const PageInfo<QuestionnaireSummaryRouteArgs> page =
      PageInfo<QuestionnaireSummaryRouteArgs>(name);
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
/// [PersonalInformation2Page]
class PersonalInformation2Route
    extends PageRouteInfo<PersonalInformation2RouteArgs> {
  PersonalInformation2Route({
    Key? key,
    List<QuestionnaireModel>? question,
    List<PageRouteInfo>? children,
  }) : super(
          PersonalInformation2Route.name,
          args: PersonalInformation2RouteArgs(
            key: key,
            question: question,
          ),
          initialChildren: children,
        );

  static const String name = 'PersonalInformation2Route';

  static const PageInfo<PersonalInformation2RouteArgs> page =
      PageInfo<PersonalInformation2RouteArgs>(name);
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
/// [GuarantorPage]
class GuarantorRoute extends PageRouteInfo<GuarantorRouteArgs> {
  GuarantorRoute({
    Key? key,
    List<QuestionnaireModel>? question,
    List<PageRouteInfo>? children,
  }) : super(
          GuarantorRoute.name,
          args: GuarantorRouteArgs(
            key: key,
            question: question,
          ),
          initialChildren: children,
        );

  static const String name = 'GuarantorRoute';

  static const PageInfo<GuarantorRouteArgs> page =
      PageInfo<GuarantorRouteArgs>(name);
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
/// [PersonalInformation4Page]
class PersonalInformation4Route extends PageRouteInfo<void> {
  const PersonalInformation4Route({List<PageRouteInfo>? children})
      : super(
          PersonalInformation4Route.name,
          initialChildren: children,
        );

  static const String name = 'PersonalInformation4Route';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [PersonalInformation3Page]
class PersonalInformation3Route
    extends PageRouteInfo<PersonalInformation3RouteArgs> {
  PersonalInformation3Route({
    Key? key,
    List<QuestionnaireModel>? question,
    List<PageRouteInfo>? children,
  }) : super(
          PersonalInformation3Route.name,
          args: PersonalInformation3RouteArgs(
            key: key,
            question: question,
          ),
          initialChildren: children,
        );

  static const String name = 'PersonalInformation3Route';

  static const PageInfo<PersonalInformation3RouteArgs> page =
      PageInfo<PersonalInformation3RouteArgs>(name);
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
/// [QuestionnairePage]
class QuestionnaireRoute extends PageRouteInfo<QuestionnaireRouteArgs> {
  QuestionnaireRoute({
    Key? key,
    List<QuestionnaireModel>? question,
    String? title,
    String? subtitle,
    bool boolIsInit = false,
    List<PageRouteInfo>? children,
  }) : super(
          QuestionnaireRoute.name,
          args: QuestionnaireRouteArgs(
            key: key,
            question: question,
            title: title,
            subtitle: subtitle,
            boolIsInit: boolIsInit,
          ),
          initialChildren: children,
        );

  static const String name = 'QuestionnaireRoute';

  static const PageInfo<QuestionnaireRouteArgs> page =
      PageInfo<QuestionnaireRouteArgs>(name);
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
/// [VOASummaryPage]
class VOASummaryRoute extends PageRouteInfo<void> {
  const VOASummaryRoute({List<PageRouteInfo>? children})
      : super(
          VOASummaryRoute.name,
          initialChildren: children,
        );

  static const String name = 'VOASummaryRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [UserDomicilePage]
class UserDomicileRoute extends PageRouteInfo<UserDomicileRouteArgs> {
  UserDomicileRoute({
    Key? key,
    List<QuestionnaireModel>? question,
    List<PageRouteInfo>? children,
  }) : super(
          UserDomicileRoute.name,
          args: UserDomicileRouteArgs(
            key: key,
            question: question,
          ),
          initialChildren: children,
        );

  static const String name = 'UserDomicileRoute';

  static const PageInfo<UserDomicileRouteArgs> page =
      PageInfo<UserDomicileRouteArgs>(name);
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
/// [PersonalInformation1Page]
class PersonalInformation1Route
    extends PageRouteInfo<PersonalInformation1RouteArgs> {
  PersonalInformation1Route({
    Key? key,
    required String firebaseDocId,
    List<PageRouteInfo>? children,
  }) : super(
          PersonalInformation1Route.name,
          args: PersonalInformation1RouteArgs(
            key: key,
            firebaseDocId: firebaseDocId,
          ),
          initialChildren: children,
        );

  static const String name = 'PersonalInformation1Route';

  static const PageInfo<PersonalInformation1RouteArgs> page =
      PageInfo<PersonalInformation1RouteArgs>(name);
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
/// [PersonalInformation4bPage]
class PersonalInformation4bRoute extends PageRouteInfo<void> {
  const PersonalInformation4bRoute({List<PageRouteInfo>? children})
      : super(
          PersonalInformation4bRoute.name,
          initialChildren: children,
        );

  static const String name = 'PersonalInformation4bRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ApplicationCardPage]
class ApplicationCardRoute extends PageRouteInfo<ApplicationCardRouteArgs> {
  ApplicationCardRoute({
    Key? key,
    required DashboardCubit dashboardCubit,
    List<PageRouteInfo>? children,
  }) : super(
          ApplicationCardRoute.name,
          args: ApplicationCardRouteArgs(
            key: key,
            dashboardCubit: dashboardCubit,
          ),
          initialChildren: children,
        );

  static const String name = 'ApplicationCardRoute';

  static const PageInfo<ApplicationCardRouteArgs> page =
      PageInfo<ApplicationCardRouteArgs>(name);
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
/// [DashboardPage]
class DashboardRoute extends PageRouteInfo<void> {
  const DashboardRoute({List<PageRouteInfo>? children})
      : super(
          DashboardRoute.name,
          initialChildren: children,
        );

  static const String name = 'DashboardRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [DTIPdfViewerPage]
class DTIPdfViewerRoute extends PageRouteInfo<DTIPdfViewerRouteArgs> {
  DTIPdfViewerRoute({
    Key? key,
    required String imageUrl,
    bool isNetwork = false,
    Uint8List? bytesImage,
    List<PageRouteInfo>? children,
  }) : super(
          DTIPdfViewerRoute.name,
          args: DTIPdfViewerRouteArgs(
            key: key,
            imageUrl: imageUrl,
            isNetwork: isNetwork,
            bytesImage: bytesImage,
          ),
          initialChildren: children,
        );

  static const String name = 'DTIPdfViewerRoute';

  static const PageInfo<DTIPdfViewerRouteArgs> page =
      PageInfo<DTIPdfViewerRouteArgs>(name);
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
/// [UploadDocumentPage]
class UploadDocumentRoute extends PageRouteInfo<void> {
  const UploadDocumentRoute({List<PageRouteInfo>? children})
      : super(
          UploadDocumentRoute.name,
          initialChildren: children,
        );

  static const String name = 'UploadDocumentRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ChoosePassportPage]
class ChoosePassportRoute extends PageRouteInfo<ChoosePassportRouteArgs> {
  ChoosePassportRoute({
    Key? key,
    List<QuestionnaireModel>? question,
    List<PageRouteInfo>? children,
  }) : super(
          ChoosePassportRoute.name,
          args: ChoosePassportRouteArgs(
            key: key,
            question: question,
          ),
          initialChildren: children,
        );

  static const String name = 'ChoosePassportRoute';

  static const PageInfo<ChoosePassportRouteArgs> page =
      PageInfo<ChoosePassportRouteArgs>(name);
}

class ChoosePassportRouteArgs {
  const ChoosePassportRouteArgs({
    this.key,
    this.question,
  });

  final Key? key;

  final List<QuestionnaireModel>? question;

  @override
  String toString() {
    return 'ChoosePassportRouteArgs{key: $key, question: $question}';
  }
}

/// generated route for
/// [SelfiePage]
class SelfieRoute extends PageRouteInfo<void> {
  const SelfieRoute({List<PageRouteInfo>? children})
      : super(
          SelfieRoute.name,
          initialChildren: children,
        );

  static const String name = 'SelfieRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [PassportPaymentPage]
class PassportPaymentRoute extends PageRouteInfo<PassportPaymentRouteArgs> {
  PassportPaymentRoute({
    Key? key,
    required VisaApplicationModel visa,
    List<PageRouteInfo>? children,
  }) : super(
          PassportPaymentRoute.name,
          args: PassportPaymentRouteArgs(
            key: key,
            visa: visa,
          ),
          initialChildren: children,
        );

  static const String name = 'PassportPaymentRoute';

  static const PageInfo<PassportPaymentRouteArgs> page =
      PageInfo<PassportPaymentRouteArgs>(name);
}

class PassportPaymentRouteArgs {
  const PassportPaymentRouteArgs({
    this.key,
    required this.visa,
  });

  final Key? key;

  final VisaApplicationModel visa;

  @override
  String toString() {
    return 'PassportPaymentRouteArgs{key: $key, visa: $visa}';
  }
}

/// generated route for
/// [PassportDetailPage]
class PassportDetailRoute extends PageRouteInfo<PassportDetailRouteArgs> {
  PassportDetailRoute({
    Key? key,
    required String firebaseDocId,
    List<PageRouteInfo>? children,
  }) : super(
          PassportDetailRoute.name,
          args: PassportDetailRouteArgs(
            key: key,
            firebaseDocId: firebaseDocId,
          ),
          rawPathParams: {'id': firebaseDocId},
          initialChildren: children,
        );

  static const String name = 'PassportDetailRoute';

  static const PageInfo<PassportDetailRouteArgs> page =
      PageInfo<PassportDetailRouteArgs>(name);
}

class PassportDetailRouteArgs {
  const PassportDetailRouteArgs({
    this.key,
    required this.firebaseDocId,
  });

  final Key? key;

  final String firebaseDocId;

  @override
  String toString() {
    return 'PassportDetailRouteArgs{key: $key, firebaseDocId: $firebaseDocId}';
  }
}

/// generated route for
/// [PassportPersonalParticularPage]
class PassportPersonalParticularRoute
    extends PageRouteInfo<PassportPersonalParticularRouteArgs> {
  PassportPersonalParticularRoute({
    Key? key,
    required String firebaseDocId,
    List<PageRouteInfo>? children,
  }) : super(
          PassportPersonalParticularRoute.name,
          args: PassportPersonalParticularRouteArgs(
            key: key,
            firebaseDocId: firebaseDocId,
          ),
          initialChildren: children,
        );

  static const String name = 'PassportPersonalParticularRoute';

  static const PageInfo<PassportPersonalParticularRouteArgs> page =
      PageInfo<PassportPersonalParticularRouteArgs>(name);
}

class PassportPersonalParticularRouteArgs {
  const PassportPersonalParticularRouteArgs({
    this.key,
    required this.firebaseDocId,
  });

  final Key? key;

  final String firebaseDocId;

  @override
  String toString() {
    return 'PassportPersonalParticularRouteArgs{key: $key, firebaseDocId: $firebaseDocId}';
  }
}

/// generated route for
/// [ApplicationDetailPage]
class ApplicationDetailRoute extends PageRouteInfo<ApplicationDetailRouteArgs> {
  ApplicationDetailRoute({
    Key? key,
    required String firebaseDocId,
    List<PageRouteInfo>? children,
  }) : super(
          ApplicationDetailRoute.name,
          args: ApplicationDetailRouteArgs(
            key: key,
            firebaseDocId: firebaseDocId,
          ),
          rawPathParams: {'id': firebaseDocId},
          initialChildren: children,
        );

  static const String name = 'ApplicationDetailRoute';

  static const PageInfo<ApplicationDetailRouteArgs> page =
      PageInfo<ApplicationDetailRouteArgs>(name);
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
    List<PageRouteInfo>? children,
  }) : super(
          SignatureRoute.name,
          args: SignatureRouteArgs(
            key: key,
            visaApplication: visaApplication,
            appDocument: appDocument,
            index: index,
          ),
          initialChildren: children,
        );

  static const String name = 'SignatureRoute';

  static const PageInfo<SignatureRouteArgs> page =
      PageInfo<SignatureRouteArgs>(name);
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
