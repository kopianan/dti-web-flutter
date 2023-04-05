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
    required TResult Function() onSignOut,
    required TResult Function(UserData userData) authorized,
    required TResult Function() unAuthorized,
    required TResult Function(String userAgent) isOpenFromPhone,
    required TResult Function(String token, bool isAgent) onLoginSuccess,
    required TResult Function(String token, bool isAgent)
        onLoginSuccessWithoutPhoneNumber,
    required TResult Function(String token) onRegisterSuccess,
    required TResult Function(String message) onResetPassword,
    required TResult Function(UserData userData) onGetUserData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(Failures error)? onError,
    TResult Function()? onSignOut,
    TResult Function(UserData userData)? authorized,
    TResult Function()? unAuthorized,
    TResult Function(String userAgent)? isOpenFromPhone,
    TResult Function(String token, bool isAgent)? onLoginSuccess,
    TResult Function(String token, bool isAgent)?
        onLoginSuccessWithoutPhoneNumber,
    TResult Function(String token)? onRegisterSuccess,
    TResult Function(String message)? onResetPassword,
    TResult Function(UserData userData)? onGetUserData,
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
    TResult Function(String token, bool isAgent)? onLoginSuccess,
    TResult Function(String token, bool isAgent)?
        onLoginSuccessWithoutPhoneNumber,
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
    required TResult Function(_OnLoginSuccessWithoutPhoneNumber value)
        onLoginSuccessWithoutPhoneNumber,
    required TResult Function(_OnRegisterSuccess value) onRegisterSuccess,
    required TResult Function(_OnResetPassword value) onResetPassword,
    required TResult Function(_OnGetUserData value) onGetUserData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_OnError value)? onError,
    TResult Function(_OnSignOut value)? onSignOut,
    TResult Function(_Authorized value)? authorized,
    TResult Function(_UnAuthorized value)? unAuthorized,
    TResult Function(_IsOpenFromPhone value)? isOpenFromPhone,
    TResult Function(_OnLoginSuccess value)? onLoginSuccess,
    TResult Function(_OnLoginSuccessWithoutPhoneNumber value)?
        onLoginSuccessWithoutPhoneNumber,
    TResult Function(_OnRegisterSuccess value)? onRegisterSuccess,
    TResult Function(_OnResetPassword value)? onResetPassword,
    TResult Function(_OnGetUserData value)? onGetUserData,
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
    TResult Function(_OnLoginSuccessWithoutPhoneNumber value)?
        onLoginSuccessWithoutPhoneNumber,
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
    required TResult Function() onSignOut,
    required TResult Function(UserData userData) authorized,
    required TResult Function() unAuthorized,
    required TResult Function(String userAgent) isOpenFromPhone,
    required TResult Function(String token, bool isAgent) onLoginSuccess,
    required TResult Function(String token, bool isAgent)
        onLoginSuccessWithoutPhoneNumber,
    required TResult Function(String token) onRegisterSuccess,
    required TResult Function(String message) onResetPassword,
    required TResult Function(UserData userData) onGetUserData,
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
    TResult Function()? onSignOut,
    TResult Function(UserData userData)? authorized,
    TResult Function()? unAuthorized,
    TResult Function(String userAgent)? isOpenFromPhone,
    TResult Function(String token, bool isAgent)? onLoginSuccess,
    TResult Function(String token, bool isAgent)?
        onLoginSuccessWithoutPhoneNumber,
    TResult Function(String token)? onRegisterSuccess,
    TResult Function(String message)? onResetPassword,
    TResult Function(UserData userData)? onGetUserData,
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
    TResult Function(String token, bool isAgent)? onLoginSuccess,
    TResult Function(String token, bool isAgent)?
        onLoginSuccessWithoutPhoneNumber,
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
    required TResult Function(_OnLoginSuccessWithoutPhoneNumber value)
        onLoginSuccessWithoutPhoneNumber,
    required TResult Function(_OnRegisterSuccess value) onRegisterSuccess,
    required TResult Function(_OnResetPassword value) onResetPassword,
    required TResult Function(_OnGetUserData value) onGetUserData,
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
    TResult Function(_OnSignOut value)? onSignOut,
    TResult Function(_Authorized value)? authorized,
    TResult Function(_UnAuthorized value)? unAuthorized,
    TResult Function(_IsOpenFromPhone value)? isOpenFromPhone,
    TResult Function(_OnLoginSuccess value)? onLoginSuccess,
    TResult Function(_OnLoginSuccessWithoutPhoneNumber value)?
        onLoginSuccessWithoutPhoneNumber,
    TResult Function(_OnRegisterSuccess value)? onRegisterSuccess,
    TResult Function(_OnResetPassword value)? onResetPassword,
    TResult Function(_OnGetUserData value)? onGetUserData,
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
    TResult Function(_OnLoginSuccessWithoutPhoneNumber value)?
        onLoginSuccessWithoutPhoneNumber,
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
    required TResult Function() onSignOut,
    required TResult Function(UserData userData) authorized,
    required TResult Function() unAuthorized,
    required TResult Function(String userAgent) isOpenFromPhone,
    required TResult Function(String token, bool isAgent) onLoginSuccess,
    required TResult Function(String token, bool isAgent)
        onLoginSuccessWithoutPhoneNumber,
    required TResult Function(String token) onRegisterSuccess,
    required TResult Function(String message) onResetPassword,
    required TResult Function(UserData userData) onGetUserData,
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
    TResult Function()? onSignOut,
    TResult Function(UserData userData)? authorized,
    TResult Function()? unAuthorized,
    TResult Function(String userAgent)? isOpenFromPhone,
    TResult Function(String token, bool isAgent)? onLoginSuccess,
    TResult Function(String token, bool isAgent)?
        onLoginSuccessWithoutPhoneNumber,
    TResult Function(String token)? onRegisterSuccess,
    TResult Function(String message)? onResetPassword,
    TResult Function(UserData userData)? onGetUserData,
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
    TResult Function(String token, bool isAgent)? onLoginSuccess,
    TResult Function(String token, bool isAgent)?
        onLoginSuccessWithoutPhoneNumber,
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
    required TResult Function(_OnLoginSuccessWithoutPhoneNumber value)
        onLoginSuccessWithoutPhoneNumber,
    required TResult Function(_OnRegisterSuccess value) onRegisterSuccess,
    required TResult Function(_OnResetPassword value) onResetPassword,
    required TResult Function(_OnGetUserData value) onGetUserData,
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
    TResult Function(_OnSignOut value)? onSignOut,
    TResult Function(_Authorized value)? authorized,
    TResult Function(_UnAuthorized value)? unAuthorized,
    TResult Function(_IsOpenFromPhone value)? isOpenFromPhone,
    TResult Function(_OnLoginSuccess value)? onLoginSuccess,
    TResult Function(_OnLoginSuccessWithoutPhoneNumber value)?
        onLoginSuccessWithoutPhoneNumber,
    TResult Function(_OnRegisterSuccess value)? onRegisterSuccess,
    TResult Function(_OnResetPassword value)? onResetPassword,
    TResult Function(_OnGetUserData value)? onGetUserData,
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
    TResult Function(_OnLoginSuccessWithoutPhoneNumber value)?
        onLoginSuccessWithoutPhoneNumber,
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
    required TResult Function() onSignOut,
    required TResult Function(UserData userData) authorized,
    required TResult Function() unAuthorized,
    required TResult Function(String userAgent) isOpenFromPhone,
    required TResult Function(String token, bool isAgent) onLoginSuccess,
    required TResult Function(String token, bool isAgent)
        onLoginSuccessWithoutPhoneNumber,
    required TResult Function(String token) onRegisterSuccess,
    required TResult Function(String message) onResetPassword,
    required TResult Function(UserData userData) onGetUserData,
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
    TResult Function()? onSignOut,
    TResult Function(UserData userData)? authorized,
    TResult Function()? unAuthorized,
    TResult Function(String userAgent)? isOpenFromPhone,
    TResult Function(String token, bool isAgent)? onLoginSuccess,
    TResult Function(String token, bool isAgent)?
        onLoginSuccessWithoutPhoneNumber,
    TResult Function(String token)? onRegisterSuccess,
    TResult Function(String message)? onResetPassword,
    TResult Function(UserData userData)? onGetUserData,
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
    TResult Function(String token, bool isAgent)? onLoginSuccess,
    TResult Function(String token, bool isAgent)?
        onLoginSuccessWithoutPhoneNumber,
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
    required TResult Function(_OnLoginSuccessWithoutPhoneNumber value)
        onLoginSuccessWithoutPhoneNumber,
    required TResult Function(_OnRegisterSuccess value) onRegisterSuccess,
    required TResult Function(_OnResetPassword value) onResetPassword,
    required TResult Function(_OnGetUserData value) onGetUserData,
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
    TResult Function(_OnSignOut value)? onSignOut,
    TResult Function(_Authorized value)? authorized,
    TResult Function(_UnAuthorized value)? unAuthorized,
    TResult Function(_IsOpenFromPhone value)? isOpenFromPhone,
    TResult Function(_OnLoginSuccess value)? onLoginSuccess,
    TResult Function(_OnLoginSuccessWithoutPhoneNumber value)?
        onLoginSuccessWithoutPhoneNumber,
    TResult Function(_OnRegisterSuccess value)? onRegisterSuccess,
    TResult Function(_OnResetPassword value)? onResetPassword,
    TResult Function(_OnGetUserData value)? onGetUserData,
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
    TResult Function(_OnLoginSuccessWithoutPhoneNumber value)?
        onLoginSuccessWithoutPhoneNumber,
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
    required TResult Function() onSignOut,
    required TResult Function(UserData userData) authorized,
    required TResult Function() unAuthorized,
    required TResult Function(String userAgent) isOpenFromPhone,
    required TResult Function(String token, bool isAgent) onLoginSuccess,
    required TResult Function(String token, bool isAgent)
        onLoginSuccessWithoutPhoneNumber,
    required TResult Function(String token) onRegisterSuccess,
    required TResult Function(String message) onResetPassword,
    required TResult Function(UserData userData) onGetUserData,
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
    TResult Function()? onSignOut,
    TResult Function(UserData userData)? authorized,
    TResult Function()? unAuthorized,
    TResult Function(String userAgent)? isOpenFromPhone,
    TResult Function(String token, bool isAgent)? onLoginSuccess,
    TResult Function(String token, bool isAgent)?
        onLoginSuccessWithoutPhoneNumber,
    TResult Function(String token)? onRegisterSuccess,
    TResult Function(String message)? onResetPassword,
    TResult Function(UserData userData)? onGetUserData,
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
    TResult Function(String token, bool isAgent)? onLoginSuccess,
    TResult Function(String token, bool isAgent)?
        onLoginSuccessWithoutPhoneNumber,
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
    required TResult Function(_OnLoginSuccessWithoutPhoneNumber value)
        onLoginSuccessWithoutPhoneNumber,
    required TResult Function(_OnRegisterSuccess value) onRegisterSuccess,
    required TResult Function(_OnResetPassword value) onResetPassword,
    required TResult Function(_OnGetUserData value) onGetUserData,
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
    TResult Function(_OnSignOut value)? onSignOut,
    TResult Function(_Authorized value)? authorized,
    TResult Function(_UnAuthorized value)? unAuthorized,
    TResult Function(_IsOpenFromPhone value)? isOpenFromPhone,
    TResult Function(_OnLoginSuccess value)? onLoginSuccess,
    TResult Function(_OnLoginSuccessWithoutPhoneNumber value)?
        onLoginSuccessWithoutPhoneNumber,
    TResult Function(_OnRegisterSuccess value)? onRegisterSuccess,
    TResult Function(_OnResetPassword value)? onResetPassword,
    TResult Function(_OnGetUserData value)? onGetUserData,
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
    TResult Function(_OnLoginSuccessWithoutPhoneNumber value)?
        onLoginSuccessWithoutPhoneNumber,
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
  const factory _OnError(final Failures error) = _$_OnError;

  Failures get error;
  @JsonKey(ignore: true)
  _$$_OnErrorCopyWith<_$_OnError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_OnSignOutCopyWith<$Res> {
  factory _$$_OnSignOutCopyWith(
          _$_OnSignOut value, $Res Function(_$_OnSignOut) then) =
      __$$_OnSignOutCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_OnSignOutCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$$_OnSignOutCopyWith<$Res> {
  __$$_OnSignOutCopyWithImpl(
      _$_OnSignOut _value, $Res Function(_$_OnSignOut) _then)
      : super(_value, (v) => _then(v as _$_OnSignOut));

  @override
  _$_OnSignOut get _value => super._value as _$_OnSignOut;
}

/// @nodoc

class _$_OnSignOut implements _OnSignOut {
  const _$_OnSignOut();

  @override
  String toString() {
    return 'AuthState.onSignOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_OnSignOut);
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
    required TResult Function(String token, bool isAgent) onLoginSuccess,
    required TResult Function(String token, bool isAgent)
        onLoginSuccessWithoutPhoneNumber,
    required TResult Function(String token) onRegisterSuccess,
    required TResult Function(String message) onResetPassword,
    required TResult Function(UserData userData) onGetUserData,
  }) {
    return onSignOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(Failures error)? onError,
    TResult Function()? onSignOut,
    TResult Function(UserData userData)? authorized,
    TResult Function()? unAuthorized,
    TResult Function(String userAgent)? isOpenFromPhone,
    TResult Function(String token, bool isAgent)? onLoginSuccess,
    TResult Function(String token, bool isAgent)?
        onLoginSuccessWithoutPhoneNumber,
    TResult Function(String token)? onRegisterSuccess,
    TResult Function(String message)? onResetPassword,
    TResult Function(UserData userData)? onGetUserData,
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
    TResult Function(String token, bool isAgent)? onLoginSuccess,
    TResult Function(String token, bool isAgent)?
        onLoginSuccessWithoutPhoneNumber,
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
    required TResult Function(_OnLoginSuccessWithoutPhoneNumber value)
        onLoginSuccessWithoutPhoneNumber,
    required TResult Function(_OnRegisterSuccess value) onRegisterSuccess,
    required TResult Function(_OnResetPassword value) onResetPassword,
    required TResult Function(_OnGetUserData value) onGetUserData,
  }) {
    return onSignOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_OnError value)? onError,
    TResult Function(_OnSignOut value)? onSignOut,
    TResult Function(_Authorized value)? authorized,
    TResult Function(_UnAuthorized value)? unAuthorized,
    TResult Function(_IsOpenFromPhone value)? isOpenFromPhone,
    TResult Function(_OnLoginSuccess value)? onLoginSuccess,
    TResult Function(_OnLoginSuccessWithoutPhoneNumber value)?
        onLoginSuccessWithoutPhoneNumber,
    TResult Function(_OnRegisterSuccess value)? onRegisterSuccess,
    TResult Function(_OnResetPassword value)? onResetPassword,
    TResult Function(_OnGetUserData value)? onGetUserData,
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
    TResult Function(_OnLoginSuccessWithoutPhoneNumber value)?
        onLoginSuccessWithoutPhoneNumber,
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
  const factory _OnSignOut() = _$_OnSignOut;
}

