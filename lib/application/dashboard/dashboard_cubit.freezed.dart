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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DashboardState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failures err) error,
    required TResult Function(SimpleVisaModel visa) onGetSingleData,
    required TResult Function(SimpleVisaModel deletedVisa, int appType)
        onDeleteSingleData,
    required TResult Function(SimpleVisaModel deletedVisa, int appType)
        onDeletePassport,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failures err)? error,
    TResult? Function(SimpleVisaModel visa)? onGetSingleData,
    TResult? Function(SimpleVisaModel deletedVisa, int appType)?
        onDeleteSingleData,
    TResult? Function(SimpleVisaModel deletedVisa, int appType)?
        onDeletePassport,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failures err)? error,
    TResult Function(SimpleVisaModel visa)? onGetSingleData,
    TResult Function(SimpleVisaModel deletedVisa, int appType)?
        onDeleteSingleData,
    TResult Function(SimpleVisaModel deletedVisa, int appType)?
        onDeletePassport,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_OnGetSingleData value) onGetSingleData,
    required TResult Function(_OnDeleteSingleData value) onDeleteSingleData,
    required TResult Function(_OnDeletePassport value) onDeletePassport,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_OnGetSingleData value)? onGetSingleData,
    TResult? Function(_OnDeleteSingleData value)? onDeleteSingleData,
    TResult? Function(_OnDeletePassport value)? onDeletePassport,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_OnGetSingleData value)? onGetSingleData,
    TResult Function(_OnDeleteSingleData value)? onDeleteSingleData,
    TResult Function(_OnDeletePassport value)? onDeletePassport,
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
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$DashboardStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'DashboardState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failures err) error,
    required TResult Function(SimpleVisaModel visa) onGetSingleData,
    required TResult Function(SimpleVisaModel deletedVisa, int appType)
        onDeleteSingleData,
    required TResult Function(SimpleVisaModel deletedVisa, int appType)
        onDeletePassport,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failures err)? error,
    TResult? Function(SimpleVisaModel visa)? onGetSingleData,
    TResult? Function(SimpleVisaModel deletedVisa, int appType)?
        onDeleteSingleData,
    TResult? Function(SimpleVisaModel deletedVisa, int appType)?
        onDeletePassport,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failures err)? error,
    TResult Function(SimpleVisaModel visa)? onGetSingleData,
    TResult Function(SimpleVisaModel deletedVisa, int appType)?
        onDeleteSingleData,
    TResult Function(SimpleVisaModel deletedVisa, int appType)?
        onDeletePassport,
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
    required TResult Function(_OnGetSingleData value) onGetSingleData,
    required TResult Function(_OnDeleteSingleData value) onDeleteSingleData,
    required TResult Function(_OnDeletePassport value) onDeletePassport,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_OnGetSingleData value)? onGetSingleData,
    TResult? Function(_OnDeleteSingleData value)? onDeleteSingleData,
    TResult? Function(_OnDeletePassport value)? onDeletePassport,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_OnGetSingleData value)? onGetSingleData,
    TResult Function(_OnDeleteSingleData value)? onDeleteSingleData,
    TResult Function(_OnDeletePassport value)? onDeletePassport,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements DashboardState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$DashboardStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'DashboardState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failures err) error,
    required TResult Function(SimpleVisaModel visa) onGetSingleData,
    required TResult Function(SimpleVisaModel deletedVisa, int appType)
        onDeleteSingleData,
    required TResult Function(SimpleVisaModel deletedVisa, int appType)
        onDeletePassport,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failures err)? error,
    TResult? Function(SimpleVisaModel visa)? onGetSingleData,
    TResult? Function(SimpleVisaModel deletedVisa, int appType)?
        onDeleteSingleData,
    TResult? Function(SimpleVisaModel deletedVisa, int appType)?
        onDeletePassport,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failures err)? error,
    TResult Function(SimpleVisaModel visa)? onGetSingleData,
    TResult Function(SimpleVisaModel deletedVisa, int appType)?
        onDeleteSingleData,
    TResult Function(SimpleVisaModel deletedVisa, int appType)?
        onDeletePassport,
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
    required TResult Function(_OnGetSingleData value) onGetSingleData,
    required TResult Function(_OnDeleteSingleData value) onDeleteSingleData,
    required TResult Function(_OnDeletePassport value) onDeletePassport,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_OnGetSingleData value)? onGetSingleData,
    TResult? Function(_OnDeleteSingleData value)? onDeleteSingleData,
    TResult? Function(_OnDeletePassport value)? onDeletePassport,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_OnGetSingleData value)? onGetSingleData,
    TResult Function(_OnDeleteSingleData value)? onDeleteSingleData,
    TResult Function(_OnDeletePassport value)? onDeletePassport,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements DashboardState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_ErrorCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({Failures err});

  $FailuresCopyWith<$Res> get err;
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res>
    extends _$DashboardStateCopyWithImpl<$Res, _$_Error>
    implements _$$_ErrorCopyWith<$Res> {
  __$$_ErrorCopyWithImpl(_$_Error _value, $Res Function(_$_Error) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? err = null,
  }) {
    return _then(_$_Error(
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

class _$_Error implements _Error {
  const _$_Error(this.err);

  @override
  final Failures err;

  @override
  String toString() {
    return 'DashboardState.error(err: $err)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Error &&
            (identical(other.err, err) || other.err == err));
  }

  @override
  int get hashCode => Object.hash(runtimeType, err);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      __$$_ErrorCopyWithImpl<_$_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failures err) error,
    required TResult Function(SimpleVisaModel visa) onGetSingleData,
    required TResult Function(SimpleVisaModel deletedVisa, int appType)
        onDeleteSingleData,
    required TResult Function(SimpleVisaModel deletedVisa, int appType)
        onDeletePassport,
  }) {
    return error(err);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failures err)? error,
    TResult? Function(SimpleVisaModel visa)? onGetSingleData,
    TResult? Function(SimpleVisaModel deletedVisa, int appType)?
        onDeleteSingleData,
    TResult? Function(SimpleVisaModel deletedVisa, int appType)?
        onDeletePassport,
  }) {
    return error?.call(err);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failures err)? error,
    TResult Function(SimpleVisaModel visa)? onGetSingleData,
    TResult Function(SimpleVisaModel deletedVisa, int appType)?
        onDeleteSingleData,
    TResult Function(SimpleVisaModel deletedVisa, int appType)?
        onDeletePassport,
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
    required TResult Function(_OnGetSingleData value) onGetSingleData,
    required TResult Function(_OnDeleteSingleData value) onDeleteSingleData,
    required TResult Function(_OnDeletePassport value) onDeletePassport,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_OnGetSingleData value)? onGetSingleData,
    TResult? Function(_OnDeleteSingleData value)? onDeleteSingleData,
    TResult? Function(_OnDeletePassport value)? onDeletePassport,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_OnGetSingleData value)? onGetSingleData,
    TResult Function(_OnDeleteSingleData value)? onDeleteSingleData,
    TResult Function(_OnDeletePassport value)? onDeletePassport,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements DashboardState {
  const factory _Error(final Failures err) = _$_Error;

  Failures get err;
  @JsonKey(ignore: true)
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_OnGetSingleDataCopyWith<$Res> {
  factory _$$_OnGetSingleDataCopyWith(
          _$_OnGetSingleData value, $Res Function(_$_OnGetSingleData) then) =
      __$$_OnGetSingleDataCopyWithImpl<$Res>;
  @useResult
  $Res call({SimpleVisaModel visa});

  $SimpleVisaModelCopyWith<$Res> get visa;
}

/// @nodoc
class __$$_OnGetSingleDataCopyWithImpl<$Res>
    extends _$DashboardStateCopyWithImpl<$Res, _$_OnGetSingleData>
    implements _$$_OnGetSingleDataCopyWith<$Res> {
  __$$_OnGetSingleDataCopyWithImpl(
      _$_OnGetSingleData _value, $Res Function(_$_OnGetSingleData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? visa = null,
  }) {
    return _then(_$_OnGetSingleData(
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

class _$_OnGetSingleData implements _OnGetSingleData {
  const _$_OnGetSingleData(this.visa);

  @override
  final SimpleVisaModel visa;

  @override
  String toString() {
    return 'DashboardState.onGetSingleData(visa: $visa)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OnGetSingleData &&
            (identical(other.visa, visa) || other.visa == visa));
  }

  @override
  int get hashCode => Object.hash(runtimeType, visa);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OnGetSingleDataCopyWith<_$_OnGetSingleData> get copyWith =>
      __$$_OnGetSingleDataCopyWithImpl<_$_OnGetSingleData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failures err) error,
    required TResult Function(SimpleVisaModel visa) onGetSingleData,
    required TResult Function(SimpleVisaModel deletedVisa, int appType)
        onDeleteSingleData,
    required TResult Function(SimpleVisaModel deletedVisa, int appType)
        onDeletePassport,
  }) {
    return onGetSingleData(visa);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failures err)? error,
    TResult? Function(SimpleVisaModel visa)? onGetSingleData,
    TResult? Function(SimpleVisaModel deletedVisa, int appType)?
        onDeleteSingleData,
    TResult? Function(SimpleVisaModel deletedVisa, int appType)?
        onDeletePassport,
  }) {
    return onGetSingleData?.call(visa);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failures err)? error,
    TResult Function(SimpleVisaModel visa)? onGetSingleData,
    TResult Function(SimpleVisaModel deletedVisa, int appType)?
        onDeleteSingleData,
    TResult Function(SimpleVisaModel deletedVisa, int appType)?
        onDeletePassport,
    required TResult orElse(),
  }) {
    if (onGetSingleData != null) {
      return onGetSingleData(visa);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_OnGetSingleData value) onGetSingleData,
    required TResult Function(_OnDeleteSingleData value) onDeleteSingleData,
    required TResult Function(_OnDeletePassport value) onDeletePassport,
  }) {
    return onGetSingleData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_OnGetSingleData value)? onGetSingleData,
    TResult? Function(_OnDeleteSingleData value)? onDeleteSingleData,
    TResult? Function(_OnDeletePassport value)? onDeletePassport,
  }) {
    return onGetSingleData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_OnGetSingleData value)? onGetSingleData,
    TResult Function(_OnDeleteSingleData value)? onDeleteSingleData,
    TResult Function(_OnDeletePassport value)? onDeletePassport,
    required TResult orElse(),
  }) {
    if (onGetSingleData != null) {
      return onGetSingleData(this);
    }
    return orElse();
  }
}

