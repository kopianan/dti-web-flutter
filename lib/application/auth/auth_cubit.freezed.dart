// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function(Failures error) onError,
    required TResult Function() onSignOut,
    required TResult Function(UserData userData) authorized,
    required TResult Function() unAuthorized,
    required TResult Function(String userAgent) isOpenFromPhone,
    required TResult Function(String token) onLoginSuccess,
    required TResult Function(String token) onRegisterSuccess,
    required TResult Function(String message) onResetPassword,
    required TResult Function(UserData userData) onGetUserData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function(Failures error)? onError,
    TResult? Function()? onSignOut,
    TResult? Function(UserData userData)? authorized,
    TResult? Function()? unAuthorized,
    TResult? Function(String userAgent)? isOpenFromPhone,
    TResult? Function(String token)? onLoginSuccess,
    TResult? Function(String token)? onRegisterSuccess,
    TResult? Function(String message)? onResetPassword,
    TResult? Function(UserData userData)? onGetUserData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(Failures error)? onError,
    TResult Function()? onSignOut,
    TResult Function(UserData userData)? authorized,
    TResult Function()? unAuthorized,
    TResult Function(String userAgent)? isOpenFromPhone,
    TResult Function(String token)? onLoginSuccess,
    TResult Function(String token)? onRegisterSuccess,
    TResult Function(String message)? onResetPassword,
    TResult Function(UserData userData)? onGetUserData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_OnError value) onError,
    required TResult Function(_OnSignOut value) onSignOut,
    required TResult Function(_Authorized value) authorized,
    required TResult Function(_UnAuthorized value) unAuthorized,
    required TResult Function(_IsOpenFromPhone value) isOpenFromPhone,
    required TResult Function(_OnLoginSuccess value) onLoginSuccess,
    required TResult Function(_OnRegisterSuccess value) onRegisterSuccess,
    required TResult Function(_OnResetPassword value) onResetPassword,
    required TResult Function(_OnGetUserData value) onGetUserData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_OnError value)? onError,
    TResult? Function(_OnSignOut value)? onSignOut,
    TResult? Function(_Authorized value)? authorized,
    TResult? Function(_UnAuthorized value)? unAuthorized,
    TResult? Function(_IsOpenFromPhone value)? isOpenFromPhone,
    TResult? Function(_OnLoginSuccess value)? onLoginSuccess,
    TResult? Function(_OnRegisterSuccess value)? onRegisterSuccess,
    TResult? Function(_OnResetPassword value)? onResetPassword,
    TResult? Function(_OnGetUserData value)? onGetUserData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_OnError value)? onError,
    TResult Function(_OnSignOut value)? onSignOut,
    TResult Function(_Authorized value)? authorized,
    TResult Function(_UnAuthorized value)? unAuthorized,
    TResult Function(_IsOpenFromPhone value)? isOpenFromPhone,
    TResult Function(_OnLoginSuccess value)? onLoginSuccess,
    TResult Function(_OnRegisterSuccess value)? onRegisterSuccess,
    TResult Function(_OnResetPassword value)? onResetPassword,
    TResult Function(_OnGetUserData value)? onGetUserData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

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
    extends _$AuthStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'AuthState.initial()';
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
    required TResult Function(String error) error,
    required TResult Function(Failures error) onError,
    required TResult Function() onSignOut,
    required TResult Function(UserData userData) authorized,
    required TResult Function() unAuthorized,
    required TResult Function(String userAgent) isOpenFromPhone,
    required TResult Function(String token) onLoginSuccess,
    required TResult Function(String token) onRegisterSuccess,
    required TResult Function(String message) onResetPassword,
    required TResult Function(UserData userData) onGetUserData,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function(Failures error)? onError,
    TResult? Function()? onSignOut,
    TResult? Function(UserData userData)? authorized,
    TResult? Function()? unAuthorized,
    TResult? Function(String userAgent)? isOpenFromPhone,
    TResult? Function(String token)? onLoginSuccess,
    TResult? Function(String token)? onRegisterSuccess,
    TResult? Function(String message)? onResetPassword,
    TResult? Function(UserData userData)? onGetUserData,
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
    TResult Function()? onSignOut,
    TResult Function(UserData userData)? authorized,
    TResult Function()? unAuthorized,
    TResult Function(String userAgent)? isOpenFromPhone,
    TResult Function(String token)? onLoginSuccess,
    TResult Function(String token)? onRegisterSuccess,
    TResult Function(String message)? onResetPassword,
    TResult Function(UserData userData)? onGetUserData,
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
    required TResult Function(_OnSignOut value) onSignOut,
    required TResult Function(_Authorized value) authorized,
    required TResult Function(_UnAuthorized value) unAuthorized,
    required TResult Function(_IsOpenFromPhone value) isOpenFromPhone,
    required TResult Function(_OnLoginSuccess value) onLoginSuccess,
    required TResult Function(_OnRegisterSuccess value) onRegisterSuccess,
    required TResult Function(_OnResetPassword value) onResetPassword,
    required TResult Function(_OnGetUserData value) onGetUserData,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_OnError value)? onError,
    TResult? Function(_OnSignOut value)? onSignOut,
    TResult? Function(_Authorized value)? authorized,
    TResult? Function(_UnAuthorized value)? unAuthorized,
    TResult? Function(_IsOpenFromPhone value)? isOpenFromPhone,
    TResult? Function(_OnLoginSuccess value)? onLoginSuccess,
    TResult? Function(_OnRegisterSuccess value)? onRegisterSuccess,
    TResult? Function(_OnResetPassword value)? onResetPassword,
    TResult? Function(_OnGetUserData value)? onGetUserData,
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
    TResult Function(_OnSignOut value)? onSignOut,
    TResult Function(_Authorized value)? authorized,
    TResult Function(_UnAuthorized value)? unAuthorized,
    TResult Function(_IsOpenFromPhone value)? isOpenFromPhone,
    TResult Function(_OnLoginSuccess value)? onLoginSuccess,
    TResult Function(_OnRegisterSuccess value)? onRegisterSuccess,
    TResult Function(_OnResetPassword value)? onResetPassword,
    TResult Function(_OnGetUserData value)? onGetUserData,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AuthState {
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
    extends _$AuthStateCopyWithImpl<$Res, _$LoadingImpl>
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
    return 'AuthState.loading()';
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
    required TResult Function(String error) error,
    required TResult Function(Failures error) onError,
    required TResult Function() onSignOut,
    required TResult Function(UserData userData) authorized,
    required TResult Function() unAuthorized,
    required TResult Function(String userAgent) isOpenFromPhone,
    required TResult Function(String token) onLoginSuccess,
    required TResult Function(String token) onRegisterSuccess,
    required TResult Function(String message) onResetPassword,
    required TResult Function(UserData userData) onGetUserData,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function(Failures error)? onError,
    TResult? Function()? onSignOut,
    TResult? Function(UserData userData)? authorized,
    TResult? Function()? unAuthorized,
    TResult? Function(String userAgent)? isOpenFromPhone,
    TResult? Function(String token)? onLoginSuccess,
    TResult? Function(String token)? onRegisterSuccess,
    TResult? Function(String message)? onResetPassword,
    TResult? Function(UserData userData)? onGetUserData,
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
    TResult Function()? onSignOut,
    TResult Function(UserData userData)? authorized,
    TResult Function()? unAuthorized,
    TResult Function(String userAgent)? isOpenFromPhone,
    TResult Function(String token)? onLoginSuccess,
    TResult Function(String token)? onRegisterSuccess,
    TResult Function(String message)? onResetPassword,
    TResult Function(UserData userData)? onGetUserData,
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
    required TResult Function(_OnSignOut value) onSignOut,
    required TResult Function(_Authorized value) authorized,
    required TResult Function(_UnAuthorized value) unAuthorized,
    required TResult Function(_IsOpenFromPhone value) isOpenFromPhone,
    required TResult Function(_OnLoginSuccess value) onLoginSuccess,
    required TResult Function(_OnRegisterSuccess value) onRegisterSuccess,
    required TResult Function(_OnResetPassword value) onResetPassword,
    required TResult Function(_OnGetUserData value) onGetUserData,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_OnError value)? onError,
    TResult? Function(_OnSignOut value)? onSignOut,
    TResult? Function(_Authorized value)? authorized,
    TResult? Function(_UnAuthorized value)? unAuthorized,
    TResult? Function(_IsOpenFromPhone value)? isOpenFromPhone,
    TResult? Function(_OnLoginSuccess value)? onLoginSuccess,
    TResult? Function(_OnRegisterSuccess value)? onRegisterSuccess,
    TResult? Function(_OnResetPassword value)? onResetPassword,
    TResult? Function(_OnGetUserData value)? onGetUserData,
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
    TResult Function(_OnSignOut value)? onSignOut,
    TResult Function(_Authorized value)? authorized,
    TResult Function(_UnAuthorized value)? unAuthorized,
    TResult Function(_IsOpenFromPhone value)? isOpenFromPhone,
    TResult Function(_OnLoginSuccess value)? onLoginSuccess,
    TResult Function(_OnRegisterSuccess value)? onRegisterSuccess,
    TResult Function(_OnResetPassword value)? onResetPassword,
    TResult Function(_OnGetUserData value)? onGetUserData,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements AuthState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ErrorImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'AuthState.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

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
    required TResult Function(String error) error,
    required TResult Function(Failures error) onError,
    required TResult Function() onSignOut,
    required TResult Function(UserData userData) authorized,
    required TResult Function() unAuthorized,
    required TResult Function(String userAgent) isOpenFromPhone,
    required TResult Function(String token) onLoginSuccess,
    required TResult Function(String token) onRegisterSuccess,
    required TResult Function(String message) onResetPassword,
    required TResult Function(UserData userData) onGetUserData,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function(Failures error)? onError,
    TResult? Function()? onSignOut,
    TResult? Function(UserData userData)? authorized,
    TResult? Function()? unAuthorized,
    TResult? Function(String userAgent)? isOpenFromPhone,
    TResult? Function(String token)? onLoginSuccess,
    TResult? Function(String token)? onRegisterSuccess,
    TResult? Function(String message)? onResetPassword,
    TResult? Function(UserData userData)? onGetUserData,
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
    TResult Function()? onSignOut,
    TResult Function(UserData userData)? authorized,
    TResult Function()? unAuthorized,
    TResult Function(String userAgent)? isOpenFromPhone,
    TResult Function(String token)? onLoginSuccess,
    TResult Function(String token)? onRegisterSuccess,
    TResult Function(String message)? onResetPassword,
    TResult Function(UserData userData)? onGetUserData,
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
    required TResult Function(_OnSignOut value) onSignOut,
    required TResult Function(_Authorized value) authorized,
    required TResult Function(_UnAuthorized value) unAuthorized,
    required TResult Function(_IsOpenFromPhone value) isOpenFromPhone,
    required TResult Function(_OnLoginSuccess value) onLoginSuccess,
    required TResult Function(_OnRegisterSuccess value) onRegisterSuccess,
    required TResult Function(_OnResetPassword value) onResetPassword,
    required TResult Function(_OnGetUserData value) onGetUserData,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_OnError value)? onError,
    TResult? Function(_OnSignOut value)? onSignOut,
    TResult? Function(_Authorized value)? authorized,
    TResult? Function(_UnAuthorized value)? unAuthorized,
    TResult? Function(_IsOpenFromPhone value)? isOpenFromPhone,
    TResult? Function(_OnLoginSuccess value)? onLoginSuccess,
    TResult? Function(_OnRegisterSuccess value)? onRegisterSuccess,
    TResult? Function(_OnResetPassword value)? onResetPassword,
    TResult? Function(_OnGetUserData value)? onGetUserData,
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
    TResult Function(_OnSignOut value)? onSignOut,
    TResult Function(_Authorized value)? authorized,
    TResult Function(_UnAuthorized value)? unAuthorized,
    TResult Function(_IsOpenFromPhone value)? isOpenFromPhone,
    TResult Function(_OnLoginSuccess value)? onLoginSuccess,
    TResult Function(_OnRegisterSuccess value)? onRegisterSuccess,
    TResult Function(_OnResetPassword value)? onResetPassword,
    TResult Function(_OnGetUserData value)? onGetUserData,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements AuthState {
  const factory _Error(final String error) = _$ErrorImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnErrorImplCopyWith<$Res> {
  factory _$$OnErrorImplCopyWith(
          _$OnErrorImpl value, $Res Function(_$OnErrorImpl) then) =
      __$$OnErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failures error});

  $FailuresCopyWith<$Res> get error;
}

