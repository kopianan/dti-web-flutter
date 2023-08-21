import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:dti_web/application/dashboard/dashboard_cubit.dart';
import 'package:dti_web/core/storage.dart';
import 'package:dti_web/domain/core/visa_application_model.dart';
import 'package:dti_web/domain/core/document_data_model.dart';
import 'package:dti_web/domain/questionnaire/result_model.dart';
import 'package:dti_web/presentation/applications/application_detail_page.dart';
import 'package:dti_web/presentation/applications/passport/choose_passport_page.dart';
import 'package:dti_web/presentation/applications/passport/passport_detail_page.dart';
import 'package:dti_web/presentation/applications/passport/passport_payment_page.dart';
import 'package:dti_web/presentation/applications/passport/passport_personal_particular_page.dart';
import 'package:dti_web/presentation/applications/passport/selfie_page.dart';
import 'package:dti_web/presentation/applications/upload_document_page.dart';
import 'package:dti_web/presentation/applications/widgets/signature_page.dart';
import 'package:dti_web/presentation/auth/pages/phone/number_registration_page.dart';
import 'package:dti_web/presentation/auth/pages/platform/platform_page.dart';
import 'package:dti_web/presentation/auth/pages/splash_screen_page.dart';
import 'package:dti_web/presentation/camera/camera_page.dart';
import 'package:dti_web/presentation/corporate/application/admin_application_page.dart';
import 'package:dti_web/presentation/corporate/application/application_page.dart';
import 'package:dti_web/presentation/corporate/c_dashboard_page.dart';
import 'package:dti_web/presentation/corporate/create_application/create_application_page.dart';
import 'package:dti_web/presentation/corporate/customer/admin_customer_page.dart';
import 'package:dti_web/presentation/corporate/home/agent_home_page.dart';
import 'package:dti_web/presentation/dashboard/pages/application_card_page.dart';
import 'package:dti_web/presentation/payment/payment_page.dart';
import 'package:dti_web/presentation/questionnaire/guarantor_page.dart';
import 'package:dti_web/presentation/questionnaire/personal_information_1_page.dart';
import 'package:dti_web/presentation/questionnaire/personal_information_3_page.dart';
import 'package:dti_web/presentation/questionnaire/personal_information_4_page.dart';
import 'package:dti_web/presentation/questionnaire/personal_information_4b_page.dart';
import 'package:dti_web/presentation/questionnaire/photo_view_page.dart';
import 'package:dti_web/presentation/questionnaire/questionnaire_page.dart';
import 'package:dti_web/presentation/questionnaire/questionnaire_summary_page.dart';
import 'package:dti_web/presentation/questionnaire/user_domicile_page.dart';
import 'package:dti_web/presentation/questionnaire/voa_summary_page.dart';
import 'package:dti_web/presentation/viewer/dti_pdf_viewer_page.dart';
import 'package:flutter/material.dart';
import 'package:dti_web/domain/questionnaire/questionnaire_model.dart';
import 'package:flutter/services.dart';

import '../presentation/auth/pages/check_email_page.dart';
import '../presentation/auth/pages/create_new_password_page.dart';
import '../presentation/auth/pages/phone/otp_page.dart';
import '../presentation/auth/pages/reset_page.dart';
import '../presentation/auth/pages/sign_in/sign_in_page.dart';
import '../presentation/auth/pages/sign_up_page.dart';
import '../presentation/dashboard/pages/dashboard_page.dart';
import '../presentation/landing/presentation/pages/landing_page.dart';
import '../presentation/questionnaire/personal_information_2_page.dart';
import 'agent_guard.dart';
import 'user_only_guard.dart';
// import 'package:auto_route/annotations.dart';