/// @nodoc
abstract class _$$_AuthorizedCopyWith<$Res> {
  factory _$$_AuthorizedCopyWith(
          _$_Authorized value, $Res Function(_$_Authorized) then) =
      __$$_AuthorizedCopyWithImpl<$Res>;
  $Res call({UserData userData});

  $UserDataCopyWith<$Res> get userData;
}

/// @nodoc
class __$$_AuthorizedCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$$_AuthorizedCopyWith<$Res> {
  __$$_AuthorizedCopyWithImpl(
      _$_Authorized _value, $Res Function(_$_Authorized) _then)
      : super(_value, (v) => _then(v as _$_Authorized));

  @override
  _$_Authorized get _value => super._value as _$_Authorized;

  @override
  $Res call({
    Object? userData = freezed,
  }) {
    return _then(_$_Authorized(
      userData == freezed
          ? _value.userData
          : userData // ignore: cast_nullable_to_non_nullable
              as UserData,
    ));
  }

  @override
  $UserDataCopyWith<$Res> get userData {
    return $UserDataCopyWith<$Res>(_value.userData, (value) {
      return _then(_value.copyWith(userData: value));
    });
  }
}

/// @nodoc

class _$_Authorized implements _Authorized {
  const _$_Authorized(this.userData);

  @override
  final UserData userData;

