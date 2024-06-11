// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dashboard_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DashboardState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failures err) error,
    required TResult Function(SimpleVisaModel visa) onGetSingleAppsData,
    required TResult Function(SimpleVisaModel visa) onGetSinglePassportData,
    required TResult Function(SimpleVisaModel visa) onGetSingleCorpData,
    required TResult Function(SimpleVisaModel deletedVisa, int appType)
        onDeleteSingleData,
    required TResult Function(SimpleVisaModel deletedVisa, int appType)
        onDeletePassport,
    required TResult Function(SimpleVisaModel deletedVisa, int appType)
        onDeleteCorporateApps,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failures err)? error,
    TResult? Function(SimpleVisaModel visa)? onGetSingleAppsData,
    TResult? Function(SimpleVisaModel visa)? onGetSinglePassportData,
    TResult? Function(SimpleVisaModel visa)? onGetSingleCorpData,
    TResult? Function(SimpleVisaModel deletedVisa, int appType)?
        onDeleteSingleData,
    TResult? Function(SimpleVisaModel deletedVisa, int appType)?
        onDeletePassport,
    TResult? Function(SimpleVisaModel deletedVisa, int appType)?
        onDeleteCorporateApps,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failures err)? error,
    TResult Function(SimpleVisaModel visa)? onGetSingleAppsData,
    TResult Function(SimpleVisaModel visa)? onGetSinglePassportData,
    TResult Function(SimpleVisaModel visa)? onGetSingleCorpData,
    TResult Function(SimpleVisaModel deletedVisa, int appType)?
        onDeleteSingleData,
    TResult Function(SimpleVisaModel deletedVisa, int appType)?
        onDeletePassport,
    TResult Function(SimpleVisaModel deletedVisa, int appType)?
        onDeleteCorporateApps,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_OnGetSingleAppsData value) onGetSingleAppsData,
    required TResult Function(_OnGetSinglePassportData value)
        onGetSinglePassportData,
    required TResult Function(_OnGetSingleCorpData value) onGetSingleCorpData,
    required TResult Function(_OnDeleteSingleData value) onDeleteSingleData,
    required TResult Function(_OnDeletePassport value) onDeletePassport,
    required TResult Function(_OnDeleteCorporateApps value)
        onDeleteCorporateApps,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_OnGetSingleAppsData value)? onGetSingleAppsData,
    TResult? Function(_OnGetSinglePassportData value)? onGetSinglePassportData,
    TResult? Function(_OnGetSingleCorpData value)? onGetSingleCorpData,
    TResult? Function(_OnDeleteSingleData value)? onDeleteSingleData,
    TResult? Function(_OnDeletePassport value)? onDeletePassport,
    TResult? Function(_OnDeleteCorporateApps value)? onDeleteCorporateApps,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_OnGetSingleAppsData value)? onGetSingleAppsData,
    TResult Function(_OnGetSinglePassportData value)? onGetSinglePassportData,
    TResult Function(_OnGetSingleCorpData value)? onGetSingleCorpData,
    TResult Function(_OnDeleteSingleData value)? onDeleteSingleData,
    TResult Function(_OnDeletePassport value)? onDeletePassport,
    TResult Function(_OnDeleteCorporateApps value)? onDeleteCorporateApps,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardStateCopyWith<$Res> {
  factory $DashboardStateCopyWith(
          DashboardState value, $Res Function(DashboardState) then) =
      _$DashboardStateCopyWithImpl<$Res, DashboardState>;
}