abstract class _OnGetSingleData implements DashboardState {
  const factory _OnGetSingleData(final SimpleVisaModel visa) =
      _$_OnGetSingleData;

  SimpleVisaModel get visa;
  @JsonKey(ignore: true)
  _$$_OnGetSingleDataCopyWith<_$_OnGetSingleData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_OnDeleteSingleDataCopyWith<$Res> {
  factory _$$_OnDeleteSingleDataCopyWith(_$_OnDeleteSingleData value,
          $Res Function(_$_OnDeleteSingleData) then) =
      __$$_OnDeleteSingleDataCopyWithImpl<$Res>;
  @useResult
  $Res call({SimpleVisaModel deletedVisa, int appType});

  $SimpleVisaModelCopyWith<$Res> get deletedVisa;
}

/// @nodoc
class __$$_OnDeleteSingleDataCopyWithImpl<$Res>
    extends _$DashboardStateCopyWithImpl<$Res, _$_OnDeleteSingleData>
    implements _$$_OnDeleteSingleDataCopyWith<$Res> {
  __$$_OnDeleteSingleDataCopyWithImpl(
      _$_OnDeleteSingleData _value, $Res Function(_$_OnDeleteSingleData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deletedVisa = null,
    Object? appType = null,
  }) {
    return _then(_$_OnDeleteSingleData(
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

class _$_OnDeleteSingleData implements _OnDeleteSingleData {
  const _$_OnDeleteSingleData(this.deletedVisa, this.appType);

  @override
  final SimpleVisaModel deletedVisa;
  @override
  final int appType;

  @override
  String toString() {
    return 'DashboardState.onDeleteSingleData(deletedVisa: $deletedVisa, appType: $appType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OnDeleteSingleData &&
            (identical(other.deletedVisa, deletedVisa) ||
                other.deletedVisa == deletedVisa) &&
            (identical(other.appType, appType) || other.appType == appType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, deletedVisa, appType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OnDeleteSingleDataCopyWith<_$_OnDeleteSingleData> get copyWith =>
      __$$_OnDeleteSingleDataCopyWithImpl<_$_OnDeleteSingleData>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failures err) error,
    required TResult Function(SimpleVisaModel visa) onGetSingleData,
    required TResult Function(SimpleVisaModel deletedVisa, int appType)
        onDeleteSingleData,
    required TResult Function(SimpleVisaModel deletedVisa, int appType)
        onDeletePassport,
  }) {
    return onDeleteSingleData(deletedVisa, appType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failures err)? error,
    TResult? Function(SimpleVisaModel visa)? onGetSingleData,
    TResult? Function(SimpleVisaModel deletedVisa, int appType)?
        onDeleteSingleData,
    TResult? Function(SimpleVisaModel deletedVisa, int appType)?
        onDeletePassport,
  }) {
    return onDeleteSingleData?.call(deletedVisa, appType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failures err)? error,
    TResult Function(SimpleVisaModel visa)? onGetSingleData,
    TResult Function(SimpleVisaModel deletedVisa, int appType)?
        onDeleteSingleData,
    TResult Function(SimpleVisaModel deletedVisa, int appType)?
        onDeletePassport,
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
    required TResult Function(_OnGetSingleData value) onGetSingleData,
    required TResult Function(_OnDeleteSingleData value) onDeleteSingleData,
    required TResult Function(_OnDeletePassport value) onDeletePassport,
  }) {
    return onDeleteSingleData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_OnGetSingleData value)? onGetSingleData,
    TResult? Function(_OnDeleteSingleData value)? onDeleteSingleData,
    TResult? Function(_OnDeletePassport value)? onDeletePassport,
  }) {
    return onDeleteSingleData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_OnGetSingleData value)? onGetSingleData,
    TResult Function(_OnDeleteSingleData value)? onDeleteSingleData,
    TResult Function(_OnDeletePassport value)? onDeletePassport,
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
      _$_OnDeleteSingleData;

