// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i10;
import 'package:firebase_auth/firebase_auth.dart' as _i12;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i13;
import 'package:injectable/injectable.dart' as _i2;

import 'application/admin/admin_data/admin_data_cubit.dart' as _i4;
import 'application/admin/cubit/admin_cubit.dart' as _i3;
import 'application/admin_application/cubit/admin_application_cubit.dart'
    as _i42;
import 'application/agent/agent_cubit.dart' as _i43;
import 'application/agent/create_new_application_cubit.dart' as _i8;
import 'application/app_list/app_list_cubit.dart' as _i44;
import 'application/application_cubit.dart' as _i6;
import 'application/auth/auth_cubit.dart' as _i45;
import 'application/camera/camera_cubit.dart' as _i7;
import 'application/contact_us/cubit/contact_us_cubit.dart' as _i46;
import 'application/customer/cubit/customer_cubit.dart' as _i47;
import 'application/dashboard/cubit/dashboard_application_cubit.dart' as _i48;
import 'application/dashboard/cubit/dashboard_data_cubit.dart' as _i9;
import 'application/dashboard/dashboard_cubit.dart' as _i49;
import 'application/document/document_cubit.dart' as _i11;
import 'application/feedback/cubit/feedback_cubit.dart' as _i50;
import 'application/global/global_user_cubit.dart' as _i51;
import 'application/other/other_cubit.dart' as _i36;
import 'application/payment/payment_cubit.dart' as _i37;
import 'application/questionnaire_cubit.dart' as _i38;
import 'application/startup/startup_cubit.dart' as _i39;
import 'application/timer/timer_cubit.dart' as _i40;
import 'application/update_application/update_application_cubit.dart' as _i41;
import 'core/analytic_service.dart' as _i5;
import 'core/firebase_injectable_module.dart' as _i52;
import 'domain/admin_application/i_admin_application.dart' as _i14;
import 'domain/agent/i_agent.dart' as _i16;
import 'domain/app_list/i_app_list.dart' as _i18;
import 'domain/auth/i_auth.dart' as _i20;
import 'domain/contact_us/i_contact_us.dart' as _i22;
import 'domain/customer/i_customer.dart' as _i24;
import 'domain/dashboard/i_dashboard.dart' as _i26;
import 'domain/feedback/i_feedback.dart' as _i28;
import 'domain/other/i_other.dart' as _i30;
import 'domain/payment/i_payment.dart' as _i32;
import 'domain/update/i_update_application.dart' as _i34;
import 'infrastructure/admin_application/admin_application_repository.dart'
    as _i15;
import 'infrastructure/agent/agent_repository.dart' as _i17;
import 'infrastructure/app_list/app_list_repository.dart' as _i19;
import 'infrastructure/auth/auth_repository.dart' as _i21;
import 'infrastructure/contact_us/feedback_repository.dart' as _i23;
import 'infrastructure/customer/customer_repository.dart' as _i25;
import 'infrastructure/dashboard/dashboard_repository.dart' as _i27;
import 'infrastructure/feedback/feedback_repository.dart' as _i29;
import 'infrastructure/other/other_repository.dart' as _i31;
import 'infrastructure/payment/payment_repository.dart' as _i33;
import 'infrastructure/update_application/update_application_repository.dart'
    as _i35;