  @override
  String toString() {
    return 'AuthState.authorized(userData: $userData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Authorized &&
            const DeepCollectionEquality().equals(other.userData, userData));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(userData));

  @JsonKey(ignore: true)
  @override
  _$$_AuthorizedCopyWith<_$_Authorized> get copyWith =>
      __$$_AuthorizedCopyWithImpl<_$_Authorized>(this, _$identity);

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
    required TResult Function(String token, bool isAgent) onLoginSuccess,
    required TResult Function(String token, bool isAgent)
        onLoginSuccessWithoutPhoneNumber,
    required TResult Function(String token) onRegisterSuccess,
    required TResult Function(String message) onResetPassword,
    required TResult Function(UserData userData) onGetUserData,
  }) {
    return authorized(userData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(Failures error)? onError,
    TResult Function()? onSignOut,
    TResult Function(UserData userData)? authorized,
    TResult Function()? unAuthorized,
    TResult Function(String userAgent)? isOpenFromPhone,
    TResult Function(String token, bool isAgent)? onLoginSuccess,
    TResult Function(String token, bool isAgent)?
        onLoginSuccessWithoutPhoneNumber,
    TResult Function(String token)? onRegisterSuccess,
    TResult Function(String message)? onResetPassword,
    TResult Function(UserData userData)? onGetUserData,
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
    TResult Function(String token, bool isAgent)? onLoginSuccess,
    TResult Function(String token, bool isAgent)?
        onLoginSuccessWithoutPhoneNumber,
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
    required TResult Function(_OnLoginSuccessWithoutPhoneNumber value)
        onLoginSuccessWithoutPhoneNumber,
    required TResult Function(_OnRegisterSuccess value) onRegisterSuccess,
    required TResult Function(_OnResetPassword value) onResetPassword,
    required TResult Function(_OnGetUserData value) onGetUserData,
  }) {
    return authorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_OnError value)? onError,
    TResult Function(_OnSignOut value)? onSignOut,
    TResult Function(_Authorized value)? authorized,
    TResult Function(_UnAuthorized value)? unAuthorized,
    TResult Function(_IsOpenFromPhone value)? isOpenFromPhone,
    TResult Function(_OnLoginSuccess value)? onLoginSuccess,
    TResult Function(_OnLoginSuccessWithoutPhoneNumber value)?
        onLoginSuccessWithoutPhoneNumber,
    TResult Function(_OnRegisterSuccess value)? onRegisterSuccess,
    TResult Function(_OnResetPassword value)? onResetPassword,
    TResult Function(_OnGetUserData value)? onGetUserData,
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
    TResult Function(_OnLoginSuccessWithoutPhoneNumber value)?
        onLoginSuccessWithoutPhoneNumber,
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
  const factory _Authorized(final UserData userData) = _$_Authorized;

  UserData get userData;
  @JsonKey(ignore: true)
  _$$_AuthorizedCopyWith<_$_Authorized> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UnAuthorizedCopyWith<$Res> {
  factory _$$_UnAuthorizedCopyWith(
          _$_UnAuthorized value, $Res Function(_$_UnAuthorized) then) =
      __$$_UnAuthorizedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UnAuthorizedCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$$_UnAuthorizedCopyWith<$Res> {
  __$$_UnAuthorizedCopyWithImpl(
      _$_UnAuthorized _value, $Res Function(_$_UnAuthorized) _then)
      : super(_value, (v) => _then(v as _$_UnAuthorized));

  @override
  _$_UnAuthorized get _value => super._value as _$_UnAuthorized;
}

/// @nodoc

class _$_UnAuthorized implements _UnAuthorized {
  const _$_UnAuthorized();

  @override
  String toString() {
    return 'AuthState.unAuthorized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_UnAuthorized);
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
    required TResult Function(String token, bool isAgent) onLoginSuccess,
    required TResult Function(String token, bool isAgent)
        onLoginSuccessWithoutPhoneNumber,
    required TResult Function(String token) onRegisterSuccess,
    required TResult Function(String message) onResetPassword,
    required TResult Function(UserData userData) onGetUserData,
  }) {
    return unAuthorized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(Failures error)? onError,
    TResult Function()? onSignOut,
    TResult Function(UserData userData)? authorized,
    TResult Function()? unAuthorized,
    TResult Function(String userAgent)? isOpenFromPhone,
    TResult Function(String token, bool isAgent)? onLoginSuccess,
    TResult Function(String token, bool isAgent)?
        onLoginSuccessWithoutPhoneNumber,
    TResult Function(String token)? onRegisterSuccess,
    TResult Function(String message)? onResetPassword,
    TResult Function(UserData userData)? onGetUserData,
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
    TResult Function(String token, bool isAgent)? onLoginSuccess,
    TResult Function(String token, bool isAgent)?
        onLoginSuccessWithoutPhoneNumber,
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
    required TResult Function(_OnLoginSuccessWithoutPhoneNumber value)
        onLoginSuccessWithoutPhoneNumber,
    required TResult Function(_OnRegisterSuccess value) onRegisterSuccess,
    required TResult Function(_OnResetPassword value) onResetPassword,
    required TResult Function(_OnGetUserData value) onGetUserData,
  }) {
    return unAuthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_OnError value)? onError,
    TResult Function(_OnSignOut value)? onSignOut,
    TResult Function(_Authorized value)? authorized,
    TResult Function(_UnAuthorized value)? unAuthorized,
    TResult Function(_IsOpenFromPhone value)? isOpenFromPhone,
    TResult Function(_OnLoginSuccess value)? onLoginSuccess,
    TResult Function(_OnLoginSuccessWithoutPhoneNumber value)?
        onLoginSuccessWithoutPhoneNumber,
    TResult Function(_OnRegisterSuccess value)? onRegisterSuccess,
    TResult Function(_OnResetPassword value)? onResetPassword,
    TResult Function(_OnGetUserData value)? onGetUserData,
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
    TResult Function(_OnLoginSuccessWithoutPhoneNumber value)?
        onLoginSuccessWithoutPhoneNumber,
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
  const factory _UnAuthorized() = _$_UnAuthorized;
}

