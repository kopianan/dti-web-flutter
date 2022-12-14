// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function(Failures error) onError,
    required TResult Function(String token) onLoginSuccess,
    required TResult Function(String token) onRegisterSuccess,
    required TResult Function(String message) onResetPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(Failures error)? onError,
    TResult Function(String token)? onLoginSuccess,
    TResult Function(String token)? onRegisterSuccess,
    TResult Function(String message)? onResetPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(Failures error)? onError,
    TResult Function(String token)? onLoginSuccess,
    TResult Function(String token)? onRegisterSuccess,
    TResult Function(String message)? onResetPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_OnError value) onError,
    required TResult Function(_OnLoginSuccess value) onLoginSuccess,
    required TResult Function(_OnRegisterSuccess value) onRegisterSuccess,
    required TResult Function(_OnResetPassword value) onResetPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_OnError value)? onError,
    TResult Function(_OnLoginSuccess value)? onLoginSuccess,
    TResult Function(_OnRegisterSuccess value)? onRegisterSuccess,
    TResult Function(_OnResetPassword value)? onResetPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_OnError value)? onError,
    TResult Function(_OnLoginSuccess value)? onLoginSuccess,
    TResult Function(_OnRegisterSuccess value)? onRegisterSuccess,
    TResult Function(_OnResetPassword value)? onResetPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, (v) => _then(v as _$_Initial));

  @override
  _$_Initial get _value => super._value as _$_Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'AuthState.initial()';
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
    required TResult Function(String error) error,
    required TResult Function(Failures error) onError,
    required TResult Function(String token) onLoginSuccess,
    required TResult Function(String token) onRegisterSuccess,
    required TResult Function(String message) onResetPassword,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(Failures error)? onError,
    TResult Function(String token)? onLoginSuccess,
    TResult Function(String token)? onRegisterSuccess,
    TResult Function(String message)? onResetPassword,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(Failures error)? onError,
    TResult Function(String token)? onLoginSuccess,
    TResult Function(String token)? onRegisterSuccess,
    TResult Function(String message)? onResetPassword,
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
    required TResult Function(_OnError value) onError,
    required TResult Function(_OnLoginSuccess value) onLoginSuccess,
    required TResult Function(_OnRegisterSuccess value) onRegisterSuccess,
    required TResult Function(_OnResetPassword value) onResetPassword,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_OnError value)? onError,
    TResult Function(_OnLoginSuccess value)? onLoginSuccess,
    TResult Function(_OnRegisterSuccess value)? onRegisterSuccess,
    TResult Function(_OnResetPassword value)? onResetPassword,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_OnError value)? onError,
    TResult Function(_OnLoginSuccess value)? onLoginSuccess,
    TResult Function(_OnRegisterSuccess value)? onRegisterSuccess,
    TResult Function(_OnResetPassword value)? onResetPassword,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AuthState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, (v) => _then(v as _$_Loading));

  @override
  _$_Loading get _value => super._value as _$_Loading;
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'AuthState.loading()';
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
    required TResult Function(String error) error,
    required TResult Function(Failures error) onError,
    required TResult Function(String token) onLoginSuccess,
    required TResult Function(String token) onRegisterSuccess,
    required TResult Function(String message) onResetPassword,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(Failures error)? onError,
    TResult Function(String token)? onLoginSuccess,
    TResult Function(String token)? onRegisterSuccess,
    TResult Function(String message)? onResetPassword,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(Failures error)? onError,
    TResult Function(String token)? onLoginSuccess,
    TResult Function(String token)? onRegisterSuccess,
    TResult Function(String message)? onResetPassword,
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
    required TResult Function(_OnError value) onError,
    required TResult Function(_OnLoginSuccess value) onLoginSuccess,
    required TResult Function(_OnRegisterSuccess value) onRegisterSuccess,
    required TResult Function(_OnResetPassword value) onResetPassword,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_OnError value)? onError,
    TResult Function(_OnLoginSuccess value)? onLoginSuccess,
    TResult Function(_OnRegisterSuccess value)? onRegisterSuccess,
    TResult Function(_OnResetPassword value)? onResetPassword,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_OnError value)? onError,
    TResult Function(_OnLoginSuccess value)? onLoginSuccess,
    TResult Function(_OnRegisterSuccess value)? onRegisterSuccess,
    TResult Function(_OnResetPassword value)? onResetPassword,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements AuthState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_ErrorCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
  $Res call({String error});
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$$_ErrorCopyWith<$Res> {
  __$$_ErrorCopyWithImpl(_$_Error _value, $Res Function(_$_Error) _then)
      : super(_value, (v) => _then(v as _$_Error));

  @override
  _$_Error get _value => super._value as _$_Error;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$_Error(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'AuthState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Error &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      __$$_ErrorCopyWithImpl<_$_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function(Failures error) onError,
    required TResult Function(String token) onLoginSuccess,
    required TResult Function(String token) onRegisterSuccess,
    required TResult Function(String message) onResetPassword,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(Failures error)? onError,
    TResult Function(String token)? onLoginSuccess,
    TResult Function(String token)? onRegisterSuccess,
    TResult Function(String message)? onResetPassword,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(Failures error)? onError,
    TResult Function(String token)? onLoginSuccess,
    TResult Function(String token)? onRegisterSuccess,
    TResult Function(String message)? onResetPassword,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_OnError value) onError,
    required TResult Function(_OnLoginSuccess value) onLoginSuccess,
    required TResult Function(_OnRegisterSuccess value) onRegisterSuccess,
    required TResult Function(_OnResetPassword value) onResetPassword,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_OnError value)? onError,
    TResult Function(_OnLoginSuccess value)? onLoginSuccess,
    TResult Function(_OnRegisterSuccess value)? onRegisterSuccess,
    TResult Function(_OnResetPassword value)? onResetPassword,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_OnError value)? onError,
    TResult Function(_OnLoginSuccess value)? onLoginSuccess,
    TResult Function(_OnRegisterSuccess value)? onRegisterSuccess,
    TResult Function(_OnResetPassword value)? onResetPassword,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements AuthState {
  const factory _Error(final String error) = _$_Error;

  String get error;
  @JsonKey(ignore: true)
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_OnErrorCopyWith<$Res> {
  factory _$$_OnErrorCopyWith(
          _$_OnError value, $Res Function(_$_OnError) then) =
      __$$_OnErrorCopyWithImpl<$Res>;
  $Res call({Failures error});

  $FailuresCopyWith<$Res> get error;
}

/// @nodoc
class __$$_OnErrorCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$$_OnErrorCopyWith<$Res> {
  __$$_OnErrorCopyWithImpl(_$_OnError _value, $Res Function(_$_OnError) _then)
      : super(_value, (v) => _then(v as _$_OnError));

  @override
  _$_OnError get _value => super._value as _$_OnError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$_OnError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Failures,
    ));
  }

  @override
  $FailuresCopyWith<$Res> get error {
    return $FailuresCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc

class _$_OnError implements _OnError {
  const _$_OnError(this.error);

  @override
  final Failures error;

  @override
  String toString() {
    return 'AuthState.onError(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OnError &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$_OnErrorCopyWith<_$_OnError> get copyWith =>
      __$$_OnErrorCopyWithImpl<_$_OnError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function(Failures error) onError,
    required TResult Function(String token) onLoginSuccess,
    required TResult Function(String token) onRegisterSuccess,
    required TResult Function(String message) onResetPassword,
  }) {
    return onError(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(Failures error)? onError,
    TResult Function(String token)? onLoginSuccess,
    TResult Function(String token)? onRegisterSuccess,
    TResult Function(String message)? onResetPassword,
  }) {
    return onError?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(Failures error)? onError,
    TResult Function(String token)? onLoginSuccess,
    TResult Function(String token)? onRegisterSuccess,
    TResult Function(String message)? onResetPassword,
    required TResult orElse(),
  }) {
    if (onError != null) {
      return onError(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_OnError value) onError,
    required TResult Function(_OnLoginSuccess value) onLoginSuccess,
    required TResult Function(_OnRegisterSuccess value) onRegisterSuccess,
    required TResult Function(_OnResetPassword value) onResetPassword,
  }) {
    return onError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_OnError value)? onError,
    TResult Function(_OnLoginSuccess value)? onLoginSuccess,
    TResult Function(_OnRegisterSuccess value)? onRegisterSuccess,
    TResult Function(_OnResetPassword value)? onResetPassword,
  }) {
    return onError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_OnError value)? onError,
    TResult Function(_OnLoginSuccess value)? onLoginSuccess,
    TResult Function(_OnRegisterSuccess value)? onRegisterSuccess,
    TResult Function(_OnResetPassword value)? onResetPassword,
    required TResult orElse(),
  }) {
    if (onError != null) {
      return onError(this);
    }
    return orElse();
  }
}