  SimpleVisaModel get deletedVisa;
  int get appType;
  @JsonKey(ignore: true)
  _$$_OnDeleteSingleDataCopyWith<_$_OnDeleteSingleData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_OnDeletePassportCopyWith<$Res> {
  factory _$$_OnDeletePassportCopyWith(
          _$_OnDeletePassport value, $Res Function(_$_OnDeletePassport) then) =
      __$$_OnDeletePassportCopyWithImpl<$Res>;
  @useResult
  $Res call({SimpleVisaModel deletedVisa, int appType});

  $SimpleVisaModelCopyWith<$Res> get deletedVisa;
}

/// @nodoc
class __$$_OnDeletePassportCopyWithImpl<$Res>
    extends _$DashboardStateCopyWithImpl<$Res, _$_OnDeletePassport>
    implements _$$_OnDeletePassportCopyWith<$Res> {
  __$$_OnDeletePassportCopyWithImpl(
      _$_OnDeletePassport _value, $Res Function(_$_OnDeletePassport) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deletedVisa = null,
    Object? appType = null,
  }) {
    return _then(_$_OnDeletePassport(
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

class _$_OnDeletePassport implements _OnDeletePassport {
  const _$_OnDeletePassport(this.deletedVisa, this.appType);

  @override
  final SimpleVisaModel deletedVisa;
  @override
  final int appType;

  @override
  String toString() {
    return 'DashboardState.onDeletePassport(deletedVisa: $deletedVisa, appType: $appType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OnDeletePassport &&
            (identical(other.deletedVisa, deletedVisa) ||
                other.deletedVisa == deletedVisa) &&
            (identical(other.appType, appType) || other.appType == appType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, deletedVisa, appType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OnDeletePassportCopyWith<_$_OnDeletePassport> get copyWith =>
      __$$_OnDeletePassportCopyWithImpl<_$_OnDeletePassport>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failures err) error,
    required TResult Function(SimpleVisaModel visa) onGetSingleData,
    required TResult Function(SimpleVisaModel deletedVisa, int appType)
        onDeleteSingleData,
    required TResult Function(SimpleVisaModel deletedVisa, int appType)
        onDeletePassport,
  }) {
    return onDeletePassport(deletedVisa, appType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failures err)? error,
    TResult? Function(SimpleVisaModel visa)? onGetSingleData,
    TResult? Function(SimpleVisaModel deletedVisa, int appType)?
        onDeleteSingleData,
    TResult? Function(SimpleVisaModel deletedVisa, int appType)?
        onDeletePassport,
  }) {
    return onDeletePassport?.call(deletedVisa, appType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failures err)? error,
    TResult Function(SimpleVisaModel visa)? onGetSingleData,
    TResult Function(SimpleVisaModel deletedVisa, int appType)?
        onDeleteSingleData,
    TResult Function(SimpleVisaModel deletedVisa, int appType)?
        onDeletePassport,
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
    required TResult Function(_OnGetSingleData value) onGetSingleData,
    required TResult Function(_OnDeleteSingleData value) onDeleteSingleData,
    required TResult Function(_OnDeletePassport value) onDeletePassport,
  }) {
    return onDeletePassport(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_OnGetSingleData value)? onGetSingleData,
    TResult? Function(_OnDeleteSingleData value)? onDeleteSingleData,
    TResult? Function(_OnDeletePassport value)? onDeletePassport,
  }) {
    return onDeletePassport?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_OnGetSingleData value)? onGetSingleData,
    TResult Function(_OnDeleteSingleData value)? onDeleteSingleData,
    TResult Function(_OnDeletePassport value)? onDeletePassport,
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
      _$_OnDeletePassport;

  SimpleVisaModel get deletedVisa;
  int get appType;
  @JsonKey(ignore: true)
  _$$_OnDeletePassportCopyWith<_$_OnDeletePassport> get copyWith =>
      throw _privateConstructorUsedError;
}