/// @nodoc
class __$$OnErrorImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$OnErrorImpl>
    implements _$$OnErrorImplCopyWith<$Res> {
  __$$OnErrorImplCopyWithImpl(
      _$OnErrorImpl _value, $Res Function(_$OnErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$OnErrorImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Failures,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $FailuresCopyWith<$Res> get error {
    return $FailuresCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc

class _$OnErrorImpl implements _OnError {
  const _$OnErrorImpl(this.error);

  @override
  final Failures error;

  @override
  String toString() {
    return 'AuthState.onError(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnErrorImplCopyWith<_$OnErrorImpl> get copyWith =>
      __$$OnErrorImplCopyWithImpl<_$OnErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function(Failures error) onError,
    required TResult Function() onSignOut,
    required TResult Function(UserData userData) authorized,
    required TResult Function() unAuthorized,
    required TResult Function(String userAgent) isOpenFromPhone,
    required TResult Function(String token) onLoginSuccess,
    required TResult Function(String token) onRegisterSuccess,
    required TResult Function(String message) onResetPassword,
    required TResult Function(UserData userData) onGetUserData,
  }) {
    return onError(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function(Failures error)? onError,
    TResult? Function()? onSignOut,
    TResult? Function(UserData userData)? authorized,
    TResult? Function()? unAuthorized,
    TResult? Function(String userAgent)? isOpenFromPhone,
    TResult? Function(String token)? onLoginSuccess,
    TResult? Function(String token)? onRegisterSuccess,
    TResult? Function(String message)? onResetPassword,
    TResult? Function(UserData userData)? onGetUserData,
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
    TResult Function()? onSignOut,
    TResult Function(UserData userData)? authorized,
    TResult Function()? unAuthorized,
    TResult Function(String userAgent)? isOpenFromPhone,
    TResult Function(String token)? onLoginSuccess,
    TResult Function(String token)? onRegisterSuccess,
    TResult Function(String message)? onResetPassword,
    TResult Function(UserData userData)? onGetUserData,
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
    required TResult Function(_OnSignOut value) onSignOut,
    required TResult Function(_Authorized value) authorized,
    required TResult Function(_UnAuthorized value) unAuthorized,
    required TResult Function(_IsOpenFromPhone value) isOpenFromPhone,
    required TResult Function(_OnLoginSuccess value) onLoginSuccess,
    required TResult Function(_OnRegisterSuccess value) onRegisterSuccess,
    required TResult Function(_OnResetPassword value) onResetPassword,
    required TResult Function(_OnGetUserData value) onGetUserData,
  }) {
    return onError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_OnError value)? onError,
    TResult? Function(_OnSignOut value)? onSignOut,
    TResult? Function(_Authorized value)? authorized,
    TResult? Function(_UnAuthorized value)? unAuthorized,
    TResult? Function(_IsOpenFromPhone value)? isOpenFromPhone,
    TResult? Function(_OnLoginSuccess value)? onLoginSuccess,
    TResult? Function(_OnRegisterSuccess value)? onRegisterSuccess,
    TResult? Function(_OnResetPassword value)? onResetPassword,
    TResult? Function(_OnGetUserData value)? onGetUserData,
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
    TResult Function(_OnSignOut value)? onSignOut,
    TResult Function(_Authorized value)? authorized,
    TResult Function(_UnAuthorized value)? unAuthorized,
    TResult Function(_IsOpenFromPhone value)? isOpenFromPhone,
    TResult Function(_OnLoginSuccess value)? onLoginSuccess,
    TResult Function(_OnRegisterSuccess value)? onRegisterSuccess,
    TResult Function(_OnResetPassword value)? onResetPassword,
    TResult Function(_OnGetUserData value)? onGetUserData,
    required TResult orElse(),
  }) {
    if (onError != null) {
      return onError(this);
    }
    return orElse();
  }
}

abstract class _OnError implements AuthState {
  const factory _OnError(final Failures error) = _$OnErrorImpl;

  Failures get error;
  @JsonKey(ignore: true)
  _$$OnErrorImplCopyWith<_$OnErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnSignOutImplCopyWith<$Res> {
  factory _$$OnSignOutImplCopyWith(
          _$OnSignOutImpl value, $Res Function(_$OnSignOutImpl) then) =
      __$$OnSignOutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnSignOutImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$OnSignOutImpl>
    implements _$$OnSignOutImplCopyWith<$Res> {
  __$$OnSignOutImplCopyWithImpl(
      _$OnSignOutImpl _value, $Res Function(_$OnSignOutImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OnSignOutImpl implements _OnSignOut {
  const _$OnSignOutImpl();

  @override
  String toString() {
    return 'AuthState.onSignOut()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnSignOutImpl);
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
    required TResult Function() onSignOut,
    required TResult Function(UserData userData) authorized,
    required TResult Function() unAuthorized,
    required TResult Function(String userAgent) isOpenFromPhone,
    required TResult Function(String token) onLoginSuccess,
    required TResult Function(String token) onRegisterSuccess,
    required TResult Function(String message) onResetPassword,
    required TResult Function(UserData userData) onGetUserData,
  }) {
    return onSignOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function(Failures error)? onError,
    TResult? Function()? onSignOut,
    TResult? Function(UserData userData)? authorized,
    TResult? Function()? unAuthorized,
    TResult? Function(String userAgent)? isOpenFromPhone,
    TResult? Function(String token)? onLoginSuccess,
    TResult? Function(String token)? onRegisterSuccess,
    TResult? Function(String message)? onResetPassword,
    TResult? Function(UserData userData)? onGetUserData,
  }) {
    return onSignOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(Failures error)? onError,
    TResult Function()? onSignOut,
    TResult Function(UserData userData)? authorized,
    TResult Function()? unAuthorized,
    TResult Function(String userAgent)? isOpenFromPhone,
    TResult Function(String token)? onLoginSuccess,
    TResult Function(String token)? onRegisterSuccess,
    TResult Function(String message)? onResetPassword,
    TResult Function(UserData userData)? onGetUserData,
    required TResult orElse(),
  }) {
    if (onSignOut != null) {
      return onSignOut();
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
    required TResult Function(_OnSignOut value) onSignOut,
    required TResult Function(_Authorized value) authorized,
    required TResult Function(_UnAuthorized value) unAuthorized,
    required TResult Function(_IsOpenFromPhone value) isOpenFromPhone,
    required TResult Function(_OnLoginSuccess value) onLoginSuccess,
    required TResult Function(_OnRegisterSuccess value) onRegisterSuccess,
    required TResult Function(_OnResetPassword value) onResetPassword,
    required TResult Function(_OnGetUserData value) onGetUserData,
  }) {
    return onSignOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_OnError value)? onError,
    TResult? Function(_OnSignOut value)? onSignOut,
    TResult? Function(_Authorized value)? authorized,
    TResult? Function(_UnAuthorized value)? unAuthorized,
    TResult? Function(_IsOpenFromPhone value)? isOpenFromPhone,
    TResult? Function(_OnLoginSuccess value)? onLoginSuccess,
    TResult? Function(_OnRegisterSuccess value)? onRegisterSuccess,
    TResult? Function(_OnResetPassword value)? onResetPassword,
    TResult? Function(_OnGetUserData value)? onGetUserData,
  }) {
    return onSignOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_OnError value)? onError,
    TResult Function(_OnSignOut value)? onSignOut,
    TResult Function(_Authorized value)? authorized,
    TResult Function(_UnAuthorized value)? unAuthorized,
    TResult Function(_IsOpenFromPhone value)? isOpenFromPhone,
    TResult Function(_OnLoginSuccess value)? onLoginSuccess,
    TResult Function(_OnRegisterSuccess value)? onRegisterSuccess,
    TResult Function(_OnResetPassword value)? onResetPassword,
    TResult Function(_OnGetUserData value)? onGetUserData,
    required TResult orElse(),
  }) {
    if (onSignOut != null) {
      return onSignOut(this);
    }
    return orElse();
  }
}