/// @nodoc
class _$DashboardStateCopyWithImpl<$Res, $Val extends DashboardState>
    implements $DashboardStateCopyWith<$Res> {
  _$DashboardStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$DashboardStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'DashboardState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failures err) error,
    required TResult Function(SimpleVisaModel visa) onGetSingleAppsData,
    required TResult Function(SimpleVisaModel visa) onGetSinglePassportData,
    required TResult Function(SimpleVisaModel visa) onGetSingleCorpData,
    required TResult Function(SimpleVisaModel deletedVisa, int appType)
        onDeleteSingleData,
    required TResult Function(SimpleVisaModel deletedVisa, int appType)
        onDeletePassport,
    required TResult Function(SimpleVisaModel deletedVisa, int appType)
        onDeleteCorporateApps,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failures err)? error,
    TResult? Function(SimpleVisaModel visa)? onGetSingleAppsData,
    TResult? Function(SimpleVisaModel visa)? onGetSinglePassportData,
    TResult? Function(SimpleVisaModel visa)? onGetSingleCorpData,
    TResult? Function(SimpleVisaModel deletedVisa, int appType)?
        onDeleteSingleData,
    TResult? Function(SimpleVisaModel deletedVisa, int appType)?
        onDeletePassport,
    TResult? Function(SimpleVisaModel deletedVisa, int appType)?
        onDeleteCorporateApps,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failures err)? error,
    TResult Function(SimpleVisaModel visa)? onGetSingleAppsData,
    TResult Function(SimpleVisaModel visa)? onGetSinglePassportData,
    TResult Function(SimpleVisaModel visa)? onGetSingleCorpData,
    TResult Function(SimpleVisaModel deletedVisa, int appType)?
        onDeleteSingleData,
    TResult Function(SimpleVisaModel deletedVisa, int appType)?
        onDeletePassport,
    TResult Function(SimpleVisaModel deletedVisa, int appType)?
        onDeleteCorporateApps,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_OnGetSingleAppsData value) onGetSingleAppsData,
    required TResult Function(_OnGetSinglePassportData value)
        onGetSinglePassportData,
    required TResult Function(_OnGetSingleCorpData value) onGetSingleCorpData,
    required TResult Function(_OnDeleteSingleData value) onDeleteSingleData,
    required TResult Function(_OnDeletePassport value) onDeletePassport,
    required TResult Function(_OnDeleteCorporateApps value)
        onDeleteCorporateApps,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_OnGetSingleAppsData value)? onGetSingleAppsData,
    TResult? Function(_OnGetSinglePassportData value)? onGetSinglePassportData,
    TResult? Function(_OnGetSingleCorpData value)? onGetSingleCorpData,
    TResult? Function(_OnDeleteSingleData value)? onDeleteSingleData,
    TResult? Function(_OnDeletePassport value)? onDeletePassport,
    TResult? Function(_OnDeleteCorporateApps value)? onDeleteCorporateApps,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_OnGetSingleAppsData value)? onGetSingleAppsData,
    TResult Function(_OnGetSinglePassportData value)? onGetSinglePassportData,
    TResult Function(_OnGetSingleCorpData value)? onGetSingleCorpData,
    TResult Function(_OnDeleteSingleData value)? onDeleteSingleData,
    TResult Function(_OnDeletePassport value)? onDeletePassport,
    TResult Function(_OnDeleteCorporateApps value)? onDeleteCorporateApps,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements DashboardState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$DashboardStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'DashboardState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failures err) error,
    required TResult Function(SimpleVisaModel visa) onGetSingleAppsData,
    required TResult Function(SimpleVisaModel visa) onGetSinglePassportData,
    required TResult Function(SimpleVisaModel visa) onGetSingleCorpData,
    required TResult Function(SimpleVisaModel deletedVisa, int appType)
        onDeleteSingleData,
    required TResult Function(SimpleVisaModel deletedVisa, int appType)
        onDeletePassport,
    required TResult Function(SimpleVisaModel deletedVisa, int appType)
        onDeleteCorporateApps,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failures err)? error,
    TResult? Function(SimpleVisaModel visa)? onGetSingleAppsData,
    TResult? Function(SimpleVisaModel visa)? onGetSinglePassportData,
    TResult? Function(SimpleVisaModel visa)? onGetSingleCorpData,
    TResult? Function(SimpleVisaModel deletedVisa, int appType)?
        onDeleteSingleData,
    TResult? Function(SimpleVisaModel deletedVisa, int appType)?
        onDeletePassport,
    TResult? Function(SimpleVisaModel deletedVisa, int appType)?
        onDeleteCorporateApps,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failures err)? error,
    TResult Function(SimpleVisaModel visa)? onGetSingleAppsData,
    TResult Function(SimpleVisaModel visa)? onGetSinglePassportData,
    TResult Function(SimpleVisaModel visa)? onGetSingleCorpData,
    TResult Function(SimpleVisaModel deletedVisa, int appType)?
        onDeleteSingleData,
    TResult Function(SimpleVisaModel deletedVisa, int appType)?
        onDeletePassport,
    TResult Function(SimpleVisaModel deletedVisa, int appType)?
        onDeleteCorporateApps,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_OnGetSingleAppsData value) onGetSingleAppsData,
    required TResult Function(_OnGetSinglePassportData value)
        onGetSinglePassportData,
    required TResult Function(_OnGetSingleCorpData value) onGetSingleCorpData,
    required TResult Function(_OnDeleteSingleData value) onDeleteSingleData,
    required TResult Function(_OnDeletePassport value) onDeletePassport,
    required TResult Function(_OnDeleteCorporateApps value)
        onDeleteCorporateApps,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_OnGetSingleAppsData value)? onGetSingleAppsData,
    TResult? Function(_OnGetSinglePassportData value)? onGetSinglePassportData,
    TResult? Function(_OnGetSingleCorpData value)? onGetSingleCorpData,
    TResult? Function(_OnDeleteSingleData value)? onDeleteSingleData,
    TResult? Function(_OnDeletePassport value)? onDeletePassport,
    TResult? Function(_OnDeleteCorporateApps value)? onDeleteCorporateApps,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_OnGetSingleAppsData value)? onGetSingleAppsData,
    TResult Function(_OnGetSinglePassportData value)? onGetSinglePassportData,
    TResult Function(_OnGetSingleCorpData value)? onGetSingleCorpData,
    TResult Function(_OnDeleteSingleData value)? onDeleteSingleData,
    TResult Function(_OnDeletePassport value)? onDeletePassport,
    TResult Function(_OnDeleteCorporateApps value)? onDeleteCorporateApps,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements DashboardState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failures err});

  $FailuresCopyWith<$Res> get err;
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$DashboardStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? err = null,
  }) {
    return _then(_$ErrorImpl(
      null == err
          ? _value.err
          : err // ignore: cast_nullable_to_non_nullable
              as Failures,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $FailuresCopyWith<$Res> get err {
    return $FailuresCopyWith<$Res>(_value.err, (value) {
      return _then(_value.copyWith(err: value));
    });
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(this.err);

  @override
  final Failures err;

  @override
  String toString() {
    return 'DashboardState.error(err: $err)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.err, err) || other.err == err));
  }

  @override
  int get hashCode => Object.hash(runtimeType, err);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failures err) error,
    required TResult Function(SimpleVisaModel visa) onGetSingleAppsData,
    required TResult Function(SimpleVisaModel visa) onGetSinglePassportData,
    required TResult Function(SimpleVisaModel visa) onGetSingleCorpData,
    required TResult Function(SimpleVisaModel deletedVisa, int appType)
        onDeleteSingleData,
    required TResult Function(SimpleVisaModel deletedVisa, int appType)
        onDeletePassport,
    required TResult Function(SimpleVisaModel deletedVisa, int appType)
        onDeleteCorporateApps,
  }) {
    return error(err);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failures err)? error,
    TResult? Function(SimpleVisaModel visa)? onGetSingleAppsData,
    TResult? Function(SimpleVisaModel visa)? onGetSinglePassportData,
    TResult? Function(SimpleVisaModel visa)? onGetSingleCorpData,
    TResult? Function(SimpleVisaModel deletedVisa, int appType)?
        onDeleteSingleData,
    TResult? Function(SimpleVisaModel deletedVisa, int appType)?
        onDeletePassport,
    TResult? Function(SimpleVisaModel deletedVisa, int appType)?
        onDeleteCorporateApps,
  }) {
    return error?.call(err);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failures err)? error,
    TResult Function(SimpleVisaModel visa)? onGetSingleAppsData,
    TResult Function(SimpleVisaModel visa)? onGetSinglePassportData,
    TResult Function(SimpleVisaModel visa)? onGetSingleCorpData,
    TResult Function(SimpleVisaModel deletedVisa, int appType)?
        onDeleteSingleData,
    TResult Function(SimpleVisaModel deletedVisa, int appType)?
        onDeletePassport,
    TResult Function(SimpleVisaModel deletedVisa, int appType)?
        onDeleteCorporateApps,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(err);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_OnGetSingleAppsData value) onGetSingleAppsData,
    required TResult Function(_OnGetSinglePassportData value)
        onGetSinglePassportData,
    required TResult Function(_OnGetSingleCorpData value) onGetSingleCorpData,
    required TResult Function(_OnDeleteSingleData value) onDeleteSingleData,
    required TResult Function(_OnDeletePassport value) onDeletePassport,
    required TResult Function(_OnDeleteCorporateApps value)
        onDeleteCorporateApps,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_OnGetSingleAppsData value)? onGetSingleAppsData,
    TResult? Function(_OnGetSinglePassportData value)? onGetSinglePassportData,
    TResult? Function(_OnGetSingleCorpData value)? onGetSingleCorpData,
    TResult? Function(_OnDeleteSingleData value)? onDeleteSingleData,
    TResult? Function(_OnDeletePassport value)? onDeletePassport,
    TResult? Function(_OnDeleteCorporateApps value)? onDeleteCorporateApps,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_OnGetSingleAppsData value)? onGetSingleAppsData,
    TResult Function(_OnGetSinglePassportData value)? onGetSinglePassportData,
    TResult Function(_OnGetSingleCorpData value)? onGetSingleCorpData,
    TResult Function(_OnDeleteSingleData value)? onDeleteSingleData,
    TResult Function(_OnDeletePassport value)? onDeletePassport,
    TResult Function(_OnDeleteCorporateApps value)? onDeleteCorporateApps,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements DashboardState {
  const factory _Error(final Failures err) = _$ErrorImpl;

  Failures get err;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnGetSingleAppsDataImplCopyWith<$Res> {
  factory _$$OnGetSingleAppsDataImplCopyWith(_$OnGetSingleAppsDataImpl value,
          $Res Function(_$OnGetSingleAppsDataImpl) then) =
      __$$OnGetSingleAppsDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SimpleVisaModel visa});

  $SimpleVisaModelCopyWith<$Res> get visa;
}