abstract class _OnError implements AuthState {
  const factory _OnError(final Failures error) = _$_OnError;

  Failures get error;
  @JsonKey(ignore: true)
  _$$_OnErrorCopyWith<_$_OnError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_OnLoginSuccessCopyWith<$Res> {
  factory _$$_OnLoginSuccessCopyWith(
          _$_OnLoginSuccess value, $Res Function(_$_OnLoginSuccess) then) =
      __$$_OnLoginSuccessCopyWithImpl<$Res>;
  $Res call({String token});
}

/// @nodoc
class __$$_OnLoginSuccessCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements _$$_OnLoginSuccessCopyWith<$Res> {
  __$$_OnLoginSuccessCopyWithImpl(
      _$_OnLoginSuccess _value, $Res Function(_$_OnLoginSuccess) _then)
      : super(_value, (v) => _then(v as _$_OnLoginSuccess));

  @override
  _$_OnLoginSuccess get _value => super._value as _$_OnLoginSuccess;

  @override
  $Res call({
    Object? token = freezed,
  }) {
    return _then(_$_OnLoginSuccess(
      token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_OnLoginSuccess implements _OnLoginSuccess {
  const _$_OnLoginSuccess(this.token);

  @override
  final String token;

  @override
  String toString() {
    return 'AuthState.onLoginSuccess(token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OnLoginSuccess &&
            const DeepCollectionEquality().equals(other.token, token));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(token));

  @JsonKey(ignore: true)
  @override
  _$$_OnLoginSuccessCopyWith<_$_OnLoginSuccess> get copyWith =>
      __$$_OnLoginSuccessCopyWithImpl<_$_OnLoginSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function(Failures error) onError,
    required TResult Function(String token) onLoginSuccess,
    required TResult Function(String token) onRegisterSuccess,
    required TResult Function(String message) onResetPassword,
  }) {
    return onLoginSuccess(token);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(Failures error)? onError,
    TResult Function(String token)? onLoginSuccess,
    TResult Function(String token)? onRegisterSuccess,
    TResult Function(String message)? onResetPassword,
  }) {
    return onLoginSuccess?.call(token);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(Failures error)? onError,
    TResult Function(String token)? onLoginSuccess,
    TResult Function(String token)? onRegisterSuccess,
    TResult Function(String message)? onResetPassword,
    required TResult orElse(),
  }) {
    if (onLoginSuccess != null) {
      return onLoginSuccess(token);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_OnError value) onError,
    required TResult Function(_OnLoginSuccess value) onLoginSuccess,
    required TResult Function(_OnRegisterSuccess value) onRegisterSuccess,
    required TResult Function(_OnResetPassword value) onResetPassword,
  }) {
    return onLoginSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_OnError value)? onError,
    TResult Function(_OnLoginSuccess value)? onLoginSuccess,
    TResult Function(_OnRegisterSuccess value)? onRegisterSuccess,
    TResult Function(_OnResetPassword value)? onResetPassword,
  }) {
    return onLoginSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_OnError value)? onError,
    TResult Function(_OnLoginSuccess value)? onLoginSuccess,
    TResult Function(_OnRegisterSuccess value)? onRegisterSuccess,
    TResult Function(_OnResetPassword value)? onResetPassword,
    required TResult orElse(),
  }) {
    if (onLoginSuccess != null) {
      return onLoginSuccess(this);
    }
    return orElse();
  }
}