abstract class _OnSignOut implements AuthState {
  const factory _OnSignOut() = _$OnSignOutImpl;
}

/// @nodoc
abstract class _$$AuthorizedImplCopyWith<$Res> {
  factory _$$AuthorizedImplCopyWith(
          _$AuthorizedImpl value, $Res Function(_$AuthorizedImpl) then) =
      __$$AuthorizedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserData userData});

  $UserDataCopyWith<$Res> get userData;
}

/// @nodoc
class __$$AuthorizedImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthorizedImpl>
    implements _$$AuthorizedImplCopyWith<$Res> {
  __$$AuthorizedImplCopyWithImpl(
      _$AuthorizedImpl _value, $Res Function(_$AuthorizedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userData = null,
  }) {
    return _then(_$AuthorizedImpl(
      null == userData
          ? _value.userData
          : userData // ignore: cast_nullable_to_non_nullable
              as UserData,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserDataCopyWith<$Res> get userData {
    return $UserDataCopyWith<$Res>(_value.userData, (value) {
      return _then(_value.copyWith(userData: value));
    });
  }
}

/// @nodoc

class _$AuthorizedImpl implements _Authorized {
  const _$AuthorizedImpl(this.userData);

  @override
  final UserData userData;

  @override
  String toString() {
    return 'AuthState.authorized(userData: $userData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthorizedImpl &&
            (identical(other.userData, userData) ||
                other.userData == userData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthorizedImplCopyWith<_$AuthorizedImpl> get copyWith =>
      __$$AuthorizedImplCopyWithImpl<_$AuthorizedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function(Failures error) onError,
    required TResult Function() onSignOut,
    required TResult Function(UserData userData) authorized,
    required TResult Function() unAuthorized,
    required TResult Function(String userAgent) isOpenFromPhone,
    required TResult Function(String token) onLoginSuccess,
    required TResult Function(String token) onRegisterSuccess,
    required TResult Function(String message) onResetPassword,
    required TResult Function(UserData userData) onGetUserData,
  }) {
    return authorized(userData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function(Failures error)? onError,
    TResult? Function()? onSignOut,
    TResult? Function(UserData userData)? authorized,
    TResult? Function()? unAuthorized,
    TResult? Function(String userAgent)? isOpenFromPhone,
    TResult? Function(String token)? onLoginSuccess,
    TResult? Function(String token)? onRegisterSuccess,
    TResult? Function(String message)? onResetPassword,
    TResult? Function(UserData userData)? onGetUserData,
  }) {
    return authorized?.call(userData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(Failures error)? onError,
    TResult Function()? onSignOut,
    TResult Function(UserData userData)? authorized,
    TResult Function()? unAuthorized,
    TResult Function(String userAgent)? isOpenFromPhone,
    TResult Function(String token)? onLoginSuccess,
    TResult Function(String token)? onRegisterSuccess,
    TResult Function(String message)? onResetPassword,
    TResult Function(UserData userData)? onGetUserData,
    required TResult orElse(),
  }) {
    if (authorized != null) {
      return authorized(userData);
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
    required TResult Function(_OnSignOut value) onSignOut,
    required TResult Function(_Authorized value) authorized,
    required TResult Function(_UnAuthorized value) unAuthorized,
    required TResult Function(_IsOpenFromPhone value) isOpenFromPhone,
    required TResult Function(_OnLoginSuccess value) onLoginSuccess,
    required TResult Function(_OnRegisterSuccess value) onRegisterSuccess,
    required TResult Function(_OnResetPassword value) onResetPassword,
    required TResult Function(_OnGetUserData value) onGetUserData,
  }) {
    return authorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_OnError value)? onError,
    TResult? Function(_OnSignOut value)? onSignOut,
    TResult? Function(_Authorized value)? authorized,
    TResult? Function(_UnAuthorized value)? unAuthorized,
    TResult? Function(_IsOpenFromPhone value)? isOpenFromPhone,
    TResult? Function(_OnLoginSuccess value)? onLoginSuccess,
    TResult? Function(_OnRegisterSuccess value)? onRegisterSuccess,
    TResult? Function(_OnResetPassword value)? onResetPassword,
    TResult? Function(_OnGetUserData value)? onGetUserData,
  }) {
    return authorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_OnError value)? onError,
    TResult Function(_OnSignOut value)? onSignOut,
    TResult Function(_Authorized value)? authorized,
    TResult Function(_UnAuthorized value)? unAuthorized,
    TResult Function(_IsOpenFromPhone value)? isOpenFromPhone,
    TResult Function(_OnLoginSuccess value)? onLoginSuccess,
    TResult Function(_OnRegisterSuccess value)? onRegisterSuccess,
    TResult Function(_OnResetPassword value)? onResetPassword,
    TResult Function(_OnGetUserData value)? onGetUserData,
    required TResult orElse(),
  }) {
    if (authorized != null) {
      return authorized(this);
    }
    return orElse();
  }
}

