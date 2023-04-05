// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'app_list_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() onLoading,
    required TResult Function(String errMsg) onError,
    required TResult Function(List<SimpleVisaModel> apps) onGetUsersApplication,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? onLoading,
    TResult Function(String errMsg)? onError,
    TResult Function(List<SimpleVisaModel> apps)? onGetUsersApplication,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? onLoading,
    TResult Function(String errMsg)? onError,
    TResult Function(List<SimpleVisaModel> apps)? onGetUsersApplication,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_OnLoading value) onLoading,
    required TResult Function(_OnError value) onError,
    required TResult Function(_OnGetUsersApplication value)
        onGetUsersApplication,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OnLoading value)? onLoading,
    TResult Function(_OnError value)? onError,
    TResult Function(_OnGetUsersApplication value)? onGetUsersApplication,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OnLoading value)? onLoading,
    TResult Function(_OnError value)? onError,
    TResult Function(_OnGetUsersApplication value)? onGetUsersApplication,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppListStateCopyWith<$Res> {
  factory $AppListStateCopyWith(
          AppListState value, $Res Function(AppListState) then) =
      _$AppListStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AppListStateCopyWithImpl<$Res> implements $AppListStateCopyWith<$Res> {
  _$AppListStateCopyWithImpl(this._value, this._then);

  final AppListState _value;
  // ignore: unused_field
  final $Res Function(AppListState) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res> extends _$AppListStateCopyWithImpl<$Res>
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
    return 'AppListState.initial()';
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
    required TResult Function() onLoading,
    required TResult Function(String errMsg) onError,
    required TResult Function(List<SimpleVisaModel> apps) onGetUsersApplication,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? onLoading,
    TResult Function(String errMsg)? onError,
    TResult Function(List<SimpleVisaModel> apps)? onGetUsersApplication,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? onLoading,
    TResult Function(String errMsg)? onError,
    TResult Function(List<SimpleVisaModel> apps)? onGetUsersApplication,
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
    required TResult Function(_OnLoading value) onLoading,
    required TResult Function(_OnError value) onError,
    required TResult Function(_OnGetUsersApplication value)
        onGetUsersApplication,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OnLoading value)? onLoading,
    TResult Function(_OnError value)? onError,
    TResult Function(_OnGetUsersApplication value)? onGetUsersApplication,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OnLoading value)? onLoading,
    TResult Function(_OnError value)? onError,
    TResult Function(_OnGetUsersApplication value)? onGetUsersApplication,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AppListState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_OnLoadingCopyWith<$Res> {
  factory _$$_OnLoadingCopyWith(
          _$_OnLoading value, $Res Function(_$_OnLoading) then) =
      __$$_OnLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_OnLoadingCopyWithImpl<$Res> extends _$AppListStateCopyWithImpl<$Res>
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
    return 'AppListState.onLoading()';
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
    required TResult Function() onLoading,
    required TResult Function(String errMsg) onError,
    required TResult Function(List<SimpleVisaModel> apps) onGetUsersApplication,
  }) {
    return onLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? onLoading,
    TResult Function(String errMsg)? onError,
    TResult Function(List<SimpleVisaModel> apps)? onGetUsersApplication,
  }) {
    return onLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? onLoading,
    TResult Function(String errMsg)? onError,
    TResult Function(List<SimpleVisaModel> apps)? onGetUsersApplication,
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
    required TResult Function(_OnLoading value) onLoading,
    required TResult Function(_OnError value) onError,
    required TResult Function(_OnGetUsersApplication value)
        onGetUsersApplication,
  }) {
    return onLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OnLoading value)? onLoading,
    TResult Function(_OnError value)? onError,
    TResult Function(_OnGetUsersApplication value)? onGetUsersApplication,
  }) {
    return onLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OnLoading value)? onLoading,
    TResult Function(_OnError value)? onError,
    TResult Function(_OnGetUsersApplication value)? onGetUsersApplication,
    required TResult orElse(),
  }) {
    if (onLoading != null) {
      return onLoading(this);
    }
    return orElse();
  }
}

abstract class _OnLoading implements AppListState {
  const factory _OnLoading() = _$_OnLoading;
}

/// @nodoc
abstract class _$$_OnErrorCopyWith<$Res> {
  factory _$$_OnErrorCopyWith(
          _$_OnError value, $Res Function(_$_OnError) then) =
      __$$_OnErrorCopyWithImpl<$Res>;
  $Res call({String errMsg});
}