/// @nodoc
class __$$OnGetSingleAppsDataImplCopyWithImpl<$Res>
    extends _$DashboardStateCopyWithImpl<$Res, _$OnGetSingleAppsDataImpl>
    implements _$$OnGetSingleAppsDataImplCopyWith<$Res> {
  __$$OnGetSingleAppsDataImplCopyWithImpl(_$OnGetSingleAppsDataImpl _value,
      $Res Function(_$OnGetSingleAppsDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? visa = null,
  }) {
    return _then(_$OnGetSingleAppsDataImpl(
      null == visa
          ? _value.visa
          : visa // ignore: cast_nullable_to_non_nullable
              as SimpleVisaModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $SimpleVisaModelCopyWith<$Res> get visa {
    return $SimpleVisaModelCopyWith<$Res>(_value.visa, (value) {
      return _then(_value.copyWith(visa: value));
    });
  }
}

/// @nodoc

class _$OnGetSingleAppsDataImpl implements _OnGetSingleAppsData {
  const _$OnGetSingleAppsDataImpl(this.visa);

  @override
  final SimpleVisaModel visa;

  @override
  String toString() {
    return 'DashboardState.onGetSingleAppsData(visa: $visa)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnGetSingleAppsDataImpl &&
            (identical(other.visa, visa) || other.visa == visa));
  }

  @override
  int get hashCode => Object.hash(runtimeType, visa);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnGetSingleAppsDataImplCopyWith<_$OnGetSingleAppsDataImpl> get copyWith =>
      __$$OnGetSingleAppsDataImplCopyWithImpl<_$OnGetSingleAppsDataImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failures err) error,
    required TResult Function(SimpleVisaModel visa) onGetSingleAppsData,
    required TResult Function(SimpleVisaModel visa) onGetSinglePassportData,
    required TResult Function(SimpleVisaModel visa) onGetSingleCorpData,
    required TResult Function(SimpleVisaModel deletedVisa, int appType)
        onDeleteSingleData,
    required TResult Function(SimpleVisaModel deletedVisa, int appType)
        onDeletePassport,
    required TResult Function(SimpleVisaModel deletedVisa, int appType)
        onDeleteCorporateApps,
  }) {
    return onGetSingleAppsData(visa);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failures err)? error,
    TResult? Function(SimpleVisaModel visa)? onGetSingleAppsData,
    TResult? Function(SimpleVisaModel visa)? onGetSinglePassportData,
    TResult? Function(SimpleVisaModel visa)? onGetSingleCorpData,
    TResult? Function(SimpleVisaModel deletedVisa, int appType)?
        onDeleteSingleData,
    TResult? Function(SimpleVisaModel deletedVisa, int appType)?
        onDeletePassport,
    TResult? Function(SimpleVisaModel deletedVisa, int appType)?
        onDeleteCorporateApps,
  }) {
    return onGetSingleAppsData?.call(visa);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failures err)? error,
    TResult Function(SimpleVisaModel visa)? onGetSingleAppsData,
    TResult Function(SimpleVisaModel visa)? onGetSinglePassportData,
    TResult Function(SimpleVisaModel visa)? onGetSingleCorpData,
    TResult Function(SimpleVisaModel deletedVisa, int appType)?
        onDeleteSingleData,
    TResult Function(SimpleVisaModel deletedVisa, int appType)?
        onDeletePassport,
    TResult Function(SimpleVisaModel deletedVisa, int appType)?
        onDeleteCorporateApps,
    required TResult orElse(),
  }) {
    if (onGetSingleAppsData != null) {
      return onGetSingleAppsData(visa);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_OnGetSingleAppsData value) onGetSingleAppsData,
    required TResult Function(_OnGetSinglePassportData value)
        onGetSinglePassportData,
    required TResult Function(_OnGetSingleCorpData value) onGetSingleCorpData,
    required TResult Function(_OnDeleteSingleData value) onDeleteSingleData,
    required TResult Function(_OnDeletePassport value) onDeletePassport,
    required TResult Function(_OnDeleteCorporateApps value)
        onDeleteCorporateApps,
  }) {
    return onGetSingleAppsData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_OnGetSingleAppsData value)? onGetSingleAppsData,
    TResult? Function(_OnGetSinglePassportData value)? onGetSinglePassportData,
    TResult? Function(_OnGetSingleCorpData value)? onGetSingleCorpData,
    TResult? Function(_OnDeleteSingleData value)? onDeleteSingleData,
    TResult? Function(_OnDeletePassport value)? onDeletePassport,
    TResult? Function(_OnDeleteCorporateApps value)? onDeleteCorporateApps,
  }) {
    return onGetSingleAppsData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_OnGetSingleAppsData value)? onGetSingleAppsData,
    TResult Function(_OnGetSinglePassportData value)? onGetSinglePassportData,
    TResult Function(_OnGetSingleCorpData value)? onGetSingleCorpData,
    TResult Function(_OnDeleteSingleData value)? onDeleteSingleData,
    TResult Function(_OnDeletePassport value)? onDeletePassport,
    TResult Function(_OnDeleteCorporateApps value)? onDeleteCorporateApps,
    required TResult orElse(),
  }) {
    if (onGetSingleAppsData != null) {
      return onGetSingleAppsData(this);
    }
    return orElse();
  }
}