abstract class _Authorized implements AuthState {
  const factory _Authorized(final UserData userData) = _$AuthorizedImpl;

  UserData get userData;
  @JsonKey(ignore: true)
  _$$AuthorizedImplCopyWith<_$AuthorizedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnAuthorizedImplCopyWith<$Res> {
  factory _$$UnAuthorizedImplCopyWith(
          _$UnAuthorizedImpl value, $Res Function(_$UnAuthorizedImpl) then) =
      __$$UnAuthorizedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnAuthorizedImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$UnAuthorizedImpl>
    implements _$$UnAuthorizedImplCopyWith<$Res> {
  __$$UnAuthorizedImplCopyWithImpl(
      _$UnAuthorizedImpl _value, $Res Function(_$UnAuthorizedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UnAuthorizedImpl implements _UnAuthorized {
  const _$UnAuthorizedImpl();

  @override
  String toString() {
    return 'AuthState.unAuthorized()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnAuthorizedImpl);
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
    required TResult Function() onSignOut,
    required TResult Function(UserData userData) authorized,
    required TResult Function() unAuthorized,
    required TResult Function(String userAgent) isOpenFromPhone,
    required TResult Function(String token) onLoginSuccess,
    required TResult Function(String token) onRegisterSuccess,
    required TResult Function(String message) onResetPassword,
    required TResult Function(UserData userData) onGetUserData,
  }) {
    return unAuthorized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function(Failures error)? onError,
    TResult? Function()? onSignOut,
    TResult? Function(UserData userData)? authorized,
    TResult? Function()? unAuthorized,
    TResult? Function(String userAgent)? isOpenFromPhone,
    TResult? Function(String token)? onLoginSuccess,
    TResult? Function(String token)? onRegisterSuccess,
    TResult? Function(String message)? onResetPassword,
    TResult? Function(UserData userData)? onGetUserData,
  }) {
    return unAuthorized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(Failures error)? onError,
    TResult Function()? onSignOut,
    TResult Function(UserData userData)? authorized,
    TResult Function()? unAuthorized,
    TResult Function(String userAgent)? isOpenFromPhone,
    TResult Function(String token)? onLoginSuccess,
    TResult Function(String token)? onRegisterSuccess,
    TResult Function(String message)? onResetPassword,
    TResult Function(UserData userData)? onGetUserData,
    required TResult orElse(),
  }) {
    if (unAuthorized != null) {
      return unAuthorized();
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
    required TResult Function(_OnSignOut value) onSignOut,
    required TResult Function(_Authorized value) authorized,
    required TResult Function(_UnAuthorized value) unAuthorized,
    required TResult Function(_IsOpenFromPhone value) isOpenFromPhone,
    required TResult Function(_OnLoginSuccess value) onLoginSuccess,
    required TResult Function(_OnRegisterSuccess value) onRegisterSuccess,
    required TResult Function(_OnResetPassword value) onResetPassword,
    required TResult Function(_OnGetUserData value) onGetUserData,
  }) {
    return unAuthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_OnError value)? onError,
    TResult? Function(_OnSignOut value)? onSignOut,
    TResult? Function(_Authorized value)? authorized,
    TResult? Function(_UnAuthorized value)? unAuthorized,
    TResult? Function(_IsOpenFromPhone value)? isOpenFromPhone,
    TResult? Function(_OnLoginSuccess value)? onLoginSuccess,
    TResult? Function(_OnRegisterSuccess value)? onRegisterSuccess,
    TResult? Function(_OnResetPassword value)? onResetPassword,
    TResult? Function(_OnGetUserData value)? onGetUserData,
  }) {
    return unAuthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_OnError value)? onError,
    TResult Function(_OnSignOut value)? onSignOut,
    TResult Function(_Authorized value)? authorized,
    TResult Function(_UnAuthorized value)? unAuthorized,
    TResult Function(_IsOpenFromPhone value)? isOpenFromPhone,
    TResult Function(_OnLoginSuccess value)? onLoginSuccess,
    TResult Function(_OnRegisterSuccess value)? onRegisterSuccess,
    TResult Function(_OnResetPassword value)? onResetPassword,
    TResult Function(_OnGetUserData value)? onGetUserData,
    required TResult orElse(),
  }) {
    if (unAuthorized != null) {
      return unAuthorized(this);
    }
    return orElse();
  }
}