/// @nodoc
abstract class _$$_IsOpenFromPhoneCopyWith<$Res> {
  factory _$$_IsOpenFromPhoneCopyWith(
          _$_IsOpenFromPhone value, $Res Function(_$_IsOpenFromPhone) then) =
      __$$_IsOpenFromPhoneCopyWithImpl<$Res>;
  $Res call({String userAgent});
}

/// @nodoc
class __$$_IsOpenFromPhoneCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements _$$_IsOpenFromPhoneCopyWith<$Res> {
  __$$_IsOpenFromPhoneCopyWithImpl(
      _$_IsOpenFromPhone _value, $Res Function(_$_IsOpenFromPhone) _then)
      : super(_value, (v) => _then(v as _$_IsOpenFromPhone));

  @override
  _$_IsOpenFromPhone get _value => super._value as _$_IsOpenFromPhone;

  @override
  $Res call({
    Object? userAgent = freezed,
  }) {
    return _then(_$_IsOpenFromPhone(
      userAgent == freezed
          ? _value.userAgent
          : userAgent // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_IsOpenFromPhone implements _IsOpenFromPhone {
  const _$_IsOpenFromPhone(this.userAgent);

  @override
  final String userAgent;

  @override
  String toString() {
    return 'AuthState.isOpenFromPhone(userAgent: $userAgent)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IsOpenFromPhone &&
            const DeepCollectionEquality().equals(other.userAgent, userAgent));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(userAgent));

  @JsonKey(ignore: true)
  @override
  _$$_IsOpenFromPhoneCopyWith<_$_IsOpenFromPhone> get copyWith =>
      __$$_IsOpenFromPhoneCopyWithImpl<_$_IsOpenFromPhone>(this, _$identity);

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
    required TResult Function(String token, bool isAgent) onLoginSuccess,
    required TResult Function(String token, bool isAgent)
        onLoginSuccessWithoutPhoneNumber,
    required TResult Function(String token) onRegisterSuccess,
    required TResult Function(String message) onResetPassword,
    required TResult Function(UserData userData) onGetUserData,
  }) {
    return isOpenFromPhone(userAgent);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(Failures error)? onError,
    TResult Function()? onSignOut,
    TResult Function(UserData userData)? authorized,
    TResult Function()? unAuthorized,
    TResult Function(String userAgent)? isOpenFromPhone,
    TResult Function(String token, bool isAgent)? onLoginSuccess,
    TResult Function(String token, bool isAgent)?
        onLoginSuccessWithoutPhoneNumber,
    TResult Function(String token)? onRegisterSuccess,
    TResult Function(String message)? onResetPassword,
    TResult Function(UserData userData)? onGetUserData,
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
    TResult Function(String token, bool isAgent)? onLoginSuccess,
    TResult Function(String token, bool isAgent)?
        onLoginSuccessWithoutPhoneNumber,
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
    required TResult Function(_OnLoginSuccessWithoutPhoneNumber value)
        onLoginSuccessWithoutPhoneNumber,
    required TResult Function(_OnRegisterSuccess value) onRegisterSuccess,
    required TResult Function(_OnResetPassword value) onResetPassword,
    required TResult Function(_OnGetUserData value) onGetUserData,
  }) {
    return isOpenFromPhone(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_OnError value)? onError,
    TResult Function(_OnSignOut value)? onSignOut,
    TResult Function(_Authorized value)? authorized,
    TResult Function(_UnAuthorized value)? unAuthorized,
    TResult Function(_IsOpenFromPhone value)? isOpenFromPhone,
    TResult Function(_OnLoginSuccess value)? onLoginSuccess,
    TResult Function(_OnLoginSuccessWithoutPhoneNumber value)?
        onLoginSuccessWithoutPhoneNumber,
    TResult Function(_OnRegisterSuccess value)? onRegisterSuccess,
    TResult Function(_OnResetPassword value)? onResetPassword,
    TResult Function(_OnGetUserData value)? onGetUserData,
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
    TResult Function(_OnLoginSuccessWithoutPhoneNumber value)?
        onLoginSuccessWithoutPhoneNumber,
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
  const factory _IsOpenFromPhone(final String userAgent) = _$_IsOpenFromPhone;

  String get userAgent;
  @JsonKey(ignore: true)
  _$$_IsOpenFromPhoneCopyWith<_$_IsOpenFromPhone> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_OnLoginSuccessCopyWith<$Res> {
  factory _$$_OnLoginSuccessCopyWith(
          _$_OnLoginSuccess value, $Res Function(_$_OnLoginSuccess) then) =
      __$$_OnLoginSuccessCopyWithImpl<$Res>;
  $Res call({String token, bool isAgent});
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
    Object? isAgent = freezed,
  }) {
    return _then(_$_OnLoginSuccess(
      token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      isAgent == freezed
          ? _value.isAgent
          : isAgent // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_OnLoginSuccess implements _OnLoginSuccess {
  const _$_OnLoginSuccess(this.token, this.isAgent);

  @override
  final String token;
  @override
  final bool isAgent;

  @override
  String toString() {
    return 'AuthState.onLoginSuccess(token: $token, isAgent: $isAgent)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OnLoginSuccess &&
            const DeepCollectionEquality().equals(other.token, token) &&
            const DeepCollectionEquality().equals(other.isAgent, isAgent));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(token),
      const DeepCollectionEquality().hash(isAgent));

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
    required TResult Function() onSignOut,
    required TResult Function(UserData userData) authorized,
    required TResult Function() unAuthorized,
    required TResult Function(String userAgent) isOpenFromPhone,
    required TResult Function(String token, bool isAgent) onLoginSuccess,
    required TResult Function(String token, bool isAgent)
        onLoginSuccessWithoutPhoneNumber,
    required TResult Function(String token) onRegisterSuccess,
    required TResult Function(String message) onResetPassword,
    required TResult Function(UserData userData) onGetUserData,
  }) {
    return onLoginSuccess(token, isAgent);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(Failures error)? onError,
    TResult Function()? onSignOut,
    TResult Function(UserData userData)? authorized,
    TResult Function()? unAuthorized,
    TResult Function(String userAgent)? isOpenFromPhone,
    TResult Function(String token, bool isAgent)? onLoginSuccess,
    TResult Function(String token, bool isAgent)?
        onLoginSuccessWithoutPhoneNumber,
    TResult Function(String token)? onRegisterSuccess,
    TResult Function(String message)? onResetPassword,
    TResult Function(UserData userData)? onGetUserData,
  }) {
    return onLoginSuccess?.call(token, isAgent);
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
    TResult Function(String token, bool isAgent)? onLoginSuccess,
    TResult Function(String token, bool isAgent)?
        onLoginSuccessWithoutPhoneNumber,
    TResult Function(String token)? onRegisterSuccess,
    TResult Function(String message)? onResetPassword,
    TResult Function(UserData userData)? onGetUserData,
    required TResult orElse(),
  }) {
    if (onLoginSuccess != null) {
      return onLoginSuccess(token, isAgent);
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
    required TResult Function(_OnLoginSuccessWithoutPhoneNumber value)
        onLoginSuccessWithoutPhoneNumber,
    required TResult Function(_OnRegisterSuccess value) onRegisterSuccess,
    required TResult Function(_OnResetPassword value) onResetPassword,
    required TResult Function(_OnGetUserData value) onGetUserData,
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
    TResult Function(_OnSignOut value)? onSignOut,
    TResult Function(_Authorized value)? authorized,
    TResult Function(_UnAuthorized value)? unAuthorized,
    TResult Function(_IsOpenFromPhone value)? isOpenFromPhone,
    TResult Function(_OnLoginSuccess value)? onLoginSuccess,
    TResult Function(_OnLoginSuccessWithoutPhoneNumber value)?
        onLoginSuccessWithoutPhoneNumber,
    TResult Function(_OnRegisterSuccess value)? onRegisterSuccess,
    TResult Function(_OnResetPassword value)? onResetPassword,
    TResult Function(_OnGetUserData value)? onGetUserData,
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
    TResult Function(_OnLoginSuccessWithoutPhoneNumber value)?
        onLoginSuccessWithoutPhoneNumber,
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
  const factory _OnLoginSuccess(final String token, final bool isAgent) =
      _$_OnLoginSuccess;

  String get token;
  bool get isAgent;
  @JsonKey(ignore: true)
  _$$_OnLoginSuccessCopyWith<_$_OnLoginSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_OnLoginSuccessWithoutPhoneNumberCopyWith<$Res> {
  factory _$$_OnLoginSuccessWithoutPhoneNumberCopyWith(
          _$_OnLoginSuccessWithoutPhoneNumber value,
          $Res Function(_$_OnLoginSuccessWithoutPhoneNumber) then) =
      __$$_OnLoginSuccessWithoutPhoneNumberCopyWithImpl<$Res>;
  $Res call({String token, bool isAgent});
}

/// @nodoc
class __$$_OnLoginSuccessWithoutPhoneNumberCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements _$$_OnLoginSuccessWithoutPhoneNumberCopyWith<$Res> {
  __$$_OnLoginSuccessWithoutPhoneNumberCopyWithImpl(
      _$_OnLoginSuccessWithoutPhoneNumber _value,
      $Res Function(_$_OnLoginSuccessWithoutPhoneNumber) _then)
      : super(_value, (v) => _then(v as _$_OnLoginSuccessWithoutPhoneNumber));

  @override
  _$_OnLoginSuccessWithoutPhoneNumber get _value =>
      super._value as _$_OnLoginSuccessWithoutPhoneNumber;

  @override
  $Res call({
    Object? token = freezed,
    Object? isAgent = freezed,
  }) {
    return _then(_$_OnLoginSuccessWithoutPhoneNumber(
      token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      isAgent == freezed
          ? _value.isAgent
          : isAgent // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_OnLoginSuccessWithoutPhoneNumber
    implements _OnLoginSuccessWithoutPhoneNumber {
  const _$_OnLoginSuccessWithoutPhoneNumber(this.token, this.isAgent);

  @override
  final String token;
  @override
  final bool isAgent;

  @override
  String toString() {
    return 'AuthState.onLoginSuccessWithoutPhoneNumber(token: $token, isAgent: $isAgent)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OnLoginSuccessWithoutPhoneNumber &&
            const DeepCollectionEquality().equals(other.token, token) &&
            const DeepCollectionEquality().equals(other.isAgent, isAgent));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(token),
      const DeepCollectionEquality().hash(isAgent));

  @JsonKey(ignore: true)
  @override
  _$$_OnLoginSuccessWithoutPhoneNumberCopyWith<
          _$_OnLoginSuccessWithoutPhoneNumber>
      get copyWith => __$$_OnLoginSuccessWithoutPhoneNumberCopyWithImpl<
          _$_OnLoginSuccessWithoutPhoneNumber>(this, _$identity);

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
    required TResult Function(String token, bool isAgent) onLoginSuccess,
    required TResult Function(String token, bool isAgent)
        onLoginSuccessWithoutPhoneNumber,
    required TResult Function(String token) onRegisterSuccess,
    required TResult Function(String message) onResetPassword,
    required TResult Function(UserData userData) onGetUserData,
  }) {
    return onLoginSuccessWithoutPhoneNumber(token, isAgent);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(Failures error)? onError,
    TResult Function()? onSignOut,
    TResult Function(UserData userData)? authorized,
    TResult Function()? unAuthorized,
    TResult Function(String userAgent)? isOpenFromPhone,
    TResult Function(String token, bool isAgent)? onLoginSuccess,
    TResult Function(String token, bool isAgent)?
        onLoginSuccessWithoutPhoneNumber,
    TResult Function(String token)? onRegisterSuccess,
    TResult Function(String message)? onResetPassword,
    TResult Function(UserData userData)? onGetUserData,
  }) {
    return onLoginSuccessWithoutPhoneNumber?.call(token, isAgent);
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
    TResult Function(String token, bool isAgent)? onLoginSuccess,
    TResult Function(String token, bool isAgent)?
        onLoginSuccessWithoutPhoneNumber,
    TResult Function(String token)? onRegisterSuccess,
    TResult Function(String message)? onResetPassword,
    TResult Function(UserData userData)? onGetUserData,
    required TResult orElse(),
  }) {
    if (onLoginSuccessWithoutPhoneNumber != null) {
      return onLoginSuccessWithoutPhoneNumber(token, isAgent);
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
    required TResult Function(_OnLoginSuccessWithoutPhoneNumber value)
        onLoginSuccessWithoutPhoneNumber,
    required TResult Function(_OnRegisterSuccess value) onRegisterSuccess,
    required TResult Function(_OnResetPassword value) onResetPassword,
    required TResult Function(_OnGetUserData value) onGetUserData,
  }) {
    return onLoginSuccessWithoutPhoneNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_OnError value)? onError,
    TResult Function(_OnSignOut value)? onSignOut,
    TResult Function(_Authorized value)? authorized,
    TResult Function(_UnAuthorized value)? unAuthorized,
    TResult Function(_IsOpenFromPhone value)? isOpenFromPhone,
    TResult Function(_OnLoginSuccess value)? onLoginSuccess,
    TResult Function(_OnLoginSuccessWithoutPhoneNumber value)?
        onLoginSuccessWithoutPhoneNumber,
    TResult Function(_OnRegisterSuccess value)? onRegisterSuccess,
    TResult Function(_OnResetPassword value)? onResetPassword,
    TResult Function(_OnGetUserData value)? onGetUserData,
  }) {
    return onLoginSuccessWithoutPhoneNumber?.call(this);
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
    TResult Function(_OnLoginSuccessWithoutPhoneNumber value)?
        onLoginSuccessWithoutPhoneNumber,
    TResult Function(_OnRegisterSuccess value)? onRegisterSuccess,
    TResult Function(_OnResetPassword value)? onResetPassword,
    TResult Function(_OnGetUserData value)? onGetUserData,
    required TResult orElse(),
  }) {
    if (onLoginSuccessWithoutPhoneNumber != null) {
      return onLoginSuccessWithoutPhoneNumber(this);
    }
    return orElse();
  }
}