part "app_router.gr.dart";

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends _$AppRouter implements AutoRouteGuard {
  final Storage storage = Storage();
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    log("navigate");

    final token = storage.getToken();
    log(token.toString(), name: "TOKEN");
    if (token != null || authRouteExcept.contains(resolver.route.name)) {
      resolver.next();
    } else {
      router.replaceAll([const SignInRoute()]);
    }
  }

  List<String> authRouteExcept = [
    SignInRoute.name,
    SignUpRoute.name,
    SplashScreenRoute.name,
    ResetRoute.name,
    SplashScreenRoute.name,
    CreateNewPasswordRoute.name,
    CheckEmailRoute.name
  ];

  @override
  RouteType get defaultRouteType => const RouteType.material();
  @override
  final List<AutoRoute> routes = [
    CustomRoute(
      durationInMilliseconds: 0,
      reverseDurationInMilliseconds: 0,
      path: '/agent-dashboard',
      page: CDashboardRoute.page,
      guards: [AgentGuard()],
      children: [
        AutoRoute(
          path: 'create-application',
          page: CreateApplicationRoute.page,
        ),
        AutoRoute(
          path: 'agent-home',
          page: AgentHomeRoute.page,
        ),
        AutoRoute(
          path: 'application',
          page: ApplicationRoute.page,
        ),
        AutoRoute(
          path: 'admin-application',
          page: AdminApplicationRoute.page,
        ),
        AutoRoute(
          path: 'admin-customer',
          page: AdminCustomerRoute.page,
        ),
      ],
    ),
    AutoRoute(path: '/', page: SplashScreenRoute.page),
    AutoRoute(
      path: '/camera',
      page: CameraRoute.page,
    ),
    AutoRoute(path: SelfiePage.routeName, page: SelfieRoute.page),
    AutoRoute(
        path: PassportPaymentPage.routeName, page: PassportPaymentRoute.page),
    AutoRoute(
        path: PassportDetailPage.routeName, page: PassportDetailRoute.page),
    AutoRoute(
        path: ChoosePassportPage.routeName, page: ChoosePassportRoute.page),
    AutoRoute(
        path: PassportPersonalParticularPage.routeName,
        page: PassportPersonalParticularRoute.page),
    AutoRoute(
        path: DashboardPage.routeName,
        page: DashboardRoute.page,
        guards: [UserOnlyGuard()]),
    AutoRoute(path: PlatformPage.routeName, page: PlatformRoute.page),
    AutoRoute(path: VOASummaryPage.routeName, page: VOASummaryRoute.page),
    AutoRoute(
        page: ApplicationDetailRoute.page,
        path: ApplicationDetailPage.routeName),
    AutoRoute(page: SignatureRoute.page, path: SignaturePage.routeName),
    AutoRoute(page: UserDomicileRoute.page, path: UserDomicilePage.routeName),
    AutoRoute(page: GuarantorRoute.page, path: GuarantorPage.routeName),
    AutoRoute(
        page: PersonalInformation2Route.page,
        path: PersonalInformation2Page.routeName),
    AutoRoute(
        page: PersonalInformation4Route.page,
        path: PersonalInformation4Page.routeName),
    AutoRoute(
        page: PersonalInformation4bRoute.page,
        path: PersonalInformation4bPage.routeName),
    AutoRoute(
        page: ApplicationCardRoute.page, path: ApplicationCardPage.routeName),
    AutoRoute(page: PaymentRoute.page, path: PaymentPage.routeName),
    AutoRoute(
        page: PersonalInformation3Route.page,
        path: PersonalInformation3Page.routeName),
    AutoRoute(
        page: PersonalInformation1Route.page,
        path: PersonalInformation1Page.routeName),
    AutoRoute(path: SignInPage.routeName, page: SignInRoute.page),
    AutoRoute(
        path: UploadDocumentPage.routeName, page: UploadDocumentRoute.page),
    AutoRoute(
        path: NumberRegistrationPage.routeName,
        page: NumberRegistrationRoute.page),
    AutoRoute(path: DTIPdfViewerPage.routeName, page: DTIPdfViewerRoute.page),
    AutoRoute(
        page: PhotoViewRoute.page,
        path: PhotoViewPage.routeName,
        fullscreenDialog: true),
    AutoRoute(
        page: QuestionnaireSummaryRoute.page,
        path: QuestionnaireSummaryPage.routeName),
    AutoRoute(page: QuestionnaireRoute.page, path: QuestionnairePage.routeName),
    AutoRoute(page: SignUpRoute.page, path: SignUpPage.routeName),
    AutoRoute(page: ResetRoute.page, path: ResetPage.routeName),
    AutoRoute(page: OTPRoute.page, path: OTPPage.routeName),
    AutoRoute(page: LandingRoute.page, path: LandingPage.routeName),
    AutoRoute(page: CheckEmailRoute.page, path: CheckEmailPage.routeName),
    AutoRoute(
        page: CreateNewPasswordRoute.page,
        path: CreateNewPasswordPage.routeName),
  ];
}
