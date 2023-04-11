// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i5;
import 'package:firebase_auth/firebase_auth.dart' as _i7;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i8;
import 'package:injectable/injectable.dart' as _i2;

import 'application/agent/agent_cubit.dart' as _i29;
import 'application/agent/create_new_application_cubit.dart' as _i4;
import 'application/app_list/app_list_cubit.dart' as _i30;
import 'application/application_cubit.dart' as _i3;
import 'application/auth/auth_cubit.dart' as _i31;
import 'application/dashboard/dashboard_cubit.dart' as _i32;
import 'application/document/document_cubit.dart' as _i6;
import 'application/other/other_cubit.dart' as _i23;
import 'application/payment/payment_cubit.dart' as _i24;
import 'application/questionnaire_cubit.dart' as _i25;
import 'application/startup/startup_cubit.dart' as _i26;
import 'application/timer/timer_cubit.dart' as _i27;
import 'application/update_application/update_application_cubit.dart' as _i28;
import 'core/firebase_injectable_module.dart' as _i33;
import 'domain/agent/i_agent.dart' as _i9;
import 'domain/app_list/i_app_list.dart' as _i11;
import 'domain/auth/i_auth.dart' as _i13;
import 'domain/dashboard/i_dashboard.dart' as _i15;
import 'domain/other/i_other.dart' as _i17;
import 'domain/payment/i_payment.dart' as _i19;
import 'domain/update/i_update_application.dart' as _i21;
import 'infrastructure/agent/agent_repository.dart' as _i10;
import 'infrastructure/app_list/app_list_repository.dart' as _i12;
import 'infrastructure/auth/auth_repository.dart' as _i14;
import 'infrastructure/dashboard/dashboard_repository.dart' as _i16;
import 'infrastructure/other/other_repository.dart' as _i18;
import 'infrastructure/payment/payment_repository.dart' as _i20;
import 'infrastructure/update_application/update_application_repository.dart'
    as _i22;

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
  gh.lazySingleton<_i4.CreateNewApplicationCubit>(
      () => _i4.CreateNewApplicationCubit());
  gh.lazySingleton<_i5.Dio>(() => firebaseInjectableModule.dio);
  gh.lazySingleton<_i6.DocumentCubit>(() => _i6.DocumentCubit());
  gh.lazySingleton<_i7.FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<_i8.GoogleSignIn>(
      () => firebaseInjectableModule.googleSignIn);
  gh.lazySingleton<_i9.IAgent>(() => _i10.AgentRepository(gh<_i5.Dio>()));
  gh.lazySingleton<_i11.IAppList>(() => _i12.AppListRepository(gh<_i5.Dio>()));
  gh.lazySingleton<_i13.IAuth>(() => _i14.AuthRepository(
        gh<_i8.GoogleSignIn>(),
        gh<_i7.FirebaseAuth>(),
      ));
  gh.lazySingleton<_i15.IDashboard>(() => _i16.DashboardRepository());
  gh.lazySingleton<_i17.IOther>(() => _i18.OtherRepository());
  gh.lazySingleton<_i19.IPayment>(() => _i20.PaymentRepository());
  gh.lazySingleton<_i21.IUpdateApplication>(
      () => _i22.IUpdateApplicationRepository());
  gh.factory<_i23.OtherCubit>(() => _i23.OtherCubit(gh<_i17.IOther>()));
  gh.factory<_i24.PaymentCubit>(() => _i24.PaymentCubit(gh<_i19.IPayment>()));
  gh.lazySingleton<_i25.QuestionnaireCubit>(() => _i25.QuestionnaireCubit());
  gh.factory<_i26.StartupCubit>(() => _i26.StartupCubit());
  gh.lazySingleton<_i27.TimerCubit>(() => _i27.TimerCubit(gh<_i17.IOther>()));
  gh.factory<_i28.UpdateApplicationCubit>(
      () => _i28.UpdateApplicationCubit(gh<_i21.IUpdateApplication>()));
  gh.factory<_i29.AgentCubit>(() => _i29.AgentCubit(gh<_i9.IAgent>()));
  gh.factory<_i30.AppListCubit>(() => _i30.AppListCubit(gh<_i11.IAppList>()));
  gh.factory<_i31.AuthCubit>(() => _i31.AuthCubit(gh<_i13.IAuth>()));
  gh.factory<_i32.DashboardCubit>(
      () => _i32.DashboardCubit(gh<_i15.IDashboard>()));
  return getIt;
}

class _$FirebaseInjectableModule extends _i33.FirebaseInjectableModule {}