/// @nodoc
class __$$_OnErrorCopyWithImpl<$Res> extends _$AppListStateCopyWithImpl<$Res>
    implements _$$_OnErrorCopyWith<$Res> {
  __$$_OnErrorCopyWithImpl(_$_OnError _value, $Res Function(_$_OnError) _then)
      : super(_value, (v) => _then(v as _$_OnError));

  @override
  _$_OnError get _value => super._value as _$_OnError;

  @override
  $Res call({
    Object? errMsg = freezed,
  }) {
    return _then(_$_OnError(
      errMsg == freezed
          ? _value.errMsg
          : errMsg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_OnError implements _OnError {
  const _$_OnError(this.errMsg);

  @override
  final String errMsg;

  @override
  String toString() {
    return 'AppListState.onError(errMsg: $errMsg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OnError &&
            const DeepCollectionEquality().equals(other.errMsg, errMsg));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(errMsg));

  @JsonKey(ignore: true)
  @override
  _$$_OnErrorCopyWith<_$_OnError> get copyWith =>
      __$$_OnErrorCopyWithImpl<_$_OnError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() onLoading,
    required TResult Function(String errMsg) onError,
    required TResult Function(List<SimpleVisaModel> apps) onGetUsersApplication,
  }) {
    return onError(errMsg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? onLoading,
    TResult Function(String errMsg)? onError,
    TResult Function(List<SimpleVisaModel> apps)? onGetUsersApplication,
  }) {
    return onError?.call(errMsg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? onLoading,
    TResult Function(String errMsg)? onError,
    TResult Function(List<SimpleVisaModel> apps)? onGetUsersApplication,
    required TResult orElse(),
  }) {
    if (onError != null) {
      return onError(errMsg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_OnLoading value) onLoading,
    required TResult Function(_OnError value) onError,
    required TResult Function(_OnGetUsersApplication value)
        onGetUsersApplication,
  }) {
    return onError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OnLoading value)? onLoading,
    TResult Function(_OnError value)? onError,
    TResult Function(_OnGetUsersApplication value)? onGetUsersApplication,
  }) {
    return onError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OnLoading value)? onLoading,
    TResult Function(_OnError value)? onError,
    TResult Function(_OnGetUsersApplication value)? onGetUsersApplication,
    required TResult orElse(),
  }) {
    if (onError != null) {
      return onError(this);
    }
    return orElse();
  }
}

abstract class _OnError implements AppListState {
  const factory _OnError(final String errMsg) = _$_OnError;

  String get errMsg;
  @JsonKey(ignore: true)
  _$$_OnErrorCopyWith<_$_OnError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_OnGetUsersApplicationCopyWith<$Res> {
  factory _$$_OnGetUsersApplicationCopyWith(_$_OnGetUsersApplication value,
          $Res Function(_$_OnGetUsersApplication) then) =
      __$$_OnGetUsersApplicationCopyWithImpl<$Res>;
  $Res call({List<SimpleVisaModel> apps});
}

/// @nodoc
class __$$_OnGetUsersApplicationCopyWithImpl<$Res>
    extends _$AppListStateCopyWithImpl<$Res>
    implements _$$_OnGetUsersApplicationCopyWith<$Res> {
  __$$_OnGetUsersApplicationCopyWithImpl(_$_OnGetUsersApplication _value,
      $Res Function(_$_OnGetUsersApplication) _then)
      : super(_value, (v) => _then(v as _$_OnGetUsersApplication));

  @override
  _$_OnGetUsersApplication get _value =>
      super._value as _$_OnGetUsersApplication;

  @override
  $Res call({
    Object? apps = freezed,
  }) {
    return _then(_$_OnGetUsersApplication(
      apps == freezed
          ? _value._apps
          : apps // ignore: cast_nullable_to_non_nullable
              as List<SimpleVisaModel>,
    ));
  }
}

/// @nodoc

class _$_OnGetUsersApplication implements _OnGetUsersApplication {
  const _$_OnGetUsersApplication(final List<SimpleVisaModel> apps)
      : _apps = apps;

  final List<SimpleVisaModel> _apps;
  @override
  List<SimpleVisaModel> get apps {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_apps);
  }

  @override
  String toString() {
    return 'AppListState.onGetUsersApplication(apps: $apps)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OnGetUsersApplication &&
            const DeepCollectionEquality().equals(other._apps, _apps));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_apps));

  @JsonKey(ignore: true)
  @override
  _$$_OnGetUsersApplicationCopyWith<_$_OnGetUsersApplication> get copyWith =>
      __$$_OnGetUsersApplicationCopyWithImpl<_$_OnGetUsersApplication>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() onLoading,
    required TResult Function(String errMsg) onError,
    required TResult Function(List<SimpleVisaModel> apps) onGetUsersApplication,
  }) {
    return onGetUsersApplication(apps);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? onLoading,
    TResult Function(String errMsg)? onError,
    TResult Function(List<SimpleVisaModel> apps)? onGetUsersApplication,
  }) {
    return onGetUsersApplication?.call(apps);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? onLoading,
    TResult Function(String errMsg)? onError,
    TResult Function(List<SimpleVisaModel> apps)? onGetUsersApplication,
    required TResult orElse(),
  }) {
    if (onGetUsersApplication != null) {
      return onGetUsersApplication(apps);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_OnLoading value) onLoading,
    required TResult Function(_OnError value) onError,
    required TResult Function(_OnGetUsersApplication value)
        onGetUsersApplication,
  }) {
    return onGetUsersApplication(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OnLoading value)? onLoading,
    TResult Function(_OnError value)? onError,
    TResult Function(_OnGetUsersApplication value)? onGetUsersApplication,
  }) {
    return onGetUsersApplication?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OnLoading value)? onLoading,
    TResult Function(_OnError value)? onError,
    TResult Function(_OnGetUsersApplication value)? onGetUsersApplication,
    required TResult orElse(),
  }) {
    if (onGetUsersApplication != null) {
      return onGetUsersApplication(this);
    }
    return orElse();
  }
}

abstract class _OnGetUsersApplication implements AppListState {
  const factory _OnGetUsersApplication(final List<SimpleVisaModel> apps) =
      _$_OnGetUsersApplication;

  List<SimpleVisaModel> get apps;
  @JsonKey(ignore: true)
  _$$_OnGetUsersApplicationCopyWith<_$_OnGetUsersApplication> get copyWith =>
      throw _privateConstructorUsedError;
}
