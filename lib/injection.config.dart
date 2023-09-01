// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i8;
import 'package:firebase_auth/firebase_auth.dart' as _i10;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i12;
import 'package:injectable/injectable.dart' as _i2;

import 'application/admin/admin_data/admin_data_cubit.dart' as _i4;
import 'application/admin/cubit/admin_cubit.dart' as _i3;
import 'application/admin_application/cubit/admin_application_cubit.dart'
    as _i41;
import 'application/agent/agent_cubit.dart' as _i42;
import 'application/agent/create_new_application_cubit.dart' as _i7;
import 'application/app_list/app_list_cubit.dart' as _i43;
import 'application/application_cubit.dart' as _i5;
import 'application/auth/auth_cubit.dart' as _i44;
import 'application/camera/camera_cubit.dart' as _i6;
import 'application/contact_us/cubit/contact_us_cubit.dart' as _i45;
import 'application/customer/cubit/customer_cubit.dart' as _i46;
import 'application/dashboard/dashboard_cubit.dart' as _i47;
import 'application/document/document_cubit.dart' as _i9;
import 'application/feedback/cubit/feedback_cubit.dart' as _i48;
import 'application/global/global_user_cubit.dart' as _i11;
import 'application/other/other_cubit.dart' as _i35;
import 'application/payment/payment_cubit.dart' as _i36;
import 'application/questionnaire_cubit.dart' as _i37;
import 'application/startup/startup_cubit.dart' as _i38;
import 'application/timer/timer_cubit.dart' as _i39;
import 'application/update_application/update_application_cubit.dart' as _i40;
import 'core/firebase_injectable_module.dart' as _i49;
import 'domain/admin_application/i_admin_application.dart' as _i13;
import 'domain/agent/i_agent.dart' as _i15;
import 'domain/app_list/i_app_list.dart' as _i17;
import 'domain/auth/i_auth.dart' as _i19;
import 'domain/contact_us/i_contact_us.dart' as _i21;
import 'domain/customer/i_customer.dart' as _i23;
import 'domain/dashboard/i_dashboard.dart' as _i25;
import 'domain/feedback/i_feedback.dart' as _i27;
import 'domain/other/i_other.dart' as _i29;
import 'domain/payment/i_payment.dart' as _i31;
import 'domain/update/i_update_application.dart' as _i33;
import 'infrastructure/admin_application/admin_application_repository.dart'
    as _i14;
import 'infrastructure/agent/agent_repository.dart' as _i16;
import 'infrastructure/app_list/app_list_repository.dart' as _i18;
import 'infrastructure/auth/auth_repository.dart' as _i20;
import 'infrastructure/contact_us/feedback_repository.dart' as _i22;
import 'infrastructure/customer/customer_repository.dart' as _i24;
import 'infrastructure/dashboard/dashboard_repository.dart' as _i26;
import 'infrastructure/feedback/feedback_repository.dart' as _i28;
import 'infrastructure/other/other_repository.dart' as _i30;
import 'infrastructure/payment/payment_repository.dart' as _i32;
import 'infrastructure/update_application/update_application_repository.dart'
    as _i34;

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
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
  gh.lazySingleton<_i11.GlobalUserCubit>(() => _i11.GlobalUserCubit());
  gh.lazySingleton<_i12.GoogleSignIn>(
      () => firebaseInjectableModule.googleSignIn);
  gh.lazySingleton<_i13.IAdminApplication>(
      () => _i14.AdminApplicationRepository(gh<_i8.Dio>()));
  gh.lazySingleton<_i15.IAgent>(() => _i16.AgentRepository(gh<_i8.Dio>()));
  gh.lazySingleton<_i17.IAppList>(() => _i18.AppListRepository(gh<_i8.Dio>()));
  gh.lazySingleton<_i19.IAuth>(() => _i20.AuthRepository(
        gh<_i12.GoogleSignIn>(),
        gh<_i10.FirebaseAuth>(),
      ));
  gh.lazySingleton<_i21.IContactUs>(
      () => _i22.ContactUsRepository(gh<_i8.Dio>()));
  gh.lazySingleton<_i23.ICustomer>(
      () => _i24.CustomerRepository(gh<_i8.Dio>()));
  gh.lazySingleton<_i25.IDashboard>(() => _i26.DashboardRepository());
  gh.lazySingleton<_i27.IFeedback>(
      () => _i28.FeedbackRepository(gh<_i8.Dio>()));
  gh.lazySingleton<_i29.IOther>(() => _i30.OtherRepository());
  gh.lazySingleton<_i31.IPayment>(() => _i32.PaymentRepository());
  gh.lazySingleton<_i33.IUpdateApplication>(
      () => _i34.IUpdateApplicationRepository());
  gh.factory<_i35.OtherCubit>(() => _i35.OtherCubit(gh<_i29.IOther>()));
  gh.factory<_i36.PaymentCubit>(() => _i36.PaymentCubit(gh<_i31.IPayment>()));
  gh.lazySingleton<_i37.QuestionnaireCubit>(() => _i37.QuestionnaireCubit());
  gh.factory<_i38.StartupCubit>(() => _i38.StartupCubit());
  gh.lazySingleton<_i39.TimerCubit>(() => _i39.TimerCubit(gh<_i29.IOther>()));
  gh.factory<_i40.UpdateApplicationCubit>(
      () => _i40.UpdateApplicationCubit(gh<_i33.IUpdateApplication>()));
  gh.factory<_i41.AdminApplicationCubit>(
      () => _i41.AdminApplicationCubit(gh<_i13.IAdminApplication>()));
  gh.factory<_i42.AgentCubit>(() => _i42.AgentCubit(
        gh<_i15.IAgent>(),
        gh<_i25.IDashboard>(),
      ));
  gh.singleton<_i43.AppListCubit>(_i43.AppListCubit(gh<_i17.IAppList>()));
  gh.factory<_i44.AuthCubit>(() => _i44.AuthCubit(gh<_i19.IAuth>()));
  gh.factory<_i45.ContactUsCubit>(
      () => _i45.ContactUsCubit(gh<_i21.IContactUs>()));
  gh.factory<_i46.CustomerCubit>(
      () => _i46.CustomerCubit(gh<_i23.ICustomer>()));
  gh.factory<_i47.DashboardCubit>(
      () => _i47.DashboardCubit(gh<_i25.IDashboard>()));
  gh.factory<_i48.FeedbackCubit>(
      () => _i48.FeedbackCubit(gh<_i27.IFeedback>()));
  return getIt;
}

class _$FirebaseInjectableModule extends _i49.FirebaseInjectableModule {}
