// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i5;
import 'package:firebase_auth/firebase_auth.dart' as _i7;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i8;
import 'package:injectable/injectable.dart' as _i2;

import 'application/agent/create_new_application_cubit.dart' as _i4;
import 'application/app_list/app_list_cubit.dart' as _i27;
import 'application/application_cubit.dart' as _i3;
import 'application/auth/auth_cubit.dart' as _i28;
import 'application/dashboard/dashboard_cubit.dart' as _i29;
import 'application/document/document_cubit.dart' as _i6;
import 'application/other/other_cubit.dart' as _i21;
import 'application/payment/payment_cubit.dart' as _i22;
import 'application/questionnaire_cubit.dart' as _i23;
import 'application/startup/startup_cubit.dart' as _i24;
import 'application/timer/timer_cubit.dart' as _i25;
import 'application/update_application/update_application_cubit.dart' as _i26;
import 'core/firebase_injectable_module.dart' as _i30;
import 'domain/app_list/i_app_list.dart' as _i9;
import 'domain/auth/i_auth.dart' as _i11;
import 'domain/dashboard/i_dashboard.dart' as _i13;
import 'domain/other/i_other.dart' as _i15;
import 'domain/payment/i_payment.dart' as _i17;
import 'domain/update/i_update_application.dart' as _i19;
import 'infrastructure/app_list/app_list_repository.dart' as _i10;
import 'infrastructure/auth/auth_repository.dart' as _i12;
import 'infrastructure/dashboard/dashboard_repository.dart' as _i14;
import 'infrastructure/other/other_repository.dart' as _i16;
import 'infrastructure/payment/payment_repository.dart' as _i18;
import 'infrastructure/update_application/update_application_repository.dart'
    as _i20; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
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
  gh.lazySingleton<_i9.IAppList>(() => _i10.AppListRepository(get<_i5.Dio>()));
  gh.lazySingleton<_i11.IAuth>(() => _i12.AuthRepository(
        get<_i8.GoogleSignIn>(),
        get<_i7.FirebaseAuth>(),
      ));
  gh.lazySingleton<_i13.IDashboard>(() => _i14.DashboardRepository());
  gh.lazySingleton<_i15.IOther>(() => _i16.OtherRepository());
  gh.lazySingleton<_i17.IPayment>(() => _i18.PaymentRepository());
  gh.lazySingleton<_i19.IUpdateApplication>(
      () => _i20.IUpdateApplicationRepository());
  gh.factory<_i21.OtherCubit>(() => _i21.OtherCubit(get<_i15.IOther>()));
  gh.factory<_i22.PaymentCubit>(() => _i22.PaymentCubit(get<_i17.IPayment>()));
  gh.lazySingleton<_i23.QuestionnaireCubit>(() => _i23.QuestionnaireCubit());
  gh.factory<_i24.StartupCubit>(() => _i24.StartupCubit());
  gh.lazySingleton<_i25.TimerCubit>(() => _i25.TimerCubit(get<_i15.IOther>()));
  gh.factory<_i26.UpdateApplicationCubit>(
      () => _i26.UpdateApplicationCubit(get<_i19.IUpdateApplication>()));
  gh.factory<_i27.AppListCubit>(() => _i27.AppListCubit(get<_i9.IAppList>()));
  gh.factory<_i28.AuthCubit>(() => _i28.AuthCubit(get<_i11.IAuth>()));
  gh.factory<_i29.DashboardCubit>(
      () => _i29.DashboardCubit(get<_i13.IDashboard>()));
  return get;
}

class _$FirebaseInjectableModule extends _i30.FirebaseInjectableModule {}
