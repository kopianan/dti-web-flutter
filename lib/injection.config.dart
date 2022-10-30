// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/app_list/app_list_cubit.dart' as _i11;
import 'application/application_cubit.dart' as _i12;
import 'application/auth/auth_cubit.dart' as _i13;
import 'application/questionnaire_cubit.dart' as _i9;
import 'application/startup/startup_cubit.dart' as _i10;
import 'domain/app_list/i_app_list.dart' as _i3;
import 'domain/application/i_application.dart' as _i5;
import 'domain/auth/i_auth.dart' as _i7;
import 'infrastructure/app_list/app_list_repository.dart' as _i4;
import 'infrastructure/application/application_respository.dart' as _i6;
import 'infrastructure/auth/auth_repository.dart'
    as _i8; // ignore_for_file: unnecessary_lambdas

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
  gh.lazySingleton<_i3.IAppList>(() => _i4.AppListRepository());
  gh.lazySingleton<_i5.IApplication>(() => _i6.ApplicationRepository());
  gh.lazySingleton<_i7.IAuth>(() => _i8.AuthRepository());
  gh.factory<_i9.QuestionnaireCubit>(() => _i9.QuestionnaireCubit());
  gh.factory<_i10.StartupCubit>(() => _i10.StartupCubit());
  gh.factory<_i11.AppListCubit>(() => _i11.AppListCubit(get<_i3.IAppList>()));
  gh.factory<_i12.ApplicationCubit>(
      () => _i12.ApplicationCubit(get<_i5.IApplication>()));
  gh.factory<_i13.AuthCubit>(() => _i13.AuthCubit(get<_i7.IAuth>()));
  return get;
}
