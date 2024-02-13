// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PaymentState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failures errorMessage) onError,
    required TResult Function() onLoading,
    required TResult Function(String url) onGetPaymentUrl,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failures errorMessage)? onError,
    TResult? Function()? onLoading,
    TResult? Function(String url)? onGetPaymentUrl,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failures errorMessage)? onError,
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
    TResult? Function(_Initial value)? initial,
    TResult? Function(_OnError value)? onError,
    TResult? Function(_OnLoading value)? onLoading,
    TResult? Function(_OnGetPaymentUrl value)? onGetPaymentUrl,
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
      _$PaymentStateCopyWithImpl<$Res, PaymentState>;
}

/// @nodoc
class _$PaymentStateCopyWithImpl<$Res, $Val extends PaymentState>
    implements $PaymentStateCopyWith<$Res> {
  _$PaymentStateCopyWithImpl(this._value, this._then);

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
    extends _$PaymentStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'PaymentState.initial()';
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
    required TResult Function(Failures errorMessage) onError,
    required TResult Function() onLoading,
    required TResult Function(String url) onGetPaymentUrl,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failures errorMessage)? onError,
    TResult? Function()? onLoading,
    TResult? Function(String url)? onGetPaymentUrl,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failures errorMessage)? onError,
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
    TResult? Function(_Initial value)? initial,
    TResult? Function(_OnError value)? onError,
    TResult? Function(_OnLoading value)? onLoading,
    TResult? Function(_OnGetPaymentUrl value)? onGetPaymentUrl,
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
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$OnErrorImplCopyWith<$Res> {
  factory _$$OnErrorImplCopyWith(
          _$OnErrorImpl value, $Res Function(_$OnErrorImpl) then) =
      __$$OnErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failures errorMessage});

  $FailuresCopyWith<$Res> get errorMessage;
}

/// @nodoc
class __$$OnErrorImplCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res, _$OnErrorImpl>
    implements _$$OnErrorImplCopyWith<$Res> {
  __$$OnErrorImplCopyWithImpl(
      _$OnErrorImpl _value, $Res Function(_$OnErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$OnErrorImpl(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as Failures,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $FailuresCopyWith<$Res> get errorMessage {
    return $FailuresCopyWith<$Res>(_value.errorMessage, (value) {
      return _then(_value.copyWith(errorMessage: value));
    });
  }
}

/// @nodoc

class _$OnErrorImpl implements _OnError {
  const _$OnErrorImpl(this.errorMessage);

  @override
  final Failures errorMessage;

  @override
  String toString() {
    return 'PaymentState.onError(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnErrorImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnErrorImplCopyWith<_$OnErrorImpl> get copyWith =>
      __$$OnErrorImplCopyWithImpl<_$OnErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failures errorMessage) onError,
    required TResult Function() onLoading,
    required TResult Function(String url) onGetPaymentUrl,
  }) {
    return onError(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failures errorMessage)? onError,
    TResult? Function()? onLoading,
    TResult? Function(String url)? onGetPaymentUrl,
  }) {
    return onError?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failures errorMessage)? onError,
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
    TResult? Function(_Initial value)? initial,
    TResult? Function(_OnError value)? onError,
    TResult? Function(_OnLoading value)? onLoading,
    TResult? Function(_OnGetPaymentUrl value)? onGetPaymentUrl,
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
  const factory _OnError(final Failures errorMessage) = _$OnErrorImpl;

  Failures get errorMessage;
  @JsonKey(ignore: true)
  _$$OnErrorImplCopyWith<_$OnErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnLoadingImplCopyWith<$Res> {
  factory _$$OnLoadingImplCopyWith(
          _$OnLoadingImpl value, $Res Function(_$OnLoadingImpl) then) =
      __$$OnLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnLoadingImplCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res, _$OnLoadingImpl>
    implements _$$OnLoadingImplCopyWith<$Res> {
  __$$OnLoadingImplCopyWithImpl(
      _$OnLoadingImpl _value, $Res Function(_$OnLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OnLoadingImpl implements _OnLoading {
  const _$OnLoadingImpl();

  @override
  String toString() {
    return 'PaymentState.onLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failures errorMessage) onError,
    required TResult Function() onLoading,
    required TResult Function(String url) onGetPaymentUrl,
  }) {
    return onLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failures errorMessage)? onError,
    TResult? Function()? onLoading,
    TResult? Function(String url)? onGetPaymentUrl,
  }) {
    return onLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failures errorMessage)? onError,
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
    TResult? Function(_Initial value)? initial,
    TResult? Function(_OnError value)? onError,
    TResult? Function(_OnLoading value)? onLoading,
    TResult? Function(_OnGetPaymentUrl value)? onGetPaymentUrl,
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
  const factory _OnLoading() = _$OnLoadingImpl;
}

/// @nodoc
abstract class _$$OnGetPaymentUrlImplCopyWith<$Res> {
  factory _$$OnGetPaymentUrlImplCopyWith(_$OnGetPaymentUrlImpl value,
          $Res Function(_$OnGetPaymentUrlImpl) then) =
      __$$OnGetPaymentUrlImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String url});
}

/// @nodoc
class __$$OnGetPaymentUrlImplCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res, _$OnGetPaymentUrlImpl>
    implements _$$OnGetPaymentUrlImplCopyWith<$Res> {
  __$$OnGetPaymentUrlImplCopyWithImpl(
      _$OnGetPaymentUrlImpl _value, $Res Function(_$OnGetPaymentUrlImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
  }) {
    return _then(_$OnGetPaymentUrlImpl(
      null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OnGetPaymentUrlImpl implements _OnGetPaymentUrl {
  const _$OnGetPaymentUrlImpl(this.url);

  @override
  final String url;

  @override
  String toString() {
    return 'PaymentState.onGetPaymentUrl(url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnGetPaymentUrlImpl &&
            (identical(other.url, url) || other.url == url));
  }

  @override
  int get hashCode => Object.hash(runtimeType, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnGetPaymentUrlImplCopyWith<_$OnGetPaymentUrlImpl> get copyWith =>
      __$$OnGetPaymentUrlImplCopyWithImpl<_$OnGetPaymentUrlImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failures errorMessage) onError,
    required TResult Function() onLoading,
    required TResult Function(String url) onGetPaymentUrl,
  }) {
    return onGetPaymentUrl(url);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failures errorMessage)? onError,
    TResult? Function()? onLoading,
    TResult? Function(String url)? onGetPaymentUrl,
  }) {
    return onGetPaymentUrl?.call(url);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failures errorMessage)? onError,
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
    TResult? Function(_Initial value)? initial,
    TResult? Function(_OnError value)? onError,
    TResult? Function(_OnLoading value)? onLoading,
    TResult? Function(_OnGetPaymentUrl value)? onGetPaymentUrl,
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
  const factory _OnGetPaymentUrl(final String url) = _$OnGetPaymentUrlImpl;

  String get url;
  @JsonKey(ignore: true)
  _$$OnGetPaymentUrlImplCopyWith<_$OnGetPaymentUrlImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
