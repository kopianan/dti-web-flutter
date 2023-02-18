// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:firebase_auth/firebase_auth.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i6;
import 'package:injectable/injectable.dart' as _i2;

import 'application/app_list/app_list_cubit.dart' as _i24;
import 'application/application_cubit.dart' as _i3;
import 'application/auth/auth_cubit.dart' as _i25;
import 'application/dashboard/dashboard_cubit.dart' as _i26;
import 'application/document/document_cubit.dart' as _i4;
import 'application/other/other_cubit.dart' as _i19;
import 'application/payment/payment_cubit.dart' as _i20;
import 'application/questionnaire_cubit.dart' as _i21;
import 'application/startup/startup_cubit.dart' as _i22;
import 'application/update_application/update_application_cubit.dart' as _i23;
import 'core/firebase_injectable_module.dart' as _i27;
import 'domain/app_list/i_app_list.dart' as _i7;
import 'domain/auth/i_auth.dart' as _i9;
import 'domain/dashboard/i_dashboard.dart' as _i11;
import 'domain/other/i_other.dart' as _i13;
import 'domain/payment/i_payment.dart' as _i15;
import 'domain/update/i_update_application.dart' as _i17;
import 'infrastructure/app_list/app_list_repository.dart' as _i8;
import 'infrastructure/auth/auth_repository.dart' as _i10;
import 'infrastructure/dashboard/dashboard_repository.dart' as _i12;
import 'infrastructure/other/other_repository.dart' as _i14;
import 'infrastructure/payment/payment_repository.dart' as _i16;
import 'infrastructure/update_application/update_application_repository.dart'
    as _i18; // ignore_for_file: unnecessary_lambdas

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
  gh.lazySingleton<_i4.DocumentCubit>(() => _i4.DocumentCubit());
  gh.lazySingleton<_i5.FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<_i6.GoogleSignIn>(
      () => firebaseInjectableModule.googleSignIn);
  gh.lazySingleton<_i7.IAppList>(() => _i8.AppListRepository());
  gh.lazySingleton<_i9.IAuth>(() => _i10.AuthRepository(
        get<_i6.GoogleSignIn>(),
        get<_i5.FirebaseAuth>(),
      ));
  gh.lazySingleton<_i11.IDashboard>(() => _i12.DashboardRepository());
  gh.lazySingleton<_i13.IOther>(() => _i14.OtherRepository());
  gh.lazySingleton<_i15.IPayment>(() => _i16.PaymentRepository());
  gh.lazySingleton<_i17.IUpdateApplication>(
      () => _i18.IUpdateApplicationRepository());
  gh.factory<_i19.OtherCubit>(() => _i19.OtherCubit(get<_i13.IOther>()));
  gh.factory<_i20.PaymentCubit>(() => _i20.PaymentCubit(get<_i15.IPayment>()));
  gh.lazySingleton<_i21.QuestionnaireCubit>(() => _i21.QuestionnaireCubit());
  gh.factory<_i22.StartupCubit>(() => _i22.StartupCubit());
  gh.factory<_i23.UpdateApplicationCubit>(
      () => _i23.UpdateApplicationCubit(get<_i17.IUpdateApplication>()));
  gh.factory<_i24.AppListCubit>(() => _i24.AppListCubit(get<_i7.IAppList>()));
  gh.factory<_i25.AuthCubit>(() => _i25.AuthCubit(get<_i9.IAuth>()));
  gh.factory<_i26.DashboardCubit>(
      () => _i26.DashboardCubit(get<_i11.IDashboard>()));
  return get;
}

class _$FirebaseInjectableModule extends _i27.FirebaseInjectableModule {}
