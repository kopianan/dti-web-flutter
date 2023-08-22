// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i7;
import 'package:firebase_auth/firebase_auth.dart' as _i9;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i11;
import 'package:injectable/injectable.dart' as _i2;

import 'application/admin/cubit/admin_cubit.dart' as _i3;
import 'application/agent/agent_cubit.dart' as _i38;
import 'application/agent/create_new_application_cubit.dart' as _i6;
import 'application/app_list/app_list_cubit.dart' as _i39;
import 'application/application_cubit.dart' as _i4;
import 'application/auth/auth_cubit.dart' as _i40;
import 'application/camera/camera_cubit.dart' as _i5;
import 'application/contact_us/cubit/contact_us_cubit.dart' as _i41;
import 'application/customer/cubit/customer_cubit.dart' as _i42;
import 'application/dashboard/dashboard_cubit.dart' as _i43;
import 'application/document/document_cubit.dart' as _i8;
import 'application/feedback/cubit/feedback_cubit.dart' as _i44;
import 'application/global/global_user_cubit.dart' as _i10;
import 'application/other/other_cubit.dart' as _i32;
import 'application/payment/payment_cubit.dart' as _i33;
import 'application/questionnaire_cubit.dart' as _i34;
import 'application/startup/startup_cubit.dart' as _i35;
import 'application/timer/timer_cubit.dart' as _i36;
import 'application/update_application/update_application_cubit.dart' as _i37;
import 'core/firebase_injectable_module.dart' as _i45;
import 'domain/agent/i_agent.dart' as _i12;
import 'domain/app_list/i_app_list.dart' as _i14;
import 'domain/auth/i_auth.dart' as _i16;
import 'domain/contact_us/i_contact_us.dart' as _i18;
import 'domain/customer/i_customer.dart' as _i20;
import 'domain/dashboard/i_dashboard.dart' as _i22;
import 'domain/feedback/i_feedback.dart' as _i24;
import 'domain/other/i_other.dart' as _i26;
import 'domain/payment/i_payment.dart' as _i28;
import 'domain/update/i_update_application.dart' as _i30;
import 'infrastructure/agent/agent_repository.dart' as _i13;
import 'infrastructure/app_list/app_list_repository.dart' as _i15;
import 'infrastructure/auth/auth_repository.dart' as _i17;
import 'infrastructure/contact_us/feedback_repository.dart' as _i19;
import 'infrastructure/customer/customer_repository.dart' as _i21;
import 'infrastructure/dashboard/dashboard_repository.dart' as _i23;
import 'infrastructure/feedback/feedback_repository.dart' as _i25;
import 'infrastructure/other/other_repository.dart' as _i27;
import 'infrastructure/payment/payment_repository.dart' as _i29;
import 'infrastructure/update_application/update_application_repository.dart'
    as _i31;

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
  gh.lazySingleton<_i4.ApplicationCubit>(() => _i4.ApplicationCubit());
  gh.factory<_i5.CameraCubit>(() => _i5.CameraCubit());
  gh.lazySingleton<_i6.CreateNewApplicationCubit>(
      () => _i6.CreateNewApplicationCubit());
  gh.lazySingleton<_i7.Dio>(() => firebaseInjectableModule.dio);
  gh.lazySingleton<_i8.DocumentCubit>(() => _i8.DocumentCubit());
  gh.lazySingleton<_i9.FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  gh.singleton<_i10.GlobalUserCubit>(_i10.GlobalUserCubit());
  gh.lazySingleton<_i11.GoogleSignIn>(
      () => firebaseInjectableModule.googleSignIn);
  gh.lazySingleton<_i12.IAgent>(() => _i13.AgentRepository(gh<_i7.Dio>()));
  gh.lazySingleton<_i14.IAppList>(() => _i15.AppListRepository(gh<_i7.Dio>()));
  gh.lazySingleton<_i16.IAuth>(() => _i17.AuthRepository(
        gh<_i11.GoogleSignIn>(),
        gh<_i9.FirebaseAuth>(),
      ));
  gh.lazySingleton<_i18.IContactUs>(
      () => _i19.ContactUsRepository(gh<_i7.Dio>()));
  gh.lazySingleton<_i20.ICustomer>(
      () => _i21.CustomerRepository(gh<_i7.Dio>()));
  gh.lazySingleton<_i22.IDashboard>(() => _i23.DashboardRepository());
  gh.lazySingleton<_i24.IFeedback>(
      () => _i25.FeedbackRepository(gh<_i7.Dio>()));
  gh.lazySingleton<_i26.IOther>(() => _i27.OtherRepository());
  gh.lazySingleton<_i28.IPayment>(() => _i29.PaymentRepository());
  gh.lazySingleton<_i30.IUpdateApplication>(
      () => _i31.IUpdateApplicationRepository());
  gh.factory<_i32.OtherCubit>(() => _i32.OtherCubit(gh<_i26.IOther>()));
  gh.factory<_i33.PaymentCubit>(() => _i33.PaymentCubit(gh<_i28.IPayment>()));
  gh.lazySingleton<_i34.QuestionnaireCubit>(() => _i34.QuestionnaireCubit());
  gh.factory<_i35.StartupCubit>(() => _i35.StartupCubit());
  gh.lazySingleton<_i36.TimerCubit>(() => _i36.TimerCubit(gh<_i26.IOther>()));
  gh.factory<_i37.UpdateApplicationCubit>(
      () => _i37.UpdateApplicationCubit(gh<_i30.IUpdateApplication>()));
  gh.factory<_i38.AgentCubit>(() => _i38.AgentCubit(
        gh<_i12.IAgent>(),
        gh<_i22.IDashboard>(),
      ));
  gh.singleton<_i39.AppListCubit>(_i39.AppListCubit(gh<_i14.IAppList>()));
  gh.factory<_i40.AuthCubit>(() => _i40.AuthCubit(gh<_i16.IAuth>()));
  gh.factory<_i41.ContactUsCubit>(
      () => _i41.ContactUsCubit(gh<_i18.IContactUs>()));
  gh.factory<_i42.CustomerCubit>(
      () => _i42.CustomerCubit(gh<_i20.ICustomer>()));
  gh.factory<_i43.DashboardCubit>(
      () => _i43.DashboardCubit(gh<_i22.IDashboard>()));
  gh.factory<_i44.FeedbackCubit>(
      () => _i44.FeedbackCubit(gh<_i24.IFeedback>()));
  return getIt;
}

class _$FirebaseInjectableModule extends _i45.FirebaseInjectableModule {}