// initializes the registration of main-scope dependencies inside of GetIt
_i1.GetIt $initGetIt(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.factory<_i3.AdminCubit>(() => _i3.AdminCubit());
  gh.factory<_i4.AdminDataCubit>(() => _i4.AdminDataCubit());
  gh.lazySingleton<_i5.AnalyticService>(() => _i5.AnalyticService());
  gh.lazySingleton<_i6.ApplicationCubit>(() => _i6.ApplicationCubit());
  gh.factory<_i7.CameraCubit>(() => _i7.CameraCubit());
  gh.lazySingleton<_i8.CreateNewApplicationCubit>(
      () => _i8.CreateNewApplicationCubit());
  gh.singleton<_i9.DashboardDataCubit>(_i9.DashboardDataCubit());
  gh.lazySingleton<_i10.Dio>(() => firebaseInjectableModule.dio);
  gh.lazySingleton<_i11.DocumentCubit>(() => _i11.DocumentCubit());
  gh.lazySingleton<_i12.FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<_i13.GoogleSignIn>(
      () => firebaseInjectableModule.googleSignIn);
  gh.lazySingleton<_i14.IAdminApplication>(
      () => _i15.AdminApplicationRepository(gh<_i10.Dio>()));
  gh.lazySingleton<_i16.IAgent>(() => _i17.AgentRepository(gh<_i10.Dio>()));
  gh.lazySingleton<_i18.IAppList>(() => _i19.AppListRepository(gh<_i10.Dio>()));
  gh.lazySingleton<_i20.IAuth>(() => _i21.AuthRepository(
        gh<_i13.GoogleSignIn>(),
        gh<_i12.FirebaseAuth>(),
        gh<_i10.Dio>(),
      ));
  gh.lazySingleton<_i22.IContactUs>(
      () => _i23.ContactUsRepository(gh<_i10.Dio>()));
  gh.lazySingleton<_i24.ICustomer>(
      () => _i25.CustomerRepository(gh<_i10.Dio>()));
  gh.lazySingleton<_i26.IDashboard>(() => _i27.DashboardRepository());
  gh.lazySingleton<_i28.IFeedback>(
      () => _i29.FeedbackRepository(gh<_i10.Dio>()));
  gh.lazySingleton<_i30.IOther>(() => _i31.OtherRepository(gh<_i10.Dio>()));
  gh.lazySingleton<_i32.IPayment>(() => _i33.PaymentRepository(gh<_i10.Dio>()));
  gh.lazySingleton<_i34.IUpdateApplication>(
      () => _i35.IUpdateApplicationRepository(gh<_i10.Dio>()));
  gh.factory<_i36.OtherCubit>(() => _i36.OtherCubit(gh<_i30.IOther>()));
  gh.factory<_i37.PaymentCubit>(() => _i37.PaymentCubit(gh<_i32.IPayment>()));
  gh.lazySingleton<_i38.QuestionnaireCubit>(() => _i38.QuestionnaireCubit());
  gh.factory<_i39.StartupCubit>(() => _i39.StartupCubit());
  gh.lazySingleton<_i40.TimerCubit>(() => _i40.TimerCubit(gh<_i30.IOther>()));
  gh.factory<_i41.UpdateApplicationCubit>(
      () => _i41.UpdateApplicationCubit(gh<_i34.IUpdateApplication>()));
  gh.factory<_i42.AdminApplicationCubit>(
      () => _i42.AdminApplicationCubit(gh<_i14.IAdminApplication>()));
  gh.factory<_i43.AgentCubit>(() => _i43.AgentCubit(
        gh<_i16.IAgent>(),
        gh<_i26.IDashboard>(),
      ));
  gh.singleton<_i44.AppListCubit>(_i44.AppListCubit(gh<_i18.IAppList>()));
  gh.factory<_i45.AuthCubit>(() => _i45.AuthCubit(gh<_i20.IAuth>()));
  gh.factory<_i46.ContactUsCubit>(
      () => _i46.ContactUsCubit(gh<_i22.IContactUs>()));
  gh.factory<_i47.CustomerCubit>(
      () => _i47.CustomerCubit(gh<_i24.ICustomer>()));
  gh.singleton<_i48.DashboardApplicationCubit>(
      _i48.DashboardApplicationCubit(gh<_i26.IDashboard>()));
  gh.factory<_i49.DashboardCubit>(
      () => _i49.DashboardCubit(gh<_i26.IDashboard>()));
  gh.factory<_i50.FeedbackCubit>(
      () => _i50.FeedbackCubit(gh<_i28.IFeedback>()));
  gh.lazySingleton<_i51.GlobalUserCubit>(
      () => _i51.GlobalUserCubit(gh<_i30.IOther>()));
  return getIt;
}

class _$FirebaseInjectableModule extends _i52.FirebaseInjectableModule {}
