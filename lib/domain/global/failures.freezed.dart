// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Failures {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() apiExpired,
    required TResult Function(String err) generalError,
    required TResult Function(String err) noData,
    required TResult Function(String err) timeOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? apiExpired,
    TResult Function(String err)? generalError,
    TResult Function(String err)? noData,
    TResult Function(String err)? timeOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? apiExpired,
    TResult Function(String err)? generalError,
    TResult Function(String err)? noData,
    TResult Function(String err)? timeOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_ApiExpired value) apiExpired,
    required TResult Function(_GeneralError value) generalError,
    required TResult Function(_NoData value) noData,
    required TResult Function(_TimeOut value) timeOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_ApiExpired value)? apiExpired,
    TResult Function(_GeneralError value)? generalError,
    TResult Function(_NoData value)? noData,
    TResult Function(_TimeOut value)? timeOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_ApiExpired value)? apiExpired,
    TResult Function(_GeneralError value)? generalError,
    TResult Function(_NoData value)? noData,
    TResult Function(_TimeOut value)? timeOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailuresCopyWith<$Res> {
  factory $FailuresCopyWith(Failures value, $Res Function(Failures) then) =
      _$FailuresCopyWithImpl<$Res>;
}

/// @nodoc
class _$FailuresCopyWithImpl<$Res> implements $FailuresCopyWith<$Res> {
  _$FailuresCopyWithImpl(this._value, this._then);

  final Failures _value;
  // ignore: unused_field
  final $Res Function(Failures) _then;
}

/// @nodoc
abstract class _$$_ServerErrorCopyWith<$Res> {
  factory _$$_ServerErrorCopyWith(
          _$_ServerError value, $Res Function(_$_ServerError) then) =
      __$$_ServerErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ServerErrorCopyWithImpl<$Res> extends _$FailuresCopyWithImpl<$Res>
    implements _$$_ServerErrorCopyWith<$Res> {
  __$$_ServerErrorCopyWithImpl(
      _$_ServerError _value, $Res Function(_$_ServerError) _then)
      : super(_value, (v) => _then(v as _$_ServerError));

  @override
  _$_ServerError get _value => super._value as _$_ServerError;
}

/// @nodoc

class _$_ServerError implements _ServerError {
  _$_ServerError();

  @override
  String toString() {
    return 'Failures.serverError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ServerError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() apiExpired,
    required TResult Function(String err) generalError,
    required TResult Function(String err) noData,
    required TResult Function(String err) timeOut,
  }) {
    return serverError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? apiExpired,
    TResult Function(String err)? generalError,
    TResult Function(String err)? noData,
    TResult Function(String err)? timeOut,
  }) {
    return serverError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? apiExpired,
    TResult Function(String err)? generalError,
    TResult Function(String err)? noData,
    TResult Function(String err)? timeOut,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_ApiExpired value) apiExpired,
    required TResult Function(_GeneralError value) generalError,
    required TResult Function(_NoData value) noData,
    required TResult Function(_TimeOut value) timeOut,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_ApiExpired value)? apiExpired,
    TResult Function(_GeneralError value)? generalError,
    TResult Function(_NoData value)? noData,
    TResult Function(_TimeOut value)? timeOut,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_ApiExpired value)? apiExpired,
    TResult Function(_GeneralError value)? generalError,
    TResult Function(_NoData value)? noData,
    TResult Function(_TimeOut value)? timeOut,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class _ServerError implements Failures {
  factory _ServerError() = _$_ServerError;
}

/// @nodoc
abstract class _$$_ApiExpiredCopyWith<$Res> {
  factory _$$_ApiExpiredCopyWith(
          _$_ApiExpired value, $Res Function(_$_ApiExpired) then) =
      __$$_ApiExpiredCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ApiExpiredCopyWithImpl<$Res> extends _$FailuresCopyWithImpl<$Res>
    implements _$$_ApiExpiredCopyWith<$Res> {
  __$$_ApiExpiredCopyWithImpl(
      _$_ApiExpired _value, $Res Function(_$_ApiExpired) _then)
      : super(_value, (v) => _then(v as _$_ApiExpired));

  @override
  _$_ApiExpired get _value => super._value as _$_ApiExpired;
}

/// @nodoc

class _$_ApiExpired implements _ApiExpired {
  _$_ApiExpired();

