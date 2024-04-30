// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dashboard_data_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DashboardDataState {
  SimpleVisaModel? get simpleVisal => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DashboardDataStateCopyWith<DashboardDataState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardDataStateCopyWith<$Res> {
  factory $DashboardDataStateCopyWith(
          DashboardDataState value, $Res Function(DashboardDataState) then) =
      _$DashboardDataStateCopyWithImpl<$Res, DashboardDataState>;
  @useResult
  $Res call({SimpleVisaModel? simpleVisal});

  $SimpleVisaModelCopyWith<$Res>? get simpleVisal;
}

/// @nodoc
class _$DashboardDataStateCopyWithImpl<$Res, $Val extends DashboardDataState>
    implements $DashboardDataStateCopyWith<$Res> {
  _$DashboardDataStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? simpleVisal = freezed,
  }) {
    return _then(_value.copyWith(
      simpleVisal: freezed == simpleVisal
          ? _value.simpleVisal
          : simpleVisal // ignore: cast_nullable_to_non_nullable
              as SimpleVisaModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SimpleVisaModelCopyWith<$Res>? get simpleVisal {
    if (_value.simpleVisal == null) {
      return null;
    }

    return $SimpleVisaModelCopyWith<$Res>(_value.simpleVisal!, (value) {
      return _then(_value.copyWith(simpleVisal: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DashboardDataStateImplCopyWith<$Res>
    implements $DashboardDataStateCopyWith<$Res> {
  factory _$$DashboardDataStateImplCopyWith(_$DashboardDataStateImpl value,
          $Res Function(_$DashboardDataStateImpl) then) =
      __$$DashboardDataStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SimpleVisaModel? simpleVisal});

  @override
  $SimpleVisaModelCopyWith<$Res>? get simpleVisal;
}

/// @nodoc
class __$$DashboardDataStateImplCopyWithImpl<$Res>
    extends _$DashboardDataStateCopyWithImpl<$Res, _$DashboardDataStateImpl>
    implements _$$DashboardDataStateImplCopyWith<$Res> {
  __$$DashboardDataStateImplCopyWithImpl(_$DashboardDataStateImpl _value,
      $Res Function(_$DashboardDataStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? simpleVisal = freezed,
  }) {
    return _then(_$DashboardDataStateImpl(
      simpleVisal: freezed == simpleVisal
          ? _value.simpleVisal
          : simpleVisal // ignore: cast_nullable_to_non_nullable
              as SimpleVisaModel?,
    ));
  }
}

/// @nodoc

class _$DashboardDataStateImpl extends _DashboardDataState {
  const _$DashboardDataStateImpl({this.simpleVisal}) : super._();

  @override
  final SimpleVisaModel? simpleVisal;

  @override
  String toString() {
    return 'DashboardDataState(simpleVisal: $simpleVisal)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DashboardDataStateImpl &&
            (identical(other.simpleVisal, simpleVisal) ||
                other.simpleVisal == simpleVisal));
  }

  @override
  int get hashCode => Object.hash(runtimeType, simpleVisal);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DashboardDataStateImplCopyWith<_$DashboardDataStateImpl> get copyWith =>
      __$$DashboardDataStateImplCopyWithImpl<_$DashboardDataStateImpl>(
          this, _$identity);
}

abstract class _DashboardDataState extends DashboardDataState {
  const factory _DashboardDataState({final SimpleVisaModel? simpleVisal}) =
      _$DashboardDataStateImpl;
  const _DashboardDataState._() : super._();

  @override
  SimpleVisaModel? get simpleVisal;
  @override
  @JsonKey(ignore: true)
  _$$DashboardDataStateImplCopyWith<_$DashboardDataStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
