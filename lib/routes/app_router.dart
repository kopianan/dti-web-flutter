import 'package:auto_route/auto_route.dart';
import 'package:auto_route/annotations.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:dti_web/application/dashboard/dashboard_cubit.dart';
import 'package:dti_web/application/document/document_cubit.dart';
import 'package:dti_web/domain/core/visa_application_model.dart';
import 'package:dti_web/domain/core/document_data_model.dart';
import 'package:dti_web/domain/questionnaire/result_model.dart';
import 'package:dti_web/presentation/applications/application_detail_page.dart';
import 'package:dti_web/presentation/applications/upload_document_page.dart';
import 'package:dti_web/presentation/applications/widgets/signature_page.dart';
import 'package:dti_web/presentation/auth/pages/phone/number_registration_page.dart';
import 'package:dti_web/presentation/auth/pages/platform/platform_page.dart';
import 'package:dti_web/presentation/auth/pages/splash_screen_page.dart';
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
import 'package:dti_web/presentation/questionnaire/submit_screen_page.dart';
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
// import 'package:auto_route/annotations.dart';

part "app_router.gr.dart";

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      initial: true,
      path: '/',
      // path: '/asdf',
      page: SplashScreenPage,
    ),
    AutoRoute(
      path: DashboardPage.routeName,
      page: DashboardPage,
    ),
    AutoRoute(
      // initial: true,
      // path: '/',
      path: PlatformPage.routeName,
      page: PlatformPage,
    ),
    AutoRoute(
      path: VOASummaryPage.routeName,
      page: VOASummaryPage,
    ),
    AutoRoute(
      page: ApplicationDetailPage,
      path: ApplicationDetailPage.routeName,
    ),
    AutoRoute(
      page: SignaturePage,
      path: SignaturePage.routeName,
    ),
    // AutoRoute(
    //   page: SubmitScreenPage,
    //   path: SubmitScreenPage.routeName,
    // ),
    AutoRoute(
      page: UserDomicilePage,
      path: UserDomicilePage.routeName,
    ),
    AutoRoute(
      page: GuarantorPage,
      path: GuarantorPage.routeName,
    ),
    AutoRoute(
        page: PersonalInformation2Page,
        path: PersonalInformation2Page.routeName),
    AutoRoute(
        page: PersonalInformation4Page,
        path: PersonalInformation4Page.routeName),
    AutoRoute(
        page: PersonalInformation4bPage,
        path: PersonalInformation4bPage.routeName),
    AutoRoute(page: ApplicationCardPage, path: ApplicationCardPage.routeName),
    AutoRoute(page: PaymentPage, path: PaymentPage.routeName),
    AutoRoute(
      page: PersonalInformation3Page,
      path: PersonalInformation3Page.routeName,
    ),
    AutoRoute(
      page: PersonalInformation1Page,
    ),
    AutoRoute(
      path: SignInPage.routeName,
      page: SignInPage,
    ),

    AutoRoute(
      path: UploadDocumentPage.routeName,
      page: UploadDocumentPage,
    ),
    AutoRoute(
      path: NumberRegistrationPage.routeName,
      page: NumberRegistrationPage,
    ),
    AutoRoute(
      path: DTIPdfViewerPage.routeName,
      page: DTIPdfViewerPage,
    ),
    AutoRoute(
        page: PhotoViewPage,
        path: PhotoViewPage.routeName,
        fullscreenDialog: true),
    AutoRoute(
        page: QuestionnaireSummaryPage,
        path: QuestionnaireSummaryPage.routeName),
    AutoRoute(
      page: QuestionnairePage,
      path: QuestionnairePage.routeName,
    ),
    AutoRoute(
      page: SignUpPage,
      path: SignUpPage.routeName,
    ),
    AutoRoute(page: ResetPage, path: ResetPage.routeName),
    AutoRoute(page: OTPPage, path: OTPPage.routeName),
    AutoRoute(page: LandingPage, path: LandingPage.routeName),
    AutoRoute(page: CheckEmailPage, path: CheckEmailPage.routeName),
    AutoRoute(
        page: CreateNewPasswordPage, path: CreateNewPasswordPage.routeName),
  ],
)
class AppRouter extends _$AppRouter {}