abstract class _OnGetSingleAppsData implements DashboardState {
  const factory _OnGetSingleAppsData(final SimpleVisaModel visa) =
      _$OnGetSingleAppsDataImpl;

  SimpleVisaModel get visa;
  @JsonKey(ignore: true)
  _$$OnGetSingleAppsDataImplCopyWith<_$OnGetSingleAppsDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnGetSinglePassportDataImplCopyWith<$Res> {
  factory _$$OnGetSinglePassportDataImplCopyWith(
          _$OnGetSinglePassportDataImpl value,
          $Res Function(_$OnGetSinglePassportDataImpl) then) =
      __$$OnGetSinglePassportDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SimpleVisaModel visa});

  $SimpleVisaModelCopyWith<$Res> get visa;
}

/// @nodoc
class __$$OnGetSinglePassportDataImplCopyWithImpl<$Res>
    extends _$DashboardStateCopyWithImpl<$Res, _$OnGetSinglePassportDataImpl>
    implements _$$OnGetSinglePassportDataImplCopyWith<$Res> {
  __$$OnGetSinglePassportDataImplCopyWithImpl(
      _$OnGetSinglePassportDataImpl _value,
      $Res Function(_$OnGetSinglePassportDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? visa = null,
  }) {
    return _then(_$OnGetSinglePassportDataImpl(
      null == visa
          ? _value.visa
          : visa // ignore: cast_nullable_to_non_nullable
              as SimpleVisaModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $SimpleVisaModelCopyWith<$Res> get visa {
    return $SimpleVisaModelCopyWith<$Res>(_value.visa, (value) {
      return _then(_value.copyWith(visa: value));
    });
  }
}

/// @nodoc

class _$OnGetSinglePassportDataImpl implements _OnGetSinglePassportData {
  const _$OnGetSinglePassportDataImpl(this.visa);

  @override
  final SimpleVisaModel visa;

  @override
  String toString() {
    return 'DashboardState.onGetSinglePassportData(visa: $visa)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnGetSinglePassportDataImpl &&
            (identical(other.visa, visa) || other.visa == visa));
  }

  @override
  int get hashCode => Object.hash(runtimeType, visa);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnGetSinglePassportDataImplCopyWith<_$OnGetSinglePassportDataImpl>
      get copyWith => __$$OnGetSinglePassportDataImplCopyWithImpl<
          _$OnGetSinglePassportDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failures err) error,
    required TResult Function(SimpleVisaModel visa) onGetSingleAppsData,
    required TResult Function(SimpleVisaModel visa) onGetSinglePassportData,
    required TResult Function(SimpleVisaModel visa) onGetSingleCorpData,
    required TResult Function(SimpleVisaModel deletedVisa, int appType)
        onDeleteSingleData,
    required TResult Function(SimpleVisaModel deletedVisa, int appType)
        onDeletePassport,
    required TResult Function(SimpleVisaModel deletedVisa, int appType)
        onDeleteCorporateApps,
  }) {
    return onGetSinglePassportData(visa);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failures err)? error,
    TResult? Function(SimpleVisaModel visa)? onGetSingleAppsData,
    TResult? Function(SimpleVisaModel visa)? onGetSinglePassportData,
    TResult? Function(SimpleVisaModel visa)? onGetSingleCorpData,
    TResult? Function(SimpleVisaModel deletedVisa, int appType)?
        onDeleteSingleData,
    TResult? Function(SimpleVisaModel deletedVisa, int appType)?
        onDeletePassport,
    TResult? Function(SimpleVisaModel deletedVisa, int appType)?
        onDeleteCorporateApps,
  }) {
    return onGetSinglePassportData?.call(visa);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failures err)? error,
    TResult Function(SimpleVisaModel visa)? onGetSingleAppsData,
    TResult Function(SimpleVisaModel visa)? onGetSinglePassportData,
    TResult Function(SimpleVisaModel visa)? onGetSingleCorpData,
    TResult Function(SimpleVisaModel deletedVisa, int appType)?
        onDeleteSingleData,
    TResult Function(SimpleVisaModel deletedVisa, int appType)?
        onDeletePassport,
    TResult Function(SimpleVisaModel deletedVisa, int appType)?
        onDeleteCorporateApps,
    required TResult orElse(),
  }) {
    if (onGetSinglePassportData != null) {
      return onGetSinglePassportData(visa);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_OnGetSingleAppsData value) onGetSingleAppsData,
    required TResult Function(_OnGetSinglePassportData value)
        onGetSinglePassportData,
    required TResult Function(_OnGetSingleCorpData value) onGetSingleCorpData,
    required TResult Function(_OnDeleteSingleData value) onDeleteSingleData,
    required TResult Function(_OnDeletePassport value) onDeletePassport,
    required TResult Function(_OnDeleteCorporateApps value)
        onDeleteCorporateApps,
  }) {
    return onGetSinglePassportData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_OnGetSingleAppsData value)? onGetSingleAppsData,
    TResult? Function(_OnGetSinglePassportData value)? onGetSinglePassportData,
    TResult? Function(_OnGetSingleCorpData value)? onGetSingleCorpData,
    TResult? Function(_OnDeleteSingleData value)? onDeleteSingleData,
    TResult? Function(_OnDeletePassport value)? onDeletePassport,
    TResult? Function(_OnDeleteCorporateApps value)? onDeleteCorporateApps,
  }) {
    return onGetSinglePassportData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_OnGetSingleAppsData value)? onGetSingleAppsData,
    TResult Function(_OnGetSinglePassportData value)? onGetSinglePassportData,
    TResult Function(_OnGetSingleCorpData value)? onGetSingleCorpData,
    TResult Function(_OnDeleteSingleData value)? onDeleteSingleData,
    TResult Function(_OnDeletePassport value)? onDeletePassport,
    TResult Function(_OnDeleteCorporateApps value)? onDeleteCorporateApps,
    required TResult orElse(),
  }) {
    if (onGetSinglePassportData != null) {
      return onGetSinglePassportData(this);
    }
    return orElse();
  }
}

