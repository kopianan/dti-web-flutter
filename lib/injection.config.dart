// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/application_cubit.dart' as _i3;
import 'application/auth/auth_cubit.dart' as _i8;
import 'application/create_edit_application/create_edit_application_cubit.dart'
    as _i4;
import 'application/questionnaire_cubit.dart' as _i7;
import 'domain/auth/i_auth.dart' as _i5;
import 'infrastructure/auth/auth_repository.dart'
    as _i6; // ignore_for_file: unnecessary_lambdas

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
  gh.factory<_i4.CreateEditApplicationCubit>(
      () => _i4.CreateEditApplicationCubit());
  gh.lazySingleton<_i5.IAuth>(() => _i6.AuthRepository());
  gh.factory<_i7.QuestionnaireCubit>(() => _i7.QuestionnaireCubit());
  gh.factory<_i8.AuthCubit>(() => _i8.AuthCubit(get<_i5.IAuth>()));
  return get;
}