  @override
  String toString() {
    return 'Failures.apiExpired()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ApiExpired);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() apiExpired,
    required TResult Function(String err) generalError,
    required TResult Function(String err) noData,
    required TResult Function(String err) timeOut,
  }) {
    return apiExpired();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? apiExpired,
    TResult Function(String err)? generalError,
    TResult Function(String err)? noData,
    TResult Function(String err)? timeOut,
  }) {
    return apiExpired?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? apiExpired,
    TResult Function(String err)? generalError,
    TResult Function(String err)? noData,
    TResult Function(String err)? timeOut,
    required TResult orElse(),
  }) {
    if (apiExpired != null) {
      return apiExpired();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_ApiExpired value) apiExpired,
    required TResult Function(_GeneralError value) generalError,
    required TResult Function(_NoData value) noData,
    required TResult Function(_TimeOut value) timeOut,
  }) {
    return apiExpired(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_ApiExpired value)? apiExpired,
    TResult Function(_GeneralError value)? generalError,
    TResult Function(_NoData value)? noData,
    TResult Function(_TimeOut value)? timeOut,
  }) {
    return apiExpired?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_ApiExpired value)? apiExpired,
    TResult Function(_GeneralError value)? generalError,
    TResult Function(_NoData value)? noData,
    TResult Function(_TimeOut value)? timeOut,
    required TResult orElse(),
  }) {
    if (apiExpired != null) {
      return apiExpired(this);
    }
    return orElse();
  }
}

abstract class _ApiExpired implements Failures {
  factory _ApiExpired() = _$_ApiExpired;
}

/// @nodoc
abstract class _$$_GeneralErrorCopyWith<$Res> {
  factory _$$_GeneralErrorCopyWith(
          _$_GeneralError value, $Res Function(_$_GeneralError) then) =
      __$$_GeneralErrorCopyWithImpl<$Res>;
  $Res call({String err});
}

/// @nodoc
class __$$_GeneralErrorCopyWithImpl<$Res> extends _$FailuresCopyWithImpl<$Res>
    implements _$$_GeneralErrorCopyWith<$Res> {
  __$$_GeneralErrorCopyWithImpl(
      _$_GeneralError _value, $Res Function(_$_GeneralError) _then)
      : super(_value, (v) => _then(v as _$_GeneralError));

  @override
  _$_GeneralError get _value => super._value as _$_GeneralError;

  @override
  $Res call({
    Object? err = freezed,
  }) {
    return _then(_$_GeneralError(
      err == freezed
          ? _value.err
          : err // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GeneralError implements _GeneralError {
  _$_GeneralError(this.err);

  @override
  final String err;

  @override
  String toString() {
    return 'Failures.generalError(err: $err)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GeneralError &&
            const DeepCollectionEquality().equals(other.err, err));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(err));

  @JsonKey(ignore: true)
  @override
  _$$_GeneralErrorCopyWith<_$_GeneralError> get copyWith =>
      __$$_GeneralErrorCopyWithImpl<_$_GeneralError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() apiExpired,
    required TResult Function(String err) generalError,
    required TResult Function(String err) noData,
    required TResult Function(String err) timeOut,
  }) {
    return generalError(err);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? apiExpired,
    TResult Function(String err)? generalError,
    TResult Function(String err)? noData,
    TResult Function(String err)? timeOut,
  }) {
    return generalError?.call(err);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? apiExpired,
    TResult Function(String err)? generalError,
    TResult Function(String err)? noData,
    TResult Function(String err)? timeOut,
    required TResult orElse(),
  }) {
    if (generalError != null) {
      return generalError(err);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_ApiExpired value) apiExpired,
    required TResult Function(_GeneralError value) generalError,
    required TResult Function(_NoData value) noData,
    required TResult Function(_TimeOut value) timeOut,
  }) {
    return generalError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_ApiExpired value)? apiExpired,
    TResult Function(_GeneralError value)? generalError,
    TResult Function(_NoData value)? noData,
    TResult Function(_TimeOut value)? timeOut,
  }) {
    return generalError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_ApiExpired value)? apiExpired,
    TResult Function(_GeneralError value)? generalError,
    TResult Function(_NoData value)? noData,
    TResult Function(_TimeOut value)? timeOut,
    required TResult orElse(),
  }) {
    if (generalError != null) {
      return generalError(this);
    }
    return orElse();
  }
}

abstract class _GeneralError implements Failures {
  factory _GeneralError(final String err) = _$_GeneralError;