abstract class _OnGetSinglePassportData implements DashboardState {
  const factory _OnGetSinglePassportData(final SimpleVisaModel visa) =
      _$OnGetSinglePassportDataImpl;

  SimpleVisaModel get visa;
  @JsonKey(ignore: true)
  _$$OnGetSinglePassportDataImplCopyWith<_$OnGetSinglePassportDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnGetSingleCorpDataImplCopyWith<$Res> {
  factory _$$OnGetSingleCorpDataImplCopyWith(_$OnGetSingleCorpDataImpl value,
          $Res Function(_$OnGetSingleCorpDataImpl) then) =
      __$$OnGetSingleCorpDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SimpleVisaModel visa});

  $SimpleVisaModelCopyWith<$Res> get visa;
}

/// @nodoc
class __$$OnGetSingleCorpDataImplCopyWithImpl<$Res>
    extends _$DashboardStateCopyWithImpl<$Res, _$OnGetSingleCorpDataImpl>
    implements _$$OnGetSingleCorpDataImplCopyWith<$Res> {
  __$$OnGetSingleCorpDataImplCopyWithImpl(_$OnGetSingleCorpDataImpl _value,
      $Res Function(_$OnGetSingleCorpDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? visa = null,
  }) {
    return _then(_$OnGetSingleCorpDataImpl(
      null == visa
          ? _value.visa
          : visa // ignore: cast_nullable_to_non_nullable
              as SimpleVisaModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $SimpleVisaModelCopyWith<$Res> get visa {
    return $SimpleVisaModelCopyWith<$Res>(_value.visa, (value) {
      return _then(_value.copyWith(visa: value));
    });
  }
}

/// @nodoc

class _$OnGetSingleCorpDataImpl implements _OnGetSingleCorpData {
  const _$OnGetSingleCorpDataImpl(this.visa);

  @override
  final SimpleVisaModel visa;

  @override
  String toString() {
    return 'DashboardState.onGetSingleCorpData(visa: $visa)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnGetSingleCorpDataImpl &&
            (identical(other.visa, visa) || other.visa == visa));
  }

  @override
  int get hashCode => Object.hash(runtimeType, visa);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnGetSingleCorpDataImplCopyWith<_$OnGetSingleCorpDataImpl> get copyWith =>
      __$$OnGetSingleCorpDataImplCopyWithImpl<_$OnGetSingleCorpDataImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failures err) error,
    required TResult Function(SimpleVisaModel visa) onGetSingleAppsData,
    required TResult Function(SimpleVisaModel visa) onGetSinglePassportData,
    required TResult Function(SimpleVisaModel visa) onGetSingleCorpData,
    required TResult Function(SimpleVisaModel deletedVisa, int appType)
        onDeleteSingleData,
    required TResult Function(SimpleVisaModel deletedVisa, int appType)
        onDeletePassport,
    required TResult Function(SimpleVisaModel deletedVisa, int appType)
        onDeleteCorporateApps,
  }) {
    return onGetSingleCorpData(visa);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failures err)? error,
    TResult? Function(SimpleVisaModel visa)? onGetSingleAppsData,
    TResult? Function(SimpleVisaModel visa)? onGetSinglePassportData,
    TResult? Function(SimpleVisaModel visa)? onGetSingleCorpData,
    TResult? Function(SimpleVisaModel deletedVisa, int appType)?
        onDeleteSingleData,
    TResult? Function(SimpleVisaModel deletedVisa, int appType)?
        onDeletePassport,
    TResult? Function(SimpleVisaModel deletedVisa, int appType)?
        onDeleteCorporateApps,
  }) {
    return onGetSingleCorpData?.call(visa);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failures err)? error,
    TResult Function(SimpleVisaModel visa)? onGetSingleAppsData,
    TResult Function(SimpleVisaModel visa)? onGetSinglePassportData,
    TResult Function(SimpleVisaModel visa)? onGetSingleCorpData,
    TResult Function(SimpleVisaModel deletedVisa, int appType)?
        onDeleteSingleData,
    TResult Function(SimpleVisaModel deletedVisa, int appType)?
        onDeletePassport,
    TResult Function(SimpleVisaModel deletedVisa, int appType)?
        onDeleteCorporateApps,
    required TResult orElse(),
  }) {
    if (onGetSingleCorpData != null) {
      return onGetSingleCorpData(visa);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_OnGetSingleAppsData value) onGetSingleAppsData,
    required TResult Function(_OnGetSinglePassportData value)
        onGetSinglePassportData,
    required TResult Function(_OnGetSingleCorpData value) onGetSingleCorpData,
    required TResult Function(_OnDeleteSingleData value) onDeleteSingleData,
    required TResult Function(_OnDeletePassport value) onDeletePassport,
    required TResult Function(_OnDeleteCorporateApps value)
        onDeleteCorporateApps,
  }) {
    return onGetSingleCorpData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_OnGetSingleAppsData value)? onGetSingleAppsData,
    TResult? Function(_OnGetSinglePassportData value)? onGetSinglePassportData,
    TResult? Function(_OnGetSingleCorpData value)? onGetSingleCorpData,
    TResult? Function(_OnDeleteSingleData value)? onDeleteSingleData,
    TResult? Function(_OnDeletePassport value)? onDeletePassport,
    TResult? Function(_OnDeleteCorporateApps value)? onDeleteCorporateApps,
  }) {
    return onGetSingleCorpData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_OnGetSingleAppsData value)? onGetSingleAppsData,
    TResult Function(_OnGetSinglePassportData value)? onGetSinglePassportData,
    TResult Function(_OnGetSingleCorpData value)? onGetSingleCorpData,
    TResult Function(_OnDeleteSingleData value)? onDeleteSingleData,
    TResult Function(_OnDeletePassport value)? onDeletePassport,
    TResult Function(_OnDeleteCorporateApps value)? onDeleteCorporateApps,
    required TResult orElse(),
  }) {
    if (onGetSingleCorpData != null) {
      return onGetSingleCorpData(this);
    }
    return orElse();
  }
}

abstract class _OnGetSingleCorpData implements DashboardState {
  const factory _OnGetSingleCorpData(final SimpleVisaModel visa) =
      _$OnGetSingleCorpDataImpl;