abstract class _UnAuthorized implements AuthState {
  const factory _UnAuthorized() = _$UnAuthorizedImpl;
}

/// @nodoc
abstract class _$$IsOpenFromPhoneImplCopyWith<$Res> {
  factory _$$IsOpenFromPhoneImplCopyWith(_$IsOpenFromPhoneImpl value,
          $Res Function(_$IsOpenFromPhoneImpl) then) =
      __$$IsOpenFromPhoneImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String userAgent});
}

/// @nodoc
class __$$IsOpenFromPhoneImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$IsOpenFromPhoneImpl>
    implements _$$IsOpenFromPhoneImplCopyWith<$Res> {
  __$$IsOpenFromPhoneImplCopyWithImpl(
      _$IsOpenFromPhoneImpl _value, $Res Function(_$IsOpenFromPhoneImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userAgent = null,
  }) {
    return _then(_$IsOpenFromPhoneImpl(
      null == userAgent
          ? _value.userAgent
          : userAgent // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$IsOpenFromPhoneImpl implements _IsOpenFromPhone {
  const _$IsOpenFromPhoneImpl(this.userAgent);

  @override
  final String userAgent;

  @override
  String toString() {
    return 'AuthState.isOpenFromPhone(userAgent: $userAgent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IsOpenFromPhoneImpl &&
            (identical(other.userAgent, userAgent) ||
                other.userAgent == userAgent));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userAgent);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IsOpenFromPhoneImplCopyWith<_$IsOpenFromPhoneImpl> get copyWith =>
      __$$IsOpenFromPhoneImplCopyWithImpl<_$IsOpenFromPhoneImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function(Failures error) onError,
    required TResult Function() onSignOut,
    required TResult Function(UserData userData) authorized,
    required TResult Function() unAuthorized,
    required TResult Function(String userAgent) isOpenFromPhone,
    required TResult Function(String token) onLoginSuccess,
    required TResult Function(String token) onRegisterSuccess,
    required TResult Function(String message) onResetPassword,
    required TResult Function(UserData userData) onGetUserData,
  }) {
    return isOpenFromPhone(userAgent);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function(Failures error)? onError,
    TResult? Function()? onSignOut,
    TResult? Function(UserData userData)? authorized,
    TResult? Function()? unAuthorized,
    TResult? Function(String userAgent)? isOpenFromPhone,
    TResult? Function(String token)? onLoginSuccess,
    TResult? Function(String token)? onRegisterSuccess,
    TResult? Function(String message)? onResetPassword,
    TResult? Function(UserData userData)? onGetUserData,
  }) {
    return isOpenFromPhone?.call(userAgent);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(Failures error)? onError,
    TResult Function()? onSignOut,
    TResult Function(UserData userData)? authorized,
    TResult Function()? unAuthorized,
    TResult Function(String userAgent)? isOpenFromPhone,
    TResult Function(String token)? onLoginSuccess,
    TResult Function(String token)? onRegisterSuccess,
    TResult Function(String message)? onResetPassword,
    TResult Function(UserData userData)? onGetUserData,
    required TResult orElse(),
  }) {
    if (isOpenFromPhone != null) {
      return isOpenFromPhone(userAgent);
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
    required TResult Function(_OnSignOut value) onSignOut,
    required TResult Function(_Authorized value) authorized,
    required TResult Function(_UnAuthorized value) unAuthorized,
    required TResult Function(_IsOpenFromPhone value) isOpenFromPhone,
    required TResult Function(_OnLoginSuccess value) onLoginSuccess,
    required TResult Function(_OnRegisterSuccess value) onRegisterSuccess,
    required TResult Function(_OnResetPassword value) onResetPassword,
    required TResult Function(_OnGetUserData value) onGetUserData,
  }) {
    return isOpenFromPhone(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_OnError value)? onError,
    TResult? Function(_OnSignOut value)? onSignOut,
    TResult? Function(_Authorized value)? authorized,
    TResult? Function(_UnAuthorized value)? unAuthorized,
    TResult? Function(_IsOpenFromPhone value)? isOpenFromPhone,
    TResult? Function(_OnLoginSuccess value)? onLoginSuccess,
    TResult? Function(_OnRegisterSuccess value)? onRegisterSuccess,
    TResult? Function(_OnResetPassword value)? onResetPassword,
    TResult? Function(_OnGetUserData value)? onGetUserData,
  }) {
    return isOpenFromPhone?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_OnError value)? onError,
    TResult Function(_OnSignOut value)? onSignOut,
    TResult Function(_Authorized value)? authorized,
    TResult Function(_UnAuthorized value)? unAuthorized,
    TResult Function(_IsOpenFromPhone value)? isOpenFromPhone,
    TResult Function(_OnLoginSuccess value)? onLoginSuccess,
    TResult Function(_OnRegisterSuccess value)? onRegisterSuccess,
    TResult Function(_OnResetPassword value)? onResetPassword,
    TResult Function(_OnGetUserData value)? onGetUserData,
    required TResult orElse(),
  }) {
    if (isOpenFromPhone != null) {
      return isOpenFromPhone(this);
    }
    return orElse();
  }
}

