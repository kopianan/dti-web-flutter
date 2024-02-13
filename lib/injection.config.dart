// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i8;
import 'package:firebase_auth/firebase_auth.dart' as _i10;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i11;
import 'package:injectable/injectable.dart' as _i2;

import 'application/admin/admin_data/admin_data_cubit.dart' as _i4;
import 'application/admin/cubit/admin_cubit.dart' as _i3;
import 'application/admin_application/cubit/admin_application_cubit.dart'
    as _i40;
import 'application/agent/agent_cubit.dart' as _i41;
import 'application/agent/create_new_application_cubit.dart' as _i7;
import 'application/app_list/app_list_cubit.dart' as _i42;
import 'application/application_cubit.dart' as _i5;
import 'application/auth/auth_cubit.dart' as _i43;
import 'application/camera/camera_cubit.dart' as _i6;
import 'application/contact_us/cubit/contact_us_cubit.dart' as _i44;
import 'application/customer/cubit/customer_cubit.dart' as _i45;
import 'application/dashboard/dashboard_cubit.dart' as _i46;
import 'application/document/document_cubit.dart' as _i9;
import 'application/feedback/cubit/feedback_cubit.dart' as _i47;
import 'application/global/global_user_cubit.dart' as _i48;
import 'application/other/other_cubit.dart' as _i34;
import 'application/payment/payment_cubit.dart' as _i35;
import 'application/questionnaire_cubit.dart' as _i36;
import 'application/startup/startup_cubit.dart' as _i37;
import 'application/timer/timer_cubit.dart' as _i38;
import 'application/update_application/update_application_cubit.dart' as _i39;
import 'core/firebase_injectable_module.dart' as _i49;
import 'domain/admin_application/i_admin_application.dart' as _i12;
import 'domain/agent/i_agent.dart' as _i14;
import 'domain/app_list/i_app_list.dart' as _i16;
import 'domain/auth/i_auth.dart' as _i18;
import 'domain/contact_us/i_contact_us.dart' as _i20;
import 'domain/customer/i_customer.dart' as _i22;
import 'domain/dashboard/i_dashboard.dart' as _i24;
import 'domain/feedback/i_feedback.dart' as _i26;
import 'domain/other/i_other.dart' as _i28;
import 'domain/payment/i_payment.dart' as _i30;
import 'domain/update/i_update_application.dart' as _i32;
import 'infrastructure/admin_application/admin_application_repository.dart'
    as _i13;
import 'infrastructure/agent/agent_repository.dart' as _i15;
import 'infrastructure/app_list/app_list_repository.dart' as _i17;
import 'infrastructure/auth/auth_repository.dart' as _i19;
import 'infrastructure/contact_us/feedback_repository.dart' as _i21;
import 'infrastructure/customer/customer_repository.dart' as _i23;
import 'infrastructure/dashboard/dashboard_repository.dart' as _i25;
import 'infrastructure/feedback/feedback_repository.dart' as _i27;
import 'infrastructure/other/other_repository.dart' as _i29;
import 'infrastructure/payment/payment_repository.dart' as _i31;
import 'infrastructure/update_application/update_application_repository.dart'
    as _i33;

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
  gh.lazySingleton<_i5.ApplicationCubit>(() => _i5.ApplicationCubit());
  gh.factory<_i6.CameraCubit>(() => _i6.CameraCubit());
  gh.lazySingleton<_i7.CreateNewApplicationCubit>(
      () => _i7.CreateNewApplicationCubit());
  gh.lazySingleton<_i8.Dio>(() => firebaseInjectableModule.dio);
  gh.lazySingleton<_i9.DocumentCubit>(() => _i9.DocumentCubit());
  gh.lazySingleton<_i10.FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<_i11.GoogleSignIn>(
      () => firebaseInjectableModule.googleSignIn);
  gh.lazySingleton<_i12.IAdminApplication>(
      () => _i13.AdminApplicationRepository(gh<_i8.Dio>()));
  gh.lazySingleton<_i14.IAgent>(() => _i15.AgentRepository(gh<_i8.Dio>()));
  gh.lazySingleton<_i16.IAppList>(() => _i17.AppListRepository(gh<_i8.Dio>()));
  gh.lazySingleton<_i18.IAuth>(() => _i19.AuthRepository(
        gh<_i11.GoogleSignIn>(),
        gh<_i10.FirebaseAuth>(),
        gh<_i8.Dio>(),
      ));
  gh.lazySingleton<_i20.IContactUs>(
      () => _i21.ContactUsRepository(gh<_i8.Dio>()));
  gh.lazySingleton<_i22.ICustomer>(
      () => _i23.CustomerRepository(gh<_i8.Dio>()));
  gh.lazySingleton<_i24.IDashboard>(() => _i25.DashboardRepository());
  gh.lazySingleton<_i26.IFeedback>(
      () => _i27.FeedbackRepository(gh<_i8.Dio>()));
  gh.lazySingleton<_i28.IOther>(() => _i29.OtherRepository(gh<_i8.Dio>()));
  gh.lazySingleton<_i30.IPayment>(() => _i31.PaymentRepository(gh<_i8.Dio>()));
  gh.lazySingleton<_i32.IUpdateApplication>(
      () => _i33.IUpdateApplicationRepository(gh<_i8.Dio>()));
  gh.factory<_i34.OtherCubit>(() => _i34.OtherCubit(gh<_i28.IOther>()));
  gh.factory<_i35.PaymentCubit>(() => _i35.PaymentCubit(gh<_i30.IPayment>()));
  gh.lazySingleton<_i36.QuestionnaireCubit>(() => _i36.QuestionnaireCubit());
  gh.factory<_i37.StartupCubit>(() => _i37.StartupCubit());
  gh.lazySingleton<_i38.TimerCubit>(() => _i38.TimerCubit(gh<_i28.IOther>()));
  gh.factory<_i39.UpdateApplicationCubit>(
      () => _i39.UpdateApplicationCubit(gh<_i32.IUpdateApplication>()));
  gh.factory<_i40.AdminApplicationCubit>(
      () => _i40.AdminApplicationCubit(gh<_i12.IAdminApplication>()));
  gh.factory<_i41.AgentCubit>(() => _i41.AgentCubit(
        gh<_i14.IAgent>(),
        gh<_i24.IDashboard>(),
      ));
  gh.singleton<_i42.AppListCubit>(_i42.AppListCubit(gh<_i16.IAppList>()));
  gh.factory<_i43.AuthCubit>(() => _i43.AuthCubit(gh<_i18.IAuth>()));
  gh.factory<_i44.ContactUsCubit>(
      () => _i44.ContactUsCubit(gh<_i20.IContactUs>()));
  gh.factory<_i45.CustomerCubit>(
      () => _i45.CustomerCubit(gh<_i22.ICustomer>()));
  gh.lazySingleton<_i46.DashboardCubit>(
      () => _i46.DashboardCubit(gh<_i24.IDashboard>()));
  gh.factory<_i47.FeedbackCubit>(
      () => _i47.FeedbackCubit(gh<_i26.IFeedback>()));
  gh.lazySingleton<_i48.GlobalUserCubit>(
      () => _i48.GlobalUserCubit(gh<_i28.IOther>()));
  return getIt;
}

class _$FirebaseInjectableModule extends _i49.FirebaseInjectableModule {}
