// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i4;
import 'package:firebase_auth/firebase_auth.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i7;
import 'package:injectable/injectable.dart' as _i2;

import 'application/app_list/app_list_cubit.dart' as _i25;
import 'application/application_cubit.dart' as _i3;
import 'application/auth/auth_cubit.dart' as _i26;
import 'application/dashboard/dashboard_cubit.dart' as _i27;
import 'application/document/document_cubit.dart' as _i5;
import 'application/other/other_cubit.dart' as _i20;
import 'application/payment/payment_cubit.dart' as _i21;
import 'application/questionnaire_cubit.dart' as _i22;
import 'application/startup/startup_cubit.dart' as _i23;
import 'application/update_application/update_application_cubit.dart' as _i24;
import 'core/firebase_injectable_module.dart' as _i28;
import 'domain/app_list/i_app_list.dart' as _i8;
import 'domain/auth/i_auth.dart' as _i10;
import 'domain/dashboard/i_dashboard.dart' as _i12;
import 'domain/other/i_other.dart' as _i14;
import 'domain/payment/i_payment.dart' as _i16;
import 'domain/update/i_update_application.dart' as _i18;
import 'infrastructure/app_list/app_list_repository.dart' as _i9;
import 'infrastructure/auth/auth_repository.dart' as _i11;
import 'infrastructure/dashboard/dashboard_repository.dart' as _i13;
import 'infrastructure/other/other_repository.dart' as _i15;
import 'infrastructure/payment/payment_repository.dart' as _i17;
import 'infrastructure/update_application/update_application_repository.dart'
    as _i19; // ignore_for_file: unnecessary_lambdas

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
  gh.lazySingleton<_i4.Dio>(() => firebaseInjectableModule.dio);
  gh.lazySingleton<_i5.DocumentCubit>(() => _i5.DocumentCubit());
  gh.lazySingleton<_i6.FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<_i7.GoogleSignIn>(
      () => firebaseInjectableModule.googleSignIn);
  gh.lazySingleton<_i8.IAppList>(() => _i9.AppListRepository(get<_i4.Dio>()));
  gh.lazySingleton<_i10.IAuth>(() => _i11.AuthRepository(
        get<_i7.GoogleSignIn>(),
        get<_i6.FirebaseAuth>(),
      ));
  gh.lazySingleton<_i12.IDashboard>(() => _i13.DashboardRepository());
  gh.lazySingleton<_i14.IOther>(() => _i15.OtherRepository());
  gh.lazySingleton<_i16.IPayment>(() => _i17.PaymentRepository());
  gh.lazySingleton<_i18.IUpdateApplication>(
      () => _i19.IUpdateApplicationRepository());
  gh.factory<_i20.OtherCubit>(() => _i20.OtherCubit(get<_i14.IOther>()));
  gh.factory<_i21.PaymentCubit>(() => _i21.PaymentCubit(get<_i16.IPayment>()));
  gh.lazySingleton<_i22.QuestionnaireCubit>(() => _i22.QuestionnaireCubit());
  gh.factory<_i23.StartupCubit>(() => _i23.StartupCubit());
  gh.factory<_i24.UpdateApplicationCubit>(
      () => _i24.UpdateApplicationCubit(get<_i18.IUpdateApplication>()));
  gh.factory<_i25.AppListCubit>(() => _i25.AppListCubit(get<_i8.IAppList>()));
  gh.factory<_i26.AuthCubit>(() => _i26.AuthCubit(get<_i10.IAuth>()));
  gh.factory<_i27.DashboardCubit>(
      () => _i27.DashboardCubit(get<_i12.IDashboard>()));
  return get;
}

class _$FirebaseInjectableModule extends _i28.FirebaseInjectableModule {}