abstract class _IsOpenFromPhone implements AuthState {
  const factory _IsOpenFromPhone(final String userAgent) =
      _$IsOpenFromPhoneImpl;

  String get userAgent;
  @JsonKey(ignore: true)
  _$$IsOpenFromPhoneImplCopyWith<_$IsOpenFromPhoneImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnLoginSuccessImplCopyWith<$Res> {
  factory _$$OnLoginSuccessImplCopyWith(_$OnLoginSuccessImpl value,
          $Res Function(_$OnLoginSuccessImpl) then) =
      __$$OnLoginSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String token});
}

/// @nodoc
class __$$OnLoginSuccessImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$OnLoginSuccessImpl>
    implements _$$OnLoginSuccessImplCopyWith<$Res> {
  __$$OnLoginSuccessImplCopyWithImpl(
      _$OnLoginSuccessImpl _value, $Res Function(_$OnLoginSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
  }) {
    return _then(_$OnLoginSuccessImpl(
      null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OnLoginSuccessImpl implements _OnLoginSuccess {
  const _$OnLoginSuccessImpl(this.token);

  @override
  final String token;

  @override
  String toString() {
    return 'AuthState.onLoginSuccess(token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnLoginSuccessImpl &&
            (identical(other.token, token) || other.token == token));
  }

  @override
  int get hashCode => Object.hash(runtimeType, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnLoginSuccessImplCopyWith<_$OnLoginSuccessImpl> get copyWith =>
      __$$OnLoginSuccessImplCopyWithImpl<_$OnLoginSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function(Failures error) onError,
    required TResult Function() onSignOut,
    required TResult Function(UserData userData) authorized,
    required TResult Function() unAuthorized,
    required TResult Function(String userAgent) isOpenFromPhone,
    required TResult Function(String token) onLoginSuccess,
    required TResult Function(String token) onRegisterSuccess,
    required TResult Function(String message) onResetPassword,
    required TResult Function(UserData userData) onGetUserData,
  }) {
    return onLoginSuccess(token);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function(Failures error)? onError,
    TResult? Function()? onSignOut,
    TResult? Function(UserData userData)? authorized,
    TResult? Function()? unAuthorized,
    TResult? Function(String userAgent)? isOpenFromPhone,
    TResult? Function(String token)? onLoginSuccess,
    TResult? Function(String token)? onRegisterSuccess,
    TResult? Function(String message)? onResetPassword,
    TResult? Function(UserData userData)? onGetUserData,
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
    TResult Function()? onSignOut,
    TResult Function(UserData userData)? authorized,
    TResult Function()? unAuthorized,
    TResult Function(String userAgent)? isOpenFromPhone,
    TResult Function(String token)? onLoginSuccess,
    TResult Function(String token)? onRegisterSuccess,
    TResult Function(String message)? onResetPassword,
    TResult Function(UserData userData)? onGetUserData,
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
    required TResult Function(_OnSignOut value) onSignOut,
    required TResult Function(_Authorized value) authorized,
    required TResult Function(_UnAuthorized value) unAuthorized,
    required TResult Function(_IsOpenFromPhone value) isOpenFromPhone,
    required TResult Function(_OnLoginSuccess value) onLoginSuccess,
    required TResult Function(_OnRegisterSuccess value) onRegisterSuccess,
    required TResult Function(_OnResetPassword value) onResetPassword,
    required TResult Function(_OnGetUserData value) onGetUserData,
  }) {
    return onLoginSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_OnError value)? onError,
    TResult? Function(_OnSignOut value)? onSignOut,
    TResult? Function(_Authorized value)? authorized,
    TResult? Function(_UnAuthorized value)? unAuthorized,
    TResult? Function(_IsOpenFromPhone value)? isOpenFromPhone,
    TResult? Function(_OnLoginSuccess value)? onLoginSuccess,
    TResult? Function(_OnRegisterSuccess value)? onRegisterSuccess,
    TResult? Function(_OnResetPassword value)? onResetPassword,
    TResult? Function(_OnGetUserData value)? onGetUserData,
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
    TResult Function(_OnSignOut value)? onSignOut,
    TResult Function(_Authorized value)? authorized,
    TResult Function(_UnAuthorized value)? unAuthorized,
    TResult Function(_IsOpenFromPhone value)? isOpenFromPhone,
    TResult Function(_OnLoginSuccess value)? onLoginSuccess,
    TResult Function(_OnRegisterSuccess value)? onRegisterSuccess,
    TResult Function(_OnResetPassword value)? onResetPassword,
    TResult Function(_OnGetUserData value)? onGetUserData,
    required TResult orElse(),
  }) {
    if (onLoginSuccess != null) {
      return onLoginSuccess(this);
    }
    return orElse();
  }
}

abstract class _OnLoginSuccess implements AuthState {
  const factory _OnLoginSuccess(final String token) = _$OnLoginSuccessImpl;

  String get token;
  @JsonKey(ignore: true)
  _$$OnLoginSuccessImplCopyWith<_$OnLoginSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnRegisterSuccessImplCopyWith<$Res> {
  factory _$$OnRegisterSuccessImplCopyWith(_$OnRegisterSuccessImpl value,
          $Res Function(_$OnRegisterSuccessImpl) then) =
      __$$OnRegisterSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String token});
}