  SimpleVisaModel get visa;
  @JsonKey(ignore: true)
  _$$OnGetSingleCorpDataImplCopyWith<_$OnGetSingleCorpDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnDeleteSingleDataImplCopyWith<$Res> {
  factory _$$OnDeleteSingleDataImplCopyWith(_$OnDeleteSingleDataImpl value,
          $Res Function(_$OnDeleteSingleDataImpl) then) =
      __$$OnDeleteSingleDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SimpleVisaModel deletedVisa, int appType});

  $SimpleVisaModelCopyWith<$Res> get deletedVisa;
}

/// @nodoc
class __$$OnDeleteSingleDataImplCopyWithImpl<$Res>
    extends _$DashboardStateCopyWithImpl<$Res, _$OnDeleteSingleDataImpl>
    implements _$$OnDeleteSingleDataImplCopyWith<$Res> {
  __$$OnDeleteSingleDataImplCopyWithImpl(_$OnDeleteSingleDataImpl _value,
      $Res Function(_$OnDeleteSingleDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deletedVisa = null,
    Object? appType = null,
  }) {
    return _then(_$OnDeleteSingleDataImpl(
      null == deletedVisa
          ? _value.deletedVisa
          : deletedVisa // ignore: cast_nullable_to_non_nullable
              as SimpleVisaModel,
      null == appType
          ? _value.appType
          : appType // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $SimpleVisaModelCopyWith<$Res> get deletedVisa {
    return $SimpleVisaModelCopyWith<$Res>(_value.deletedVisa, (value) {
      return _then(_value.copyWith(deletedVisa: value));
    });
  }
}

/// @nodoc

class _$OnDeleteSingleDataImpl implements _OnDeleteSingleData {
  const _$OnDeleteSingleDataImpl(this.deletedVisa, this.appType);

  @override
  final SimpleVisaModel deletedVisa;
  @override
  final int appType;

  @override
  String toString() {
    return 'DashboardState.onDeleteSingleData(deletedVisa: $deletedVisa, appType: $appType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnDeleteSingleDataImpl &&
            (identical(other.deletedVisa, deletedVisa) ||
                other.deletedVisa == deletedVisa) &&
            (identical(other.appType, appType) || other.appType == appType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, deletedVisa, appType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnDeleteSingleDataImplCopyWith<_$OnDeleteSingleDataImpl> get copyWith =>
      __$$OnDeleteSingleDataImplCopyWithImpl<_$OnDeleteSingleDataImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failures err) error,
    required TResult Function(SimpleVisaModel visa) onGetSingleAppsData,
    required TResult Function(SimpleVisaModel visa) onGetSinglePassportData,
    required TResult Function(SimpleVisaModel visa) onGetSingleCorpData,
    required TResult Function(SimpleVisaModel deletedVisa, int appType)
        onDeleteSingleData,
    required TResult Function(SimpleVisaModel deletedVisa, int appType)
        onDeletePassport,
    required TResult Function(SimpleVisaModel deletedVisa, int appType)
        onDeleteCorporateApps,
  }) {
    return onDeleteSingleData(deletedVisa, appType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failures err)? error,
    TResult? Function(SimpleVisaModel visa)? onGetSingleAppsData,
    TResult? Function(SimpleVisaModel visa)? onGetSinglePassportData,
    TResult? Function(SimpleVisaModel visa)? onGetSingleCorpData,
    TResult? Function(SimpleVisaModel deletedVisa, int appType)?
        onDeleteSingleData,
    TResult? Function(SimpleVisaModel deletedVisa, int appType)?
        onDeletePassport,
    TResult? Function(SimpleVisaModel deletedVisa, int appType)?
        onDeleteCorporateApps,
  }) {
    return onDeleteSingleData?.call(deletedVisa, appType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failures err)? error,
    TResult Function(SimpleVisaModel visa)? onGetSingleAppsData,
    TResult Function(SimpleVisaModel visa)? onGetSinglePassportData,
    TResult Function(SimpleVisaModel visa)? onGetSingleCorpData,
    TResult Function(SimpleVisaModel deletedVisa, int appType)?
        onDeleteSingleData,
    TResult Function(SimpleVisaModel deletedVisa, int appType)?
        onDeletePassport,
    TResult Function(SimpleVisaModel deletedVisa, int appType)?
        onDeleteCorporateApps,
    required TResult orElse(),
  }) {
    if (onDeleteSingleData != null) {
      return onDeleteSingleData(deletedVisa, appType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_OnGetSingleAppsData value) onGetSingleAppsData,
    required TResult Function(_OnGetSinglePassportData value)
        onGetSinglePassportData,
    required TResult Function(_OnGetSingleCorpData value) onGetSingleCorpData,
    required TResult Function(_OnDeleteSingleData value) onDeleteSingleData,
    required TResult Function(_OnDeletePassport value) onDeletePassport,
    required TResult Function(_OnDeleteCorporateApps value)
        onDeleteCorporateApps,
  }) {
    return onDeleteSingleData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_OnGetSingleAppsData value)? onGetSingleAppsData,
    TResult? Function(_OnGetSinglePassportData value)? onGetSinglePassportData,
    TResult? Function(_OnGetSingleCorpData value)? onGetSingleCorpData,
    TResult? Function(_OnDeleteSingleData value)? onDeleteSingleData,
    TResult? Function(_OnDeletePassport value)? onDeletePassport,
    TResult? Function(_OnDeleteCorporateApps value)? onDeleteCorporateApps,
  }) {
    return onDeleteSingleData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_OnGetSingleAppsData value)? onGetSingleAppsData,
    TResult Function(_OnGetSinglePassportData value)? onGetSinglePassportData,
    TResult Function(_OnGetSingleCorpData value)? onGetSingleCorpData,
    TResult Function(_OnDeleteSingleData value)? onDeleteSingleData,
    TResult Function(_OnDeletePassport value)? onDeletePassport,
    TResult Function(_OnDeleteCorporateApps value)? onDeleteCorporateApps,
    required TResult orElse(),
  }) {
    if (onDeleteSingleData != null) {
      return onDeleteSingleData(this);
    }
    return orElse();
  }
}

abstract class _OnDeleteSingleData implements DashboardState {
  const factory _OnDeleteSingleData(
          final SimpleVisaModel deletedVisa, final int appType) =
      _$OnDeleteSingleDataImpl;