  String get err;
  @JsonKey(ignore: true)
  _$$_GeneralErrorCopyWith<_$_GeneralError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_NoDataCopyWith<$Res> {
  factory _$$_NoDataCopyWith(_$_NoData value, $Res Function(_$_NoData) then) =
      __$$_NoDataCopyWithImpl<$Res>;
  $Res call({String err});
}

/// @nodoc
class __$$_NoDataCopyWithImpl<$Res> extends _$FailuresCopyWithImpl<$Res>
    implements _$$_NoDataCopyWith<$Res> {
  __$$_NoDataCopyWithImpl(_$_NoData _value, $Res Function(_$_NoData) _then)
      : super(_value, (v) => _then(v as _$_NoData));

  @override
  _$_NoData get _value => super._value as _$_NoData;

  @override
  $Res call({
    Object? err = freezed,
  }) {
    return _then(_$_NoData(
      err == freezed
          ? _value.err
          : err // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_NoData implements _NoData {
  _$_NoData(this.err);

  @override
  final String err;

  @override
  String toString() {
    return 'Failures.noData(err: $err)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NoData &&
            const DeepCollectionEquality().equals(other.err, err));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(err));

  @JsonKey(ignore: true)
  @override
  _$$_NoDataCopyWith<_$_NoData> get copyWith =>
      __$$_NoDataCopyWithImpl<_$_NoData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() apiExpired,
    required TResult Function(String err) generalError,
    required TResult Function(String err) noData,
    required TResult Function(String err) timeOut,
  }) {
    return noData(err);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? apiExpired,
    TResult Function(String err)? generalError,
    TResult Function(String err)? noData,
    TResult Function(String err)? timeOut,
  }) {
    return noData?.call(err);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? apiExpired,
    TResult Function(String err)? generalError,
    TResult Function(String err)? noData,
    TResult Function(String err)? timeOut,
    required TResult orElse(),
  }) {
    if (noData != null) {
      return noData(err);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_ApiExpired value) apiExpired,
    required TResult Function(_GeneralError value) generalError,
    required TResult Function(_NoData value) noData,
    required TResult Function(_TimeOut value) timeOut,
  }) {
    return noData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_ApiExpired value)? apiExpired,
    TResult Function(_GeneralError value)? generalError,
    TResult Function(_NoData value)? noData,
    TResult Function(_TimeOut value)? timeOut,
  }) {
    return noData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_ApiExpired value)? apiExpired,
    TResult Function(_GeneralError value)? generalError,
    TResult Function(_NoData value)? noData,
    TResult Function(_TimeOut value)? timeOut,
    required TResult orElse(),
  }) {
    if (noData != null) {
      return noData(this);
    }
    return orElse();
  }
}

abstract class _NoData implements Failures {
  factory _NoData(final String err) = _$_NoData;

  String get err;
  @JsonKey(ignore: true)
  _$$_NoDataCopyWith<_$_NoData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_TimeOutCopyWith<$Res> {
  factory _$$_TimeOutCopyWith(
          _$_TimeOut value, $Res Function(_$_TimeOut) then) =
      __$$_TimeOutCopyWithImpl<$Res>;
  $Res call({String err});
}

/// @nodoc
class __$$_TimeOutCopyWithImpl<$Res> extends _$FailuresCopyWithImpl<$Res>
    implements _$$_TimeOutCopyWith<$Res> {
  __$$_TimeOutCopyWithImpl(_$_TimeOut _value, $Res Function(_$_TimeOut) _then)
      : super(_value, (v) => _then(v as _$_TimeOut));

  @override
  _$_TimeOut get _value => super._value as _$_TimeOut;

  @override
  $Res call({
    Object? err = freezed,
  }) {
    return _then(_$_TimeOut(
      err == freezed
          ? _value.err
          : err // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_TimeOut implements _TimeOut {
  _$_TimeOut(this.err);

  @override
  final String err;

  @override
  String toString() {
    return 'Failures.timeOut(err: $err)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TimeOut &&
            const DeepCollectionEquality().equals(other.err, err));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(err));

  @JsonKey(ignore: true)
  @override
  _$$_TimeOutCopyWith<_$_TimeOut> get copyWith =>
      __$$_TimeOutCopyWithImpl<_$_TimeOut>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() apiExpired,
    required TResult Function(String err) generalError,
    required TResult Function(String err) noData,
    required TResult Function(String err) timeOut,
  }) {
    return timeOut(err);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? apiExpired,
    TResult Function(String err)? generalError,
    TResult Function(String err)? noData,
    TResult Function(String err)? timeOut,
  }) {
    return timeOut?.call(err);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? apiExpired,
    TResult Function(String err)? generalError,
    TResult Function(String err)? noData,
    TResult Function(String err)? timeOut,
    required TResult orElse(),
  }) {
    if (timeOut != null) {
      return timeOut(err);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_ApiExpired value) apiExpired,
    required TResult Function(_GeneralError value) generalError,
    required TResult Function(_NoData value) noData,
    required TResult Function(_TimeOut value) timeOut,
  }) {
    return timeOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_ApiExpired value)? apiExpired,
    TResult Function(_GeneralError value)? generalError,
    TResult Function(_NoData value)? noData,
    TResult Function(_TimeOut value)? timeOut,
  }) {
    return timeOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_ApiExpired value)? apiExpired,
    TResult Function(_GeneralError value)? generalError,
    TResult Function(_NoData value)? noData,
    TResult Function(_TimeOut value)? timeOut,
    required TResult orElse(),
  }) {
    if (timeOut != null) {
      return timeOut(this);
    }
    return orElse();
  }
}

abstract class _TimeOut implements Failures {
  factory _TimeOut(final String err) = _$_TimeOut;

  String get err;
  @JsonKey(ignore: true)
  _$$_TimeOutCopyWith<_$_TimeOut> get copyWith =>
      throw _privateConstructorUsedError;
}