/// @nodoc
class __$$OnRegisterSuccessImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$OnRegisterSuccessImpl>
    implements _$$OnRegisterSuccessImplCopyWith<$Res> {
  __$$OnRegisterSuccessImplCopyWithImpl(_$OnRegisterSuccessImpl _value,
      $Res Function(_$OnRegisterSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
  }) {
    return _then(_$OnRegisterSuccessImpl(
      null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OnRegisterSuccessImpl implements _OnRegisterSuccess {
  const _$OnRegisterSuccessImpl(this.token);

  @override
  final String token;

  @override
  String toString() {
    return 'AuthState.onRegisterSuccess(token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnRegisterSuccessImpl &&
            (identical(other.token, token) || other.token == token));
  }

  @override
  int get hashCode => Object.hash(runtimeType, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnRegisterSuccessImplCopyWith<_$OnRegisterSuccessImpl> get copyWith =>
      __$$OnRegisterSuccessImplCopyWithImpl<_$OnRegisterSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function(Failures error) onError,
    required TResult Function() onSignOut,
    required TResult Function(UserData userData) authorized,
    required TResult Function() unAuthorized,
    required TResult Function(String userAgent) isOpenFromPhone,
    required TResult Function(String token) onLoginSuccess,
    required TResult Function(String token) onRegisterSuccess,
    required TResult Function(String message) onResetPassword,
    required TResult Function(UserData userData) onGetUserData,
  }) {
    return onRegisterSuccess(token);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function(Failures error)? onError,
    TResult? Function()? onSignOut,
    TResult? Function(UserData userData)? authorized,
    TResult? Function()? unAuthorized,
    TResult? Function(String userAgent)? isOpenFromPhone,
    TResult? Function(String token)? onLoginSuccess,
    TResult? Function(String token)? onRegisterSuccess,
    TResult? Function(String message)? onResetPassword,
    TResult? Function(UserData userData)? onGetUserData,
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
    TResult Function()? onSignOut,
    TResult Function(UserData userData)? authorized,
    TResult Function()? unAuthorized,
    TResult Function(String userAgent)? isOpenFromPhone,
    TResult Function(String token)? onLoginSuccess,
    TResult Function(String token)? onRegisterSuccess,
    TResult Function(String message)? onResetPassword,
    TResult Function(UserData userData)? onGetUserData,
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
    required TResult Function(_OnSignOut value) onSignOut,
    required TResult Function(_Authorized value) authorized,
    required TResult Function(_UnAuthorized value) unAuthorized,
    required TResult Function(_IsOpenFromPhone value) isOpenFromPhone,
    required TResult Function(_OnLoginSuccess value) onLoginSuccess,
    required TResult Function(_OnRegisterSuccess value) onRegisterSuccess,
    required TResult Function(_OnResetPassword value) onResetPassword,
    required TResult Function(_OnGetUserData value) onGetUserData,
  }) {
    return onRegisterSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_OnError value)? onError,
    TResult? Function(_OnSignOut value)? onSignOut,
    TResult? Function(_Authorized value)? authorized,
    TResult? Function(_UnAuthorized value)? unAuthorized,
    TResult? Function(_IsOpenFromPhone value)? isOpenFromPhone,
    TResult? Function(_OnLoginSuccess value)? onLoginSuccess,
    TResult? Function(_OnRegisterSuccess value)? onRegisterSuccess,
    TResult? Function(_OnResetPassword value)? onResetPassword,
    TResult? Function(_OnGetUserData value)? onGetUserData,
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
    TResult Function(_OnSignOut value)? onSignOut,
    TResult Function(_Authorized value)? authorized,
    TResult Function(_UnAuthorized value)? unAuthorized,
    TResult Function(_IsOpenFromPhone value)? isOpenFromPhone,
    TResult Function(_OnLoginSuccess value)? onLoginSuccess,
    TResult Function(_OnRegisterSuccess value)? onRegisterSuccess,
    TResult Function(_OnResetPassword value)? onResetPassword,
    TResult Function(_OnGetUserData value)? onGetUserData,
    required TResult orElse(),
  }) {
    if (onRegisterSuccess != null) {
      return onRegisterSuccess(this);
    }
    return orElse();
  }
}

abstract class _OnRegisterSuccess implements AuthState {
  const factory _OnRegisterSuccess(final String token) =
      _$OnRegisterSuccessImpl;

  String get token;
  @JsonKey(ignore: true)
  _$$OnRegisterSuccessImplCopyWith<_$OnRegisterSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnResetPasswordImplCopyWith<$Res> {
  factory _$$OnResetPasswordImplCopyWith(_$OnResetPasswordImpl value,
          $Res Function(_$OnResetPasswordImpl) then) =
      __$$OnResetPasswordImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$OnResetPasswordImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$OnResetPasswordImpl>
    implements _$$OnResetPasswordImplCopyWith<$Res> {
  __$$OnResetPasswordImplCopyWithImpl(
      _$OnResetPasswordImpl _value, $Res Function(_$OnResetPasswordImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$OnResetPasswordImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OnResetPasswordImpl implements _OnResetPassword {
  const _$OnResetPasswordImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'AuthState.onResetPassword(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnResetPasswordImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnResetPasswordImplCopyWith<_$OnResetPasswordImpl> get copyWith =>
      __$$OnResetPasswordImplCopyWithImpl<_$OnResetPasswordImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function(Failures error) onError,
    required TResult Function() onSignOut,
    required TResult Function(UserData userData) authorized,
    required TResult Function() unAuthorized,
    required TResult Function(String userAgent) isOpenFromPhone,
    required TResult Function(String token) onLoginSuccess,
    required TResult Function(String token) onRegisterSuccess,
    required TResult Function(String message) onResetPassword,
    required TResult Function(UserData userData) onGetUserData,
  }) {
    return onResetPassword(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function(Failures error)? onError,
    TResult? Function()? onSignOut,
    TResult? Function(UserData userData)? authorized,
    TResult? Function()? unAuthorized,
    TResult? Function(String userAgent)? isOpenFromPhone,
    TResult? Function(String token)? onLoginSuccess,
    TResult? Function(String token)? onRegisterSuccess,
    TResult? Function(String message)? onResetPassword,
    TResult? Function(UserData userData)? onGetUserData,
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
    TResult Function()? onSignOut,
    TResult Function(UserData userData)? authorized,
    TResult Function()? unAuthorized,
    TResult Function(String userAgent)? isOpenFromPhone,
    TResult Function(String token)? onLoginSuccess,
    TResult Function(String token)? onRegisterSuccess,
    TResult Function(String message)? onResetPassword,
    TResult Function(UserData userData)? onGetUserData,
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
    required TResult Function(_OnSignOut value) onSignOut,
    required TResult Function(_Authorized value) authorized,
    required TResult Function(_UnAuthorized value) unAuthorized,
    required TResult Function(_IsOpenFromPhone value) isOpenFromPhone,
    required TResult Function(_OnLoginSuccess value) onLoginSuccess,
    required TResult Function(_OnRegisterSuccess value) onRegisterSuccess,
    required TResult Function(_OnResetPassword value) onResetPassword,
    required TResult Function(_OnGetUserData value) onGetUserData,
  }) {
    return onResetPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_OnError value)? onError,
    TResult? Function(_OnSignOut value)? onSignOut,
    TResult? Function(_Authorized value)? authorized,
    TResult? Function(_UnAuthorized value)? unAuthorized,
    TResult? Function(_IsOpenFromPhone value)? isOpenFromPhone,
    TResult? Function(_OnLoginSuccess value)? onLoginSuccess,
    TResult? Function(_OnRegisterSuccess value)? onRegisterSuccess,
    TResult? Function(_OnResetPassword value)? onResetPassword,
    TResult? Function(_OnGetUserData value)? onGetUserData,
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
    TResult Function(_OnSignOut value)? onSignOut,
    TResult Function(_Authorized value)? authorized,
    TResult Function(_UnAuthorized value)? unAuthorized,
    TResult Function(_IsOpenFromPhone value)? isOpenFromPhone,
    TResult Function(_OnLoginSuccess value)? onLoginSuccess,
    TResult Function(_OnRegisterSuccess value)? onRegisterSuccess,
    TResult Function(_OnResetPassword value)? onResetPassword,
    TResult Function(_OnGetUserData value)? onGetUserData,
    required TResult orElse(),
  }) {
    if (onResetPassword != null) {
      return onResetPassword(this);
    }
    return orElse();
  }
}

abstract class _OnResetPassword implements AuthState {
  const factory _OnResetPassword(final String message) = _$OnResetPasswordImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$OnResetPasswordImplCopyWith<_$OnResetPasswordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnGetUserDataImplCopyWith<$Res> {
  factory _$$OnGetUserDataImplCopyWith(
          _$OnGetUserDataImpl value, $Res Function(_$OnGetUserDataImpl) then) =
      __$$OnGetUserDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserData userData});

