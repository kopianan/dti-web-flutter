// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chart_filter_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChartFilterModel {
  String get name => throw _privateConstructorUsedError;
  int get totalDays => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;
  bool get active => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChartFilterModelCopyWith<ChartFilterModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChartFilterModelCopyWith<$Res> {
  factory $ChartFilterModelCopyWith(
          ChartFilterModel value, $Res Function(ChartFilterModel) then) =
      _$ChartFilterModelCopyWithImpl<$Res, ChartFilterModel>;
  @useResult
  $Res call({String name, int totalDays, String label, bool active});
}

/// @nodoc
class _$ChartFilterModelCopyWithImpl<$Res, $Val extends ChartFilterModel>
    implements $ChartFilterModelCopyWith<$Res> {
  _$ChartFilterModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? totalDays = null,
    Object? label = null,
    Object? active = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      totalDays: null == totalDays
          ? _value.totalDays
          : totalDays // ignore: cast_nullable_to_non_nullable
              as int,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChartFilterModelImplCopyWith<$Res>
    implements $ChartFilterModelCopyWith<$Res> {
  factory _$$ChartFilterModelImplCopyWith(_$ChartFilterModelImpl value,
          $Res Function(_$ChartFilterModelImpl) then) =
      __$$ChartFilterModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, int totalDays, String label, bool active});
}

/// @nodoc
class __$$ChartFilterModelImplCopyWithImpl<$Res>
    extends _$ChartFilterModelCopyWithImpl<$Res, _$ChartFilterModelImpl>
    implements _$$ChartFilterModelImplCopyWith<$Res> {
  __$$ChartFilterModelImplCopyWithImpl(_$ChartFilterModelImpl _value,
      $Res Function(_$ChartFilterModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? totalDays = null,
    Object? label = null,
    Object? active = null,
  }) {
    return _then(_$ChartFilterModelImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      totalDays: null == totalDays
          ? _value.totalDays
          : totalDays // ignore: cast_nullable_to_non_nullable
              as int,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ChartFilterModelImpl implements _ChartFilterModel {
  _$ChartFilterModelImpl(
      {required this.name,
      required this.totalDays,
      required this.label,
      required this.active});

  @override
  final String name;
  @override
  final int totalDays;
  @override
  final String label;
  @override
  final bool active;

  @override
  String toString() {
    return 'ChartFilterModel(name: $name, totalDays: $totalDays, label: $label, active: $active)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChartFilterModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.totalDays, totalDays) ||
                other.totalDays == totalDays) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.active, active) || other.active == active));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, totalDays, label, active);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChartFilterModelImplCopyWith<_$ChartFilterModelImpl> get copyWith =>
      __$$ChartFilterModelImplCopyWithImpl<_$ChartFilterModelImpl>(
          this, _$identity);
}

abstract class _ChartFilterModel implements ChartFilterModel {
  factory _ChartFilterModel(
      {required final String name,
      required final int totalDays,
      required final String label,
      required final bool active}) = _$ChartFilterModelImpl;

  @override
  String get name;
  @override
  int get totalDays;
  @override
  String get label;
  @override
  bool get active;
  @override
  @JsonKey(ignore: true)
  _$$ChartFilterModelImplCopyWith<_$ChartFilterModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
