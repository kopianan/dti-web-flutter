// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'payment_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PaymentState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String? errorMessage) onError,
    required TResult Function() onLoading,
    required TResult Function(String url) onGetPaymentUrl,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String? errorMessage)? onError,
    TResult Function()? onLoading,
    TResult Function(String url)? onGetPaymentUrl,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String? errorMessage)? onError,
    TResult Function()? onLoading,
    TResult Function(String url)? onGetPaymentUrl,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_OnError value) onError,
    required TResult Function(_OnLoading value) onLoading,
    required TResult Function(_OnGetPaymentUrl value) onGetPaymentUrl,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OnError value)? onError,
    TResult Function(_OnLoading value)? onLoading,
    TResult Function(_OnGetPaymentUrl value)? onGetPaymentUrl,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OnError value)? onError,
    TResult Function(_OnLoading value)? onLoading,
    TResult Function(_OnGetPaymentUrl value)? onGetPaymentUrl,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentStateCopyWith<$Res> {
  factory $PaymentStateCopyWith(
          PaymentState value, $Res Function(PaymentState) then) =
      _$PaymentStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$PaymentStateCopyWithImpl<$Res> implements $PaymentStateCopyWith<$Res> {
  _$PaymentStateCopyWithImpl(this._value, this._then);

  final PaymentState _value;
  // ignore: unused_field
  final $Res Function(PaymentState) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res> extends _$PaymentStateCopyWithImpl<$Res>
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
    return 'PaymentState.initial()';
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
    required TResult Function(String? errorMessage) onError,
    required TResult Function() onLoading,
    required TResult Function(String url) onGetPaymentUrl,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String? errorMessage)? onError,
    TResult Function()? onLoading,
    TResult Function(String url)? onGetPaymentUrl,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String? errorMessage)? onError,
    TResult Function()? onLoading,
    TResult Function(String url)? onGetPaymentUrl,
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
    required TResult Function(_OnError value) onError,
    required TResult Function(_OnLoading value) onLoading,
    required TResult Function(_OnGetPaymentUrl value) onGetPaymentUrl,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OnError value)? onError,
    TResult Function(_OnLoading value)? onLoading,
    TResult Function(_OnGetPaymentUrl value)? onGetPaymentUrl,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OnError value)? onError,
    TResult Function(_OnLoading value)? onLoading,
    TResult Function(_OnGetPaymentUrl value)? onGetPaymentUrl,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements PaymentState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_OnErrorCopyWith<$Res> {
  factory _$$_OnErrorCopyWith(
          _$_OnError value, $Res Function(_$_OnError) then) =
      __$$_OnErrorCopyWithImpl<$Res>;
  $Res call({String? errorMessage});
}

/// @nodoc
class __$$_OnErrorCopyWithImpl<$Res> extends _$PaymentStateCopyWithImpl<$Res>
    implements _$$_OnErrorCopyWith<$Res> {
  __$$_OnErrorCopyWithImpl(_$_OnError _value, $Res Function(_$_OnError) _then)
      : super(_value, (v) => _then(v as _$_OnError));

  @override
  _$_OnError get _value => super._value as _$_OnError;

  @override
  $Res call({
    Object? errorMessage = freezed,
  }) {
    return _then(_$_OnError(
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_OnError implements _OnError {
  const _$_OnError({this.errorMessage});

  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'PaymentState.onError(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OnError &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(errorMessage));

  @JsonKey(ignore: true)
  @override
  _$$_OnErrorCopyWith<_$_OnError> get copyWith =>
      __$$_OnErrorCopyWithImpl<_$_OnError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String? errorMessage) onError,
    required TResult Function() onLoading,
    required TResult Function(String url) onGetPaymentUrl,
  }) {
    return onError(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String? errorMessage)? onError,
    TResult Function()? onLoading,
    TResult Function(String url)? onGetPaymentUrl,
  }) {
    return onError?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String? errorMessage)? onError,
    TResult Function()? onLoading,
    TResult Function(String url)? onGetPaymentUrl,
    required TResult orElse(),
  }) {
    if (onError != null) {
      return onError(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_OnError value) onError,
    required TResult Function(_OnLoading value) onLoading,
    required TResult Function(_OnGetPaymentUrl value) onGetPaymentUrl,
  }) {
    return onError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OnError value)? onError,
    TResult Function(_OnLoading value)? onLoading,
    TResult Function(_OnGetPaymentUrl value)? onGetPaymentUrl,
  }) {
    return onError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OnError value)? onError,
    TResult Function(_OnLoading value)? onLoading,
    TResult Function(_OnGetPaymentUrl value)? onGetPaymentUrl,
    required TResult orElse(),
  }) {
    if (onError != null) {
      return onError(this);
    }
    return orElse();
  }
}

abstract class _OnError implements PaymentState {
  const factory _OnError({final String? errorMessage}) = _$_OnError;