abstract class _OnLoginSuccessWithoutPhoneNumber implements AuthState {
  const factory _OnLoginSuccessWithoutPhoneNumber(
          final String token, final bool isAgent) =
      _$_OnLoginSuccessWithoutPhoneNumber;

  String get token;
  bool get isAgent;
  @JsonKey(ignore: true)
  _$$_OnLoginSuccessWithoutPhoneNumberCopyWith<
          _$_OnLoginSuccessWithoutPhoneNumber>
      get copyWith => throw _privateConstructorUsedError;
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
    required TResult Function() onSignOut,
    required TResult Function(UserData userData) authorized,
    required TResult Function() unAuthorized,
    required TResult Function(String userAgent) isOpenFromPhone,
    required TResult Function(String token, bool isAgent) onLoginSuccess,
    required TResult Function(String token, bool isAgent)
        onLoginSuccessWithoutPhoneNumber,
    required TResult Function(String token) onRegisterSuccess,
    required TResult Function(String message) onResetPassword,
    required TResult Function(UserData userData) onGetUserData,
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
    TResult Function()? onSignOut,
    TResult Function(UserData userData)? authorized,
    TResult Function()? unAuthorized,
    TResult Function(String userAgent)? isOpenFromPhone,
    TResult Function(String token, bool isAgent)? onLoginSuccess,
    TResult Function(String token, bool isAgent)?
        onLoginSuccessWithoutPhoneNumber,
    TResult Function(String token)? onRegisterSuccess,
    TResult Function(String message)? onResetPassword,
    TResult Function(UserData userData)? onGetUserData,
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
    TResult Function(String token, bool isAgent)? onLoginSuccess,
    TResult Function(String token, bool isAgent)?
        onLoginSuccessWithoutPhoneNumber,
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
    required TResult Function(_OnLoginSuccessWithoutPhoneNumber value)
        onLoginSuccessWithoutPhoneNumber,
    required TResult Function(_OnRegisterSuccess value) onRegisterSuccess,
    required TResult Function(_OnResetPassword value) onResetPassword,
    required TResult Function(_OnGetUserData value) onGetUserData,
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
    TResult Function(_OnSignOut value)? onSignOut,
    TResult Function(_Authorized value)? authorized,
    TResult Function(_UnAuthorized value)? unAuthorized,
    TResult Function(_IsOpenFromPhone value)? isOpenFromPhone,
    TResult Function(_OnLoginSuccess value)? onLoginSuccess,
    TResult Function(_OnLoginSuccessWithoutPhoneNumber value)?
        onLoginSuccessWithoutPhoneNumber,
    TResult Function(_OnRegisterSuccess value)? onRegisterSuccess,
    TResult Function(_OnResetPassword value)? onResetPassword,
    TResult Function(_OnGetUserData value)? onGetUserData,
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
    TResult Function(_OnLoginSuccessWithoutPhoneNumber value)?
        onLoginSuccessWithoutPhoneNumber,
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
    required TResult Function() onSignOut,
    required TResult Function(UserData userData) authorized,
    required TResult Function() unAuthorized,
    required TResult Function(String userAgent) isOpenFromPhone,
    required TResult Function(String token, bool isAgent) onLoginSuccess,
    required TResult Function(String token, bool isAgent)
        onLoginSuccessWithoutPhoneNumber,
    required TResult Function(String token) onRegisterSuccess,
    required TResult Function(String message) onResetPassword,
    required TResult Function(UserData userData) onGetUserData,
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
    TResult Function()? onSignOut,
    TResult Function(UserData userData)? authorized,
    TResult Function()? unAuthorized,
    TResult Function(String userAgent)? isOpenFromPhone,
    TResult Function(String token, bool isAgent)? onLoginSuccess,
    TResult Function(String token, bool isAgent)?
        onLoginSuccessWithoutPhoneNumber,
    TResult Function(String token)? onRegisterSuccess,
    TResult Function(String message)? onResetPassword,
    TResult Function(UserData userData)? onGetUserData,
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
    TResult Function(String token, bool isAgent)? onLoginSuccess,
    TResult Function(String token, bool isAgent)?
        onLoginSuccessWithoutPhoneNumber,
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
    required TResult Function(_OnLoginSuccessWithoutPhoneNumber value)
        onLoginSuccessWithoutPhoneNumber,
    required TResult Function(_OnRegisterSuccess value) onRegisterSuccess,
    required TResult Function(_OnResetPassword value) onResetPassword,
    required TResult Function(_OnGetUserData value) onGetUserData,
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
    TResult Function(_OnSignOut value)? onSignOut,
    TResult Function(_Authorized value)? authorized,
    TResult Function(_UnAuthorized value)? unAuthorized,
    TResult Function(_IsOpenFromPhone value)? isOpenFromPhone,
    TResult Function(_OnLoginSuccess value)? onLoginSuccess,
    TResult Function(_OnLoginSuccessWithoutPhoneNumber value)?
        onLoginSuccessWithoutPhoneNumber,
    TResult Function(_OnRegisterSuccess value)? onRegisterSuccess,
    TResult Function(_OnResetPassword value)? onResetPassword,
    TResult Function(_OnGetUserData value)? onGetUserData,
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
    TResult Function(_OnLoginSuccessWithoutPhoneNumber value)?
        onLoginSuccessWithoutPhoneNumber,
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
  const factory _OnResetPassword(final String message) = _$_OnResetPassword;