  $UserDataCopyWith<$Res> get userData;
}

/// @nodoc
class __$$OnGetUserDataImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$OnGetUserDataImpl>
    implements _$$OnGetUserDataImplCopyWith<$Res> {
  __$$OnGetUserDataImplCopyWithImpl(
      _$OnGetUserDataImpl _value, $Res Function(_$OnGetUserDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userData = null,
  }) {
    return _then(_$OnGetUserDataImpl(
      null == userData
          ? _value.userData
          : userData // ignore: cast_nullable_to_non_nullable
              as UserData,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserDataCopyWith<$Res> get userData {
    return $UserDataCopyWith<$Res>(_value.userData, (value) {
      return _then(_value.copyWith(userData: value));
    });
  }
}

/// @nodoc

class _$OnGetUserDataImpl implements _OnGetUserData {
  const _$OnGetUserDataImpl(this.userData);

  @override
  final UserData userData;

  @override
  String toString() {
    return 'AuthState.onGetUserData(userData: $userData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnGetUserDataImpl &&
            (identical(other.userData, userData) ||
                other.userData == userData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnGetUserDataImplCopyWith<_$OnGetUserDataImpl> get copyWith =>
      __$$OnGetUserDataImplCopyWithImpl<_$OnGetUserDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function(Failures error) onError,
    required TResult Function() onSignOut,
    required TResult Function(UserData userData) authorized,
    required TResult Function() unAuthorized,
    required TResult Function(String userAgent) isOpenFromPhone,
    required TResult Function(String token) onLoginSuccess,
    required TResult Function(String token) onRegisterSuccess,
    required TResult Function(String message) onResetPassword,
    required TResult Function(UserData userData) onGetUserData,
  }) {
    return onGetUserData(userData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function(Failures error)? onError,
    TResult? Function()? onSignOut,
    TResult? Function(UserData userData)? authorized,
    TResult? Function()? unAuthorized,
    TResult? Function(String userAgent)? isOpenFromPhone,
    TResult? Function(String token)? onLoginSuccess,
    TResult? Function(String token)? onRegisterSuccess,
    TResult? Function(String message)? onResetPassword,
    TResult? Function(UserData userData)? onGetUserData,
  }) {
    return onGetUserData?.call(userData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(Failures error)? onError,
    TResult Function()? onSignOut,
    TResult Function(UserData userData)? authorized,
    TResult Function()? unAuthorized,
    TResult Function(String userAgent)? isOpenFromPhone,
    TResult Function(String token)? onLoginSuccess,
    TResult Function(String token)? onRegisterSuccess,
    TResult Function(String message)? onResetPassword,
    TResult Function(UserData userData)? onGetUserData,
    required TResult orElse(),
  }) {
    if (onGetUserData != null) {
      return onGetUserData(userData);
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
    required TResult Function(_OnSignOut value) onSignOut,
    required TResult Function(_Authorized value) authorized,
    required TResult Function(_UnAuthorized value) unAuthorized,
    required TResult Function(_IsOpenFromPhone value) isOpenFromPhone,
    required TResult Function(_OnLoginSuccess value) onLoginSuccess,
    required TResult Function(_OnRegisterSuccess value) onRegisterSuccess,
    required TResult Function(_OnResetPassword value) onResetPassword,
    required TResult Function(_OnGetUserData value) onGetUserData,
  }) {
    return onGetUserData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_OnError value)? onError,
    TResult? Function(_OnSignOut value)? onSignOut,
    TResult? Function(_Authorized value)? authorized,
    TResult? Function(_UnAuthorized value)? unAuthorized,
    TResult? Function(_IsOpenFromPhone value)? isOpenFromPhone,
    TResult? Function(_OnLoginSuccess value)? onLoginSuccess,
    TResult? Function(_OnRegisterSuccess value)? onRegisterSuccess,
    TResult? Function(_OnResetPassword value)? onResetPassword,
    TResult? Function(_OnGetUserData value)? onGetUserData,
  }) {
    return onGetUserData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_OnError value)? onError,
    TResult Function(_OnSignOut value)? onSignOut,
    TResult Function(_Authorized value)? authorized,
    TResult Function(_UnAuthorized value)? unAuthorized,
    TResult Function(_IsOpenFromPhone value)? isOpenFromPhone,
    TResult Function(_OnLoginSuccess value)? onLoginSuccess,
    TResult Function(_OnRegisterSuccess value)? onRegisterSuccess,
    TResult Function(_OnResetPassword value)? onResetPassword,
    TResult Function(_OnGetUserData value)? onGetUserData,
    required TResult orElse(),
  }) {
    if (onGetUserData != null) {
      return onGetUserData(this);
    }
    return orElse();
  }
}

abstract class _OnGetUserData implements AuthState {
  const factory _OnGetUserData(final UserData userData) = _$OnGetUserDataImpl;

  UserData get userData;
  @JsonKey(ignore: true)
  _$$OnGetUserDataImplCopyWith<_$OnGetUserDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