  String? get errorMessage;
  @JsonKey(ignore: true)
  _$$_OnErrorCopyWith<_$_OnError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_OnLoadingCopyWith<$Res> {
  factory _$$_OnLoadingCopyWith(
          _$_OnLoading value, $Res Function(_$_OnLoading) then) =
      __$$_OnLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_OnLoadingCopyWithImpl<$Res> extends _$PaymentStateCopyWithImpl<$Res>
    implements _$$_OnLoadingCopyWith<$Res> {
  __$$_OnLoadingCopyWithImpl(
      _$_OnLoading _value, $Res Function(_$_OnLoading) _then)
      : super(_value, (v) => _then(v as _$_OnLoading));

  @override
  _$_OnLoading get _value => super._value as _$_OnLoading;
}

/// @nodoc

class _$_OnLoading implements _OnLoading {
  const _$_OnLoading();

  @override
  String toString() {
    return 'PaymentState.onLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_OnLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String? errorMessage) onError,
    required TResult Function() onLoading,
    required TResult Function(String url) onGetPaymentUrl,
  }) {
    return onLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String? errorMessage)? onError,
    TResult Function()? onLoading,
    TResult Function(String url)? onGetPaymentUrl,
  }) {
    return onLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String? errorMessage)? onError,
    TResult Function()? onLoading,
    TResult Function(String url)? onGetPaymentUrl,
    required TResult orElse(),
  }) {
    if (onLoading != null) {
      return onLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_OnError value) onError,
    required TResult Function(_OnLoading value) onLoading,
    required TResult Function(_OnGetPaymentUrl value) onGetPaymentUrl,
  }) {
    return onLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OnError value)? onError,
    TResult Function(_OnLoading value)? onLoading,
    TResult Function(_OnGetPaymentUrl value)? onGetPaymentUrl,
  }) {
    return onLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OnError value)? onError,
    TResult Function(_OnLoading value)? onLoading,
    TResult Function(_OnGetPaymentUrl value)? onGetPaymentUrl,
    required TResult orElse(),
  }) {
    if (onLoading != null) {
      return onLoading(this);
    }
    return orElse();
  }
}

abstract class _OnLoading implements PaymentState {
  const factory _OnLoading() = _$_OnLoading;
}

/// @nodoc
abstract class _$$_OnGetPaymentUrlCopyWith<$Res> {
  factory _$$_OnGetPaymentUrlCopyWith(
          _$_OnGetPaymentUrl value, $Res Function(_$_OnGetPaymentUrl) then) =
      __$$_OnGetPaymentUrlCopyWithImpl<$Res>;
  $Res call({String url});
}

/// @nodoc
class __$$_OnGetPaymentUrlCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res>
    implements _$$_OnGetPaymentUrlCopyWith<$Res> {
  __$$_OnGetPaymentUrlCopyWithImpl(
      _$_OnGetPaymentUrl _value, $Res Function(_$_OnGetPaymentUrl) _then)
      : super(_value, (v) => _then(v as _$_OnGetPaymentUrl));

  @override
  _$_OnGetPaymentUrl get _value => super._value as _$_OnGetPaymentUrl;

  @override
  $Res call({
    Object? url = freezed,
  }) {
    return _then(_$_OnGetPaymentUrl(
      url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_OnGetPaymentUrl implements _OnGetPaymentUrl {
  const _$_OnGetPaymentUrl(this.url);

  @override
  final String url;

  @override
  String toString() {
    return 'PaymentState.onGetPaymentUrl(url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OnGetPaymentUrl &&
            const DeepCollectionEquality().equals(other.url, url));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(url));

  @JsonKey(ignore: true)
  @override
  _$$_OnGetPaymentUrlCopyWith<_$_OnGetPaymentUrl> get copyWith =>
      __$$_OnGetPaymentUrlCopyWithImpl<_$_OnGetPaymentUrl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String? errorMessage) onError,
    required TResult Function() onLoading,
    required TResult Function(String url) onGetPaymentUrl,
  }) {
    return onGetPaymentUrl(url);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String? errorMessage)? onError,
    TResult Function()? onLoading,
    TResult Function(String url)? onGetPaymentUrl,
  }) {
    return onGetPaymentUrl?.call(url);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String? errorMessage)? onError,
    TResult Function()? onLoading,
    TResult Function(String url)? onGetPaymentUrl,
    required TResult orElse(),
  }) {
    if (onGetPaymentUrl != null) {
      return onGetPaymentUrl(url);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_OnError value) onError,
    required TResult Function(_OnLoading value) onLoading,
    required TResult Function(_OnGetPaymentUrl value) onGetPaymentUrl,
  }) {
    return onGetPaymentUrl(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OnError value)? onError,
    TResult Function(_OnLoading value)? onLoading,
    TResult Function(_OnGetPaymentUrl value)? onGetPaymentUrl,
  }) {
    return onGetPaymentUrl?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OnError value)? onError,
    TResult Function(_OnLoading value)? onLoading,
    TResult Function(_OnGetPaymentUrl value)? onGetPaymentUrl,
    required TResult orElse(),
  }) {
    if (onGetPaymentUrl != null) {
      return onGetPaymentUrl(this);
    }
    return orElse();
  }
}

abstract class _OnGetPaymentUrl implements PaymentState {
  const factory _OnGetPaymentUrl(final String url) = _$_OnGetPaymentUrl;

  String get url;
  @JsonKey(ignore: true)
  _$$_OnGetPaymentUrlCopyWith<_$_OnGetPaymentUrl> get copyWith =>
      throw _privateConstructorUsedError;
}