  String get message;
  @JsonKey(ignore: true)
  _$$_OnResetPasswordCopyWith<_$_OnResetPassword> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_OnGetUserDataCopyWith<$Res> {
  factory _$$_OnGetUserDataCopyWith(
          _$_OnGetUserData value, $Res Function(_$_OnGetUserData) then) =
      __$$_OnGetUserDataCopyWithImpl<$Res>;
  $Res call({UserData userData});

  $UserDataCopyWith<$Res> get userData;
}

/// @nodoc
class __$$_OnGetUserDataCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$$_OnGetUserDataCopyWith<$Res> {
  __$$_OnGetUserDataCopyWithImpl(
      _$_OnGetUserData _value, $Res Function(_$_OnGetUserData) _then)
      : super(_value, (v) => _then(v as _$_OnGetUserData));

  @override
  _$_OnGetUserData get _value => super._value as _$_OnGetUserData;

  @override
  $Res call({
    Object? userData = freezed,
  }) {
    return _then(_$_OnGetUserData(
      userData == freezed
          ? _value.userData
          : userData // ignore: cast_nullable_to_non_nullable
              as UserData,
    ));
  }

  @override
  $UserDataCopyWith<$Res> get userData {
    return $UserDataCopyWith<$Res>(_value.userData, (value) {
      return _then(_value.copyWith(userData: value));
    });
  }
}

/// @nodoc

class _$_OnGetUserData implements _OnGetUserData {
  const _$_OnGetUserData(this.userData);

