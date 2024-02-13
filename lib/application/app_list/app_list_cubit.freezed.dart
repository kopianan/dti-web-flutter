// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_list_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppListState {
  AppListStatus get status => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  List<DataListModel> get apps => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppListStateCopyWith<AppListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppListStateCopyWith<$Res> {
  factory $AppListStateCopyWith(
          AppListState value, $Res Function(AppListState) then) =
      _$AppListStateCopyWithImpl<$Res, AppListState>;
  @useResult
  $Res call(
      {AppListStatus status, String? errorMessage, List<DataListModel> apps});
}

/// @nodoc
class _$AppListStateCopyWithImpl<$Res, $Val extends AppListState>
    implements $AppListStateCopyWith<$Res> {
  _$AppListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? errorMessage = freezed,
    Object? apps = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AppListStatus,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      apps: null == apps
          ? _value.apps
          : apps // ignore: cast_nullable_to_non_nullable
              as List<DataListModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppListStateImplCopyWith<$Res>
    implements $AppListStateCopyWith<$Res> {
  factory _$$AppListStateImplCopyWith(
          _$AppListStateImpl value, $Res Function(_$AppListStateImpl) then) =
      __$$AppListStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AppListStatus status, String? errorMessage, List<DataListModel> apps});
}

/// @nodoc
class __$$AppListStateImplCopyWithImpl<$Res>
    extends _$AppListStateCopyWithImpl<$Res, _$AppListStateImpl>
    implements _$$AppListStateImplCopyWith<$Res> {
  __$$AppListStateImplCopyWithImpl(
      _$AppListStateImpl _value, $Res Function(_$AppListStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? errorMessage = freezed,
    Object? apps = null,
  }) {
    return _then(_$AppListStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AppListStatus,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      apps: null == apps
          ? _value._apps
          : apps // ignore: cast_nullable_to_non_nullable
              as List<DataListModel>,
    ));
  }
}

/// @nodoc

class _$AppListStateImpl extends _AppListState {
  const _$AppListStateImpl(
      {required this.status,
      this.errorMessage,
      final List<DataListModel> apps = const []})
      : _apps = apps,
        super._();

  @override
  final AppListStatus status;
  @override
  final String? errorMessage;
  final List<DataListModel> _apps;
  @override
  @JsonKey()
  List<DataListModel> get apps {
    if (_apps is EqualUnmodifiableListView) return _apps;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_apps);
  }

  @override
  String toString() {
    return 'AppListState(status: $status, errorMessage: $errorMessage, apps: $apps)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppListStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            const DeepCollectionEquality().equals(other._apps, _apps));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, errorMessage,
      const DeepCollectionEquality().hash(_apps));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppListStateImplCopyWith<_$AppListStateImpl> get copyWith =>
      __$$AppListStateImplCopyWithImpl<_$AppListStateImpl>(this, _$identity);
}

abstract class _AppListState extends AppListState {
  const factory _AppListState(
      {required final AppListStatus status,
      final String? errorMessage,
      final List<DataListModel> apps}) = _$AppListStateImpl;
  const _AppListState._() : super._();

  @override
  AppListStatus get status;
  @override
  String? get errorMessage;
  @override
  List<DataListModel> get apps;
  @override
  @JsonKey(ignore: true)
  _$$AppListStateImplCopyWith<_$AppListStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
