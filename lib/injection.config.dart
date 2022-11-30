// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/app_list/app_list_cubit.dart' as _i19;
import 'application/application_cubit.dart' as _i3;
import 'application/auth/auth_cubit.dart' as _i20;
import 'application/dashboard/dashboard_cubit.dart' as _i21;
import 'application/document/document_cubit.dart' as _i4;
import 'application/other/other_cubit.dart' as _i15;
import 'application/questionnaire_cubit.dart' as _i16;
import 'application/startup/startup_cubit.dart' as _i17;
import 'application/update_application/update_application_cubit.dart' as _i18;
import 'domain/app_list/i_app_list.dart' as _i5;
import 'domain/auth/i_auth.dart' as _i7;
import 'domain/dashboard/i_dashboard.dart' as _i9;
import 'domain/other/i_other.dart' as _i11;
import 'domain/update/i_update_application.dart' as _i13;
import 'infrastructure/app_list/app_list_repository.dart' as _i6;
import 'infrastructure/auth/auth_repository.dart' as _i8;
import 'infrastructure/dashboard/dashboard_repository.dart' as _i10;
import 'infrastructure/other/other_repository.dart' as _i12;
import 'infrastructure/update_application/update_application_repository.dart'
    as _i14; // ignore_for_file: unnecessary_lambdas

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
  gh.factory<_i3.ApplicationCubit>(() => _i3.ApplicationCubit());
  gh.factory<_i4.DocumentCubit>(() => _i4.DocumentCubit());
  gh.lazySingleton<_i5.IAppList>(() => _i6.AppListRepository());
  gh.lazySingleton<_i7.IAuth>(() => _i8.AuthRepository());
  gh.lazySingleton<_i9.IDashboard>(() => _i10.DashboardRepository());
  gh.lazySingleton<_i11.IOther>(() => _i12.OtherRepository());
  gh.lazySingleton<_i13.IUpdateApplication>(
      () => _i14.IUpdateApplicationRepository());
  gh.factory<_i15.OtherCubit>(() => _i15.OtherCubit(get<_i11.IOther>()));
  gh.factory<_i16.QuestionnaireCubit>(() => _i16.QuestionnaireCubit());
  gh.factory<_i17.StartupCubit>(() => _i17.StartupCubit());
  gh.factory<_i18.UpdateApplicationCubit>(
      () => _i18.UpdateApplicationCubit(get<_i13.IUpdateApplication>()));
  gh.factory<_i19.AppListCubit>(() => _i19.AppListCubit(get<_i5.IAppList>()));
  gh.factory<_i20.AuthCubit>(() => _i20.AuthCubit(get<_i7.IAuth>()));
  gh.factory<_i21.DashboardCubit>(
      () => _i21.DashboardCubit(get<_i9.IDashboard>()));
  return get;
}