  @override
  final UserData userData;

  @override
  String toString() {
    return 'AuthState.onGetUserData(userData: $userData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OnGetUserData &&
            const DeepCollectionEquality().equals(other.userData, userData));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(userData));

  @JsonKey(ignore: true)
  @override
  _$$_OnGetUserDataCopyWith<_$_OnGetUserData> get copyWith =>
      __$$_OnGetUserDataCopyWithImpl<_$_OnGetUserData>(this, _$identity);

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
    required TResult Function(String token, bool isAgent) onLoginSuccess,
    required TResult Function(String token, bool isAgent)
        onLoginSuccessWithoutPhoneNumber,
    required TResult Function(String token) onRegisterSuccess,
    required TResult Function(String message) onResetPassword,
    required TResult Function(UserData userData) onGetUserData,
  }) {
    return onGetUserData(userData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(Failures error)? onError,
    TResult Function()? onSignOut,
    TResult Function(UserData userData)? authorized,
    TResult Function()? unAuthorized,
    TResult Function(String userAgent)? isOpenFromPhone,
    TResult Function(String token, bool isAgent)? onLoginSuccess,
    TResult Function(String token, bool isAgent)?
        onLoginSuccessWithoutPhoneNumber,
    TResult Function(String token)? onRegisterSuccess,
    TResult Function(String message)? onResetPassword,
    TResult Function(UserData userData)? onGetUserData,
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
    TResult Function(String token, bool isAgent)? onLoginSuccess,
    TResult Function(String token, bool isAgent)?
        onLoginSuccessWithoutPhoneNumber,
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
    required TResult Function(_OnLoginSuccessWithoutPhoneNumber value)
        onLoginSuccessWithoutPhoneNumber,
    required TResult Function(_OnRegisterSuccess value) onRegisterSuccess,
    required TResult Function(_OnResetPassword value) onResetPassword,
    required TResult Function(_OnGetUserData value) onGetUserData,
  }) {
    return onGetUserData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_OnError value)? onError,
    TResult Function(_OnSignOut value)? onSignOut,
    TResult Function(_Authorized value)? authorized,
    TResult Function(_UnAuthorized value)? unAuthorized,
    TResult Function(_IsOpenFromPhone value)? isOpenFromPhone,
    TResult Function(_OnLoginSuccess value)? onLoginSuccess,
    TResult Function(_OnLoginSuccessWithoutPhoneNumber value)?
        onLoginSuccessWithoutPhoneNumber,
    TResult Function(_OnRegisterSuccess value)? onRegisterSuccess,
    TResult Function(_OnResetPassword value)? onResetPassword,
    TResult Function(_OnGetUserData value)? onGetUserData,
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
    TResult Function(_OnLoginSuccessWithoutPhoneNumber value)?
        onLoginSuccessWithoutPhoneNumber,
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
  const factory _OnGetUserData(final UserData userData) = _$_OnGetUserData;

  UserData get userData;
  @JsonKey(ignore: true)
  _$$_OnGetUserDataCopyWith<_$_OnGetUserData> get copyWith =>
      throw _privateConstructorUsedError;
}
