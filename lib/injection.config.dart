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
import 'application/agent/agent_cubit.dart' as _i34;
import 'application/agent/create_new_application_cubit.dart' as _i6;
import 'application/app_list/app_list_cubit.dart' as _i35;
import 'application/application_cubit.dart' as _i4;
import 'application/auth/auth_cubit.dart' as _i36;
import 'application/camera/camera_cubit.dart' as _i5;
import 'application/customer/cubit/customer_cubit.dart' as _i37;
import 'application/dashboard/dashboard_cubit.dart' as _i38;
import 'application/document/document_cubit.dart' as _i8;
import 'application/global/global_user_cubit.dart' as _i10;
import 'application/other/other_cubit.dart' as _i28;
import 'application/payment/payment_cubit.dart' as _i29;
import 'application/questionnaire_cubit.dart' as _i30;
import 'application/startup/startup_cubit.dart' as _i31;
import 'application/timer/timer_cubit.dart' as _i32;
import 'application/update_application/update_application_cubit.dart' as _i33;
import 'core/firebase_injectable_module.dart' as _i39;
import 'domain/agent/i_agent.dart' as _i12;
import 'domain/app_list/i_app_list.dart' as _i14;
import 'domain/auth/i_auth.dart' as _i16;
import 'domain/customer/i_customer.dart' as _i18;
import 'domain/dashboard/i_dashboard.dart' as _i20;
import 'domain/other/i_other.dart' as _i22;
import 'domain/payment/i_payment.dart' as _i24;
import 'domain/update/i_update_application.dart' as _i26;
import 'infrastructure/agent/agent_repository.dart' as _i13;
import 'infrastructure/app_list/app_list_repository.dart' as _i15;
import 'infrastructure/auth/auth_repository.dart' as _i17;
import 'infrastructure/customer/customer_repository.dart' as _i19;
import 'infrastructure/dashboard/dashboard_repository.dart' as _i21;
import 'infrastructure/other/other_repository.dart' as _i23;
import 'infrastructure/payment/payment_repository.dart' as _i25;
import 'infrastructure/update_application/update_application_repository.dart'
    as _i27;

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
  gh.lazySingleton<_i18.ICustomer>(
      () => _i19.CustomerRepository(gh<_i7.Dio>()));
  gh.lazySingleton<_i20.IDashboard>(() => _i21.DashboardRepository());
  gh.lazySingleton<_i22.IOther>(() => _i23.OtherRepository());
  gh.lazySingleton<_i24.IPayment>(() => _i25.PaymentRepository());
  gh.lazySingleton<_i26.IUpdateApplication>(
      () => _i27.IUpdateApplicationRepository());
  gh.factory<_i28.OtherCubit>(() => _i28.OtherCubit(gh<_i22.IOther>()));
  gh.factory<_i29.PaymentCubit>(() => _i29.PaymentCubit(gh<_i24.IPayment>()));
  gh.lazySingleton<_i30.QuestionnaireCubit>(() => _i30.QuestionnaireCubit());
  gh.factory<_i31.StartupCubit>(() => _i31.StartupCubit());
  gh.lazySingleton<_i32.TimerCubit>(() => _i32.TimerCubit(gh<_i22.IOther>()));
  gh.factory<_i33.UpdateApplicationCubit>(
      () => _i33.UpdateApplicationCubit(gh<_i26.IUpdateApplication>()));
  gh.factory<_i34.AgentCubit>(() => _i34.AgentCubit(
        gh<_i12.IAgent>(),
        gh<_i20.IDashboard>(),
      ));
  gh.singleton<_i35.AppListCubit>(_i35.AppListCubit(gh<_i14.IAppList>()));
  gh.factory<_i36.AuthCubit>(() => _i36.AuthCubit(gh<_i16.IAuth>()));
  gh.factory<_i37.CustomerCubit>(
      () => _i37.CustomerCubit(gh<_i18.ICustomer>()));
  gh.factory<_i38.DashboardCubit>(
      () => _i38.DashboardCubit(gh<_i20.IDashboard>()));
  return getIt;
}

class _$FirebaseInjectableModule extends _i39.FirebaseInjectableModule {}
