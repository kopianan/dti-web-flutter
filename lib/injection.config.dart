// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i6;
import 'package:firebase_auth/firebase_auth.dart' as _i8;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i10;
import 'package:injectable/injectable.dart' as _i2;

import 'application/agent/agent_cubit.dart' as _i31;
import 'application/agent/create_new_application_cubit.dart' as _i5;
import 'application/app_list/app_list_cubit.dart' as _i32;
import 'application/application_cubit.dart' as _i3;
import 'application/auth/auth_cubit.dart' as _i33;
import 'application/camera/camera_cubit.dart' as _i4;
import 'application/dashboard/dashboard_cubit.dart' as _i34;
import 'application/document/document_cubit.dart' as _i7;
import 'application/global/global_user_cubit.dart' as _i9;
import 'application/other/other_cubit.dart' as _i25;
import 'application/payment/payment_cubit.dart' as _i26;
import 'application/questionnaire_cubit.dart' as _i27;
import 'application/startup/startup_cubit.dart' as _i28;
import 'application/timer/timer_cubit.dart' as _i29;
import 'application/update_application/update_application_cubit.dart' as _i30;
import 'core/firebase_injectable_module.dart' as _i35;
import 'domain/agent/i_agent.dart' as _i11;
import 'domain/app_list/i_app_list.dart' as _i13;
import 'domain/auth/i_auth.dart' as _i15;
import 'domain/dashboard/i_dashboard.dart' as _i17;
import 'domain/other/i_other.dart' as _i19;
import 'domain/payment/i_payment.dart' as _i21;
import 'domain/update/i_update_application.dart' as _i23;
import 'infrastructure/agent/agent_repository.dart' as _i12;
import 'infrastructure/app_list/app_list_repository.dart' as _i14;
import 'infrastructure/auth/auth_repository.dart' as _i16;
import 'infrastructure/dashboard/dashboard_repository.dart' as _i18;
import 'infrastructure/other/other_repository.dart' as _i20;
import 'infrastructure/payment/payment_repository.dart' as _i22;
import 'infrastructure/update_application/update_application_repository.dart'
    as _i24;

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
  gh.lazySingleton<_i3.ApplicationCubit>(() => _i3.ApplicationCubit());
  gh.factory<_i4.CameraCubit>(() => _i4.CameraCubit());
  gh.lazySingleton<_i5.CreateNewApplicationCubit>(
      () => _i5.CreateNewApplicationCubit());
  gh.lazySingleton<_i6.Dio>(() => firebaseInjectableModule.dio);
  gh.lazySingleton<_i7.DocumentCubit>(() => _i7.DocumentCubit());
  gh.lazySingleton<_i8.FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<_i9.GlobalUserCubit>(() => _i9.GlobalUserCubit());
  gh.lazySingleton<_i10.GoogleSignIn>(
      () => firebaseInjectableModule.googleSignIn);
  gh.lazySingleton<_i11.IAgent>(() => _i12.AgentRepository(gh<_i6.Dio>()));
  gh.lazySingleton<_i13.IAppList>(() => _i14.AppListRepository(gh<_i6.Dio>()));
  gh.lazySingleton<_i15.IAuth>(() => _i16.AuthRepository(
        gh<_i10.GoogleSignIn>(),
        gh<_i8.FirebaseAuth>(),
      ));
  gh.lazySingleton<_i17.IDashboard>(() => _i18.DashboardRepository());
  gh.lazySingleton<_i19.IOther>(() => _i20.OtherRepository());
  gh.lazySingleton<_i21.IPayment>(() => _i22.PaymentRepository());
  gh.lazySingleton<_i23.IUpdateApplication>(
      () => _i24.IUpdateApplicationRepository());
  gh.factory<_i25.OtherCubit>(() => _i25.OtherCubit(gh<_i19.IOther>()));
  gh.factory<_i26.PaymentCubit>(() => _i26.PaymentCubit(gh<_i21.IPayment>()));
  gh.lazySingleton<_i27.QuestionnaireCubit>(() => _i27.QuestionnaireCubit());
  gh.factory<_i28.StartupCubit>(() => _i28.StartupCubit());
  gh.lazySingleton<_i29.TimerCubit>(() => _i29.TimerCubit(gh<_i19.IOther>()));
  gh.factory<_i30.UpdateApplicationCubit>(
      () => _i30.UpdateApplicationCubit(gh<_i23.IUpdateApplication>()));
  gh.factory<_i31.AgentCubit>(() => _i31.AgentCubit(
        gh<_i11.IAgent>(),
        gh<_i17.IDashboard>(),
      ));
  gh.factory<_i32.AppListCubit>(() => _i32.AppListCubit(gh<_i13.IAppList>()));
  gh.factory<_i33.AuthCubit>(() => _i33.AuthCubit(gh<_i15.IAuth>()));
  gh.factory<_i34.DashboardCubit>(
      () => _i34.DashboardCubit(gh<_i17.IDashboard>()));
  return getIt;
}

class _$FirebaseInjectableModule extends _i35.FirebaseInjectableModule {}