abstract class _OnLoginSuccess implements AuthState {
  const factory _OnLoginSuccess(final String token) = _$_OnLoginSuccess;

  String get token;
  @JsonKey(ignore: true)
  _$$_OnLoginSuccessCopyWith<_$_OnLoginSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_OnRegisterSuccessCopyWith<$Res> {
  factory _$$_OnRegisterSuccessCopyWith(_$_OnRegisterSuccess value,
          $Res Function(_$_OnRegisterSuccess) then) =
      __$$_OnRegisterSuccessCopyWithImpl<$Res>;
  $Res call({String token});
}

/// @nodoc
class __$$_OnRegisterSuccessCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements _$$_OnRegisterSuccessCopyWith<$Res> {
  __$$_OnRegisterSuccessCopyWithImpl(
      _$_OnRegisterSuccess _value, $Res Function(_$_OnRegisterSuccess) _then)
      : super(_value, (v) => _then(v as _$_OnRegisterSuccess));

  @override
  _$_OnRegisterSuccess get _value => super._value as _$_OnRegisterSuccess;

  @override
  $Res call({
    Object? token = freezed,
  }) {
    return _then(_$_OnRegisterSuccess(
      token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_OnRegisterSuccess implements _OnRegisterSuccess {
  const _$_OnRegisterSuccess(this.token);

  @override
  final String token;

  @override
  String toString() {
    return 'AuthState.onRegisterSuccess(token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OnRegisterSuccess &&
            const DeepCollectionEquality().equals(other.token, token));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(token));

  @JsonKey(ignore: true)
  @override
  _$$_OnRegisterSuccessCopyWith<_$_OnRegisterSuccess> get copyWith =>
      __$$_OnRegisterSuccessCopyWithImpl<_$_OnRegisterSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function(Failures error) onError,
    required TResult Function(String token) onLoginSuccess,
    required TResult Function(String token) onRegisterSuccess,
    required TResult Function(String message) onResetPassword,
  }) {
    return onRegisterSuccess(token);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(Failures error)? onError,
    TResult Function(String token)? onLoginSuccess,
    TResult Function(String token)? onRegisterSuccess,
    TResult Function(String message)? onResetPassword,
  }) {
    return onRegisterSuccess?.call(token);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(Failures error)? onError,
    TResult Function(String token)? onLoginSuccess,
    TResult Function(String token)? onRegisterSuccess,
    TResult Function(String message)? onResetPassword,
    required TResult orElse(),
  }) {
    if (onRegisterSuccess != null) {
      return onRegisterSuccess(token);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_OnError value) onError,
    required TResult Function(_OnLoginSuccess value) onLoginSuccess,
    required TResult Function(_OnRegisterSuccess value) onRegisterSuccess,
    required TResult Function(_OnResetPassword value) onResetPassword,
  }) {
    return onRegisterSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_OnError value)? onError,
    TResult Function(_OnLoginSuccess value)? onLoginSuccess,
    TResult Function(_OnRegisterSuccess value)? onRegisterSuccess,
    TResult Function(_OnResetPassword value)? onResetPassword,
  }) {
    return onRegisterSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_OnError value)? onError,
    TResult Function(_OnLoginSuccess value)? onLoginSuccess,
    TResult Function(_OnRegisterSuccess value)? onRegisterSuccess,
    TResult Function(_OnResetPassword value)? onResetPassword,
    required TResult orElse(),
  }) {
    if (onRegisterSuccess != null) {
      return onRegisterSuccess(this);
    }
    return orElse();
  }
}