  SimpleVisaModel get deletedVisa;
  int get appType;
  @JsonKey(ignore: true)
  _$$OnDeleteSingleDataImplCopyWith<_$OnDeleteSingleDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnDeletePassportImplCopyWith<$Res> {
  factory _$$OnDeletePassportImplCopyWith(_$OnDeletePassportImpl value,
          $Res Function(_$OnDeletePassportImpl) then) =
      __$$OnDeletePassportImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SimpleVisaModel deletedVisa, int appType});

  $SimpleVisaModelCopyWith<$Res> get deletedVisa;
}

/// @nodoc
class __$$OnDeletePassportImplCopyWithImpl<$Res>
    extends _$DashboardStateCopyWithImpl<$Res, _$OnDeletePassportImpl>
    implements _$$OnDeletePassportImplCopyWith<$Res> {
  __$$OnDeletePassportImplCopyWithImpl(_$OnDeletePassportImpl _value,
      $Res Function(_$OnDeletePassportImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deletedVisa = null,
    Object? appType = null,
  }) {
    return _then(_$OnDeletePassportImpl(
      null == deletedVisa
          ? _value.deletedVisa
          : deletedVisa // ignore: cast_nullable_to_non_nullable
              as SimpleVisaModel,
      null == appType
          ? _value.appType
          : appType // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $SimpleVisaModelCopyWith<$Res> get deletedVisa {
    return $SimpleVisaModelCopyWith<$Res>(_value.deletedVisa, (value) {
      return _then(_value.copyWith(deletedVisa: value));
    });
  }
}

/// @nodoc

class _$OnDeletePassportImpl implements _OnDeletePassport {
  const _$OnDeletePassportImpl(this.deletedVisa, this.appType);

  @override
  final SimpleVisaModel deletedVisa;
  @override
  final int appType;

  @override
  String toString() {
    return 'DashboardState.onDeletePassport(deletedVisa: $deletedVisa, appType: $appType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnDeletePassportImpl &&
            (identical(other.deletedVisa, deletedVisa) ||
                other.deletedVisa == deletedVisa) &&
            (identical(other.appType, appType) || other.appType == appType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, deletedVisa, appType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnDeletePassportImplCopyWith<_$OnDeletePassportImpl> get copyWith =>
      __$$OnDeletePassportImplCopyWithImpl<_$OnDeletePassportImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failures err) error,
    required TResult Function(SimpleVisaModel visa) onGetSingleAppsData,
    required TResult Function(SimpleVisaModel visa) onGetSinglePassportData,
    required TResult Function(SimpleVisaModel visa) onGetSingleCorpData,
    required TResult Function(SimpleVisaModel deletedVisa, int appType)
        onDeleteSingleData,
    required TResult Function(SimpleVisaModel deletedVisa, int appType)
        onDeletePassport,
    required TResult Function(SimpleVisaModel deletedVisa, int appType)
        onDeleteCorporateApps,
  }) {
    return onDeletePassport(deletedVisa, appType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failures err)? error,
    TResult? Function(SimpleVisaModel visa)? onGetSingleAppsData,
    TResult? Function(SimpleVisaModel visa)? onGetSinglePassportData,
    TResult? Function(SimpleVisaModel visa)? onGetSingleCorpData,
    TResult? Function(SimpleVisaModel deletedVisa, int appType)?
        onDeleteSingleData,
    TResult? Function(SimpleVisaModel deletedVisa, int appType)?
        onDeletePassport,
    TResult? Function(SimpleVisaModel deletedVisa, int appType)?
        onDeleteCorporateApps,
  }) {
    return onDeletePassport?.call(deletedVisa, appType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failures err)? error,
    TResult Function(SimpleVisaModel visa)? onGetSingleAppsData,
    TResult Function(SimpleVisaModel visa)? onGetSinglePassportData,
    TResult Function(SimpleVisaModel visa)? onGetSingleCorpData,
    TResult Function(SimpleVisaModel deletedVisa, int appType)?
        onDeleteSingleData,
    TResult Function(SimpleVisaModel deletedVisa, int appType)?
        onDeletePassport,
    TResult Function(SimpleVisaModel deletedVisa, int appType)?
        onDeleteCorporateApps,
    required TResult orElse(),
  }) {
    if (onDeletePassport != null) {
      return onDeletePassport(deletedVisa, appType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_OnGetSingleAppsData value) onGetSingleAppsData,
    required TResult Function(_OnGetSinglePassportData value)
        onGetSinglePassportData,
    required TResult Function(_OnGetSingleCorpData value) onGetSingleCorpData,
    required TResult Function(_OnDeleteSingleData value) onDeleteSingleData,
    required TResult Function(_OnDeletePassport value) onDeletePassport,
    required TResult Function(_OnDeleteCorporateApps value)
        onDeleteCorporateApps,
  }) {
    return onDeletePassport(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_OnGetSingleAppsData value)? onGetSingleAppsData,
    TResult? Function(_OnGetSinglePassportData value)? onGetSinglePassportData,
    TResult? Function(_OnGetSingleCorpData value)? onGetSingleCorpData,
    TResult? Function(_OnDeleteSingleData value)? onDeleteSingleData,
    TResult? Function(_OnDeletePassport value)? onDeletePassport,
    TResult? Function(_OnDeleteCorporateApps value)? onDeleteCorporateApps,
  }) {
    return onDeletePassport?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_OnGetSingleAppsData value)? onGetSingleAppsData,
    TResult Function(_OnGetSinglePassportData value)? onGetSinglePassportData,
    TResult Function(_OnGetSingleCorpData value)? onGetSingleCorpData,
    TResult Function(_OnDeleteSingleData value)? onDeleteSingleData,
    TResult Function(_OnDeletePassport value)? onDeletePassport,
    TResult Function(_OnDeleteCorporateApps value)? onDeleteCorporateApps,
    required TResult orElse(),
  }) {
    if (onDeletePassport != null) {
      return onDeletePassport(this);
    }
    return orElse();
  }
}

abstract class _OnDeletePassport implements DashboardState {
  const factory _OnDeletePassport(
          final SimpleVisaModel deletedVisa, final int appType) =
      _$OnDeletePassportImpl;

  SimpleVisaModel get deletedVisa;
  int get appType;
  @JsonKey(ignore: true)
  _$$OnDeletePassportImplCopyWith<_$OnDeletePassportImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnDeleteCorporateAppsImplCopyWith<$Res> {
  factory _$$OnDeleteCorporateAppsImplCopyWith(
          _$OnDeleteCorporateAppsImpl value,
          $Res Function(_$OnDeleteCorporateAppsImpl) then) =
      __$$OnDeleteCorporateAppsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SimpleVisaModel deletedVisa, int appType});

  $SimpleVisaModelCopyWith<$Res> get deletedVisa;
}