abstract class _OnRegisterSuccess implements AuthState {
  const factory _OnRegisterSuccess(final String token) = _$_OnRegisterSuccess;

  String get token;
  @JsonKey(ignore: true)
  _$$_OnRegisterSuccessCopyWith<_$_OnRegisterSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_OnResetPasswordCopyWith<$Res> {
  factory _$$_OnResetPasswordCopyWith(
          _$_OnResetPassword value, $Res Function(_$_OnResetPassword) then) =
      __$$_OnResetPasswordCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$$_OnResetPasswordCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements _$$_OnResetPasswordCopyWith<$Res> {
  __$$_OnResetPasswordCopyWithImpl(
      _$_OnResetPassword _value, $Res Function(_$_OnResetPassword) _then)
      : super(_value, (v) => _then(v as _$_OnResetPassword));

  @override
  _$_OnResetPassword get _value => super._value as _$_OnResetPassword;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_OnResetPassword(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_OnResetPassword implements _OnResetPassword {
  const _$_OnResetPassword(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'AuthState.onResetPassword(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OnResetPassword &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$_OnResetPasswordCopyWith<_$_OnResetPassword> get copyWith =>
      __$$_OnResetPasswordCopyWithImpl<_$_OnResetPassword>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function(Failures error) onError,
    required TResult Function(String token) onLoginSuccess,
    required TResult Function(String token) onRegisterSuccess,
    required TResult Function(String message) onResetPassword,
  }) {
    return onResetPassword(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(Failures error)? onError,
    TResult Function(String token)? onLoginSuccess,
    TResult Function(String token)? onRegisterSuccess,
    TResult Function(String message)? onResetPassword,
  }) {
    return onResetPassword?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(Failures error)? onError,
    TResult Function(String token)? onLoginSuccess,
    TResult Function(String token)? onRegisterSuccess,
    TResult Function(String message)? onResetPassword,
    required TResult orElse(),
  }) {
    if (onResetPassword != null) {
      return onResetPassword(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_OnError value) onError,
    required TResult Function(_OnLoginSuccess value) onLoginSuccess,
    required TResult Function(_OnRegisterSuccess value) onRegisterSuccess,
    required TResult Function(_OnResetPassword value) onResetPassword,
  }) {
    return onResetPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_OnError value)? onError,
    TResult Function(_OnLoginSuccess value)? onLoginSuccess,
    TResult Function(_OnRegisterSuccess value)? onRegisterSuccess,
    TResult Function(_OnResetPassword value)? onResetPassword,
  }) {
    return onResetPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_OnError value)? onError,
    TResult Function(_OnLoginSuccess value)? onLoginSuccess,
    TResult Function(_OnRegisterSuccess value)? onRegisterSuccess,
    TResult Function(_OnResetPassword value)? onResetPassword,
    required TResult orElse(),
  }) {
    if (onResetPassword != null) {
      return onResetPassword(this);
    }
    return orElse();
  }
}

abstract class _OnResetPassword implements AuthState {
  const factory _OnResetPassword(final String message) = _$_OnResetPassword;

  String get message;
  @JsonKey(ignore: true)
  _$$_OnResetPasswordCopyWith<_$_OnResetPassword> get copyWith =>
      throw _privateConstructorUsedError;
}