/// @nodoc
class __$$OnDeleteCorporateAppsImplCopyWithImpl<$Res>
    extends _$DashboardStateCopyWithImpl<$Res, _$OnDeleteCorporateAppsImpl>
    implements _$$OnDeleteCorporateAppsImplCopyWith<$Res> {
  __$$OnDeleteCorporateAppsImplCopyWithImpl(_$OnDeleteCorporateAppsImpl _value,
      $Res Function(_$OnDeleteCorporateAppsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deletedVisa = null,
    Object? appType = null,
  }) {
    return _then(_$OnDeleteCorporateAppsImpl(
      null == deletedVisa
          ? _value.deletedVisa
          : deletedVisa // ignore: cast_nullable_to_non_nullable
              as SimpleVisaModel,
      null == appType
          ? _value.appType
          : appType // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $SimpleVisaModelCopyWith<$Res> get deletedVisa {
    return $SimpleVisaModelCopyWith<$Res>(_value.deletedVisa, (value) {
      return _then(_value.copyWith(deletedVisa: value));
    });
  }
}

/// @nodoc

class _$OnDeleteCorporateAppsImpl implements _OnDeleteCorporateApps {
  const _$OnDeleteCorporateAppsImpl(this.deletedVisa, this.appType);

  @override
  final SimpleVisaModel deletedVisa;
  @override
  final int appType;

  @override
  String toString() {
    return 'DashboardState.onDeleteCorporateApps(deletedVisa: $deletedVisa, appType: $appType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnDeleteCorporateAppsImpl &&
            (identical(other.deletedVisa, deletedVisa) ||
                other.deletedVisa == deletedVisa) &&
            (identical(other.appType, appType) || other.appType == appType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, deletedVisa, appType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnDeleteCorporateAppsImplCopyWith<_$OnDeleteCorporateAppsImpl>
      get copyWith => __$$OnDeleteCorporateAppsImplCopyWithImpl<
          _$OnDeleteCorporateAppsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failures err) error,
    required TResult Function(SimpleVisaModel visa) onGetSingleAppsData,
    required TResult Function(SimpleVisaModel visa) onGetSinglePassportData,
    required TResult Function(SimpleVisaModel visa) onGetSingleCorpData,
    required TResult Function(SimpleVisaModel deletedVisa, int appType)
        onDeleteSingleData,
    required TResult Function(SimpleVisaModel deletedVisa, int appType)
        onDeletePassport,
    required TResult Function(SimpleVisaModel deletedVisa, int appType)
        onDeleteCorporateApps,
  }) {
    return onDeleteCorporateApps(deletedVisa, appType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failures err)? error,
    TResult? Function(SimpleVisaModel visa)? onGetSingleAppsData,
    TResult? Function(SimpleVisaModel visa)? onGetSinglePassportData,
    TResult? Function(SimpleVisaModel visa)? onGetSingleCorpData,
    TResult? Function(SimpleVisaModel deletedVisa, int appType)?
        onDeleteSingleData,
    TResult? Function(SimpleVisaModel deletedVisa, int appType)?
        onDeletePassport,
    TResult? Function(SimpleVisaModel deletedVisa, int appType)?
        onDeleteCorporateApps,
  }) {
    return onDeleteCorporateApps?.call(deletedVisa, appType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failures err)? error,
    TResult Function(SimpleVisaModel visa)? onGetSingleAppsData,
    TResult Function(SimpleVisaModel visa)? onGetSinglePassportData,
    TResult Function(SimpleVisaModel visa)? onGetSingleCorpData,
    TResult Function(SimpleVisaModel deletedVisa, int appType)?
        onDeleteSingleData,
    TResult Function(SimpleVisaModel deletedVisa, int appType)?
        onDeletePassport,
    TResult Function(SimpleVisaModel deletedVisa, int appType)?
        onDeleteCorporateApps,
    required TResult orElse(),
  }) {
    if (onDeleteCorporateApps != null) {
      return onDeleteCorporateApps(deletedVisa, appType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_OnGetSingleAppsData value) onGetSingleAppsData,
    required TResult Function(_OnGetSinglePassportData value)
        onGetSinglePassportData,
    required TResult Function(_OnGetSingleCorpData value) onGetSingleCorpData,
    required TResult Function(_OnDeleteSingleData value) onDeleteSingleData,
    required TResult Function(_OnDeletePassport value) onDeletePassport,
    required TResult Function(_OnDeleteCorporateApps value)
        onDeleteCorporateApps,
  }) {
    return onDeleteCorporateApps(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_OnGetSingleAppsData value)? onGetSingleAppsData,
    TResult? Function(_OnGetSinglePassportData value)? onGetSinglePassportData,
    TResult? Function(_OnGetSingleCorpData value)? onGetSingleCorpData,
    TResult? Function(_OnDeleteSingleData value)? onDeleteSingleData,
    TResult? Function(_OnDeletePassport value)? onDeletePassport,
    TResult? Function(_OnDeleteCorporateApps value)? onDeleteCorporateApps,
  }) {
    return onDeleteCorporateApps?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_OnGetSingleAppsData value)? onGetSingleAppsData,
    TResult Function(_OnGetSinglePassportData value)? onGetSinglePassportData,
    TResult Function(_OnGetSingleCorpData value)? onGetSingleCorpData,
    TResult Function(_OnDeleteSingleData value)? onDeleteSingleData,
    TResult Function(_OnDeletePassport value)? onDeletePassport,
    TResult Function(_OnDeleteCorporateApps value)? onDeleteCorporateApps,
    required TResult orElse(),
  }) {
    if (onDeleteCorporateApps != null) {
      return onDeleteCorporateApps(this);
    }
    return orElse();
  }
}

abstract class _OnDeleteCorporateApps implements DashboardState {
  const factory _OnDeleteCorporateApps(
          final SimpleVisaModel deletedVisa, final int appType) =
      _$OnDeleteCorporateAppsImpl;

  SimpleVisaModel get deletedVisa;
  int get appType;
  @JsonKey(ignore: true)
  _$$OnDeleteCorporateAppsImplCopyWith<_$OnDeleteCorporateAppsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
