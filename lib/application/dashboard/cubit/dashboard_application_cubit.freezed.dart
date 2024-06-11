// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dashboard_application_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DashboardApplicationState {
  SimpleVisaModel get corporateApps => throw _privateConstructorUsedError;
  SimpleVisaModel get passportOrApps => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DashboardApplicationStateCopyWith<DashboardApplicationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardApplicationStateCopyWith<$Res> {
  factory $DashboardApplicationStateCopyWith(DashboardApplicationState value,
          $Res Function(DashboardApplicationState) then) =
      _$DashboardApplicationStateCopyWithImpl<$Res, DashboardApplicationState>;
  @useResult
  $Res call({SimpleVisaModel corporateApps, SimpleVisaModel passportOrApps});

  $SimpleVisaModelCopyWith<$Res> get corporateApps;
  $SimpleVisaModelCopyWith<$Res> get passportOrApps;
}

/// @nodoc
class _$DashboardApplicationStateCopyWithImpl<$Res,
        $Val extends DashboardApplicationState>
    implements $DashboardApplicationStateCopyWith<$Res> {
  _$DashboardApplicationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? corporateApps = null,
    Object? passportOrApps = null,
  }) {
    return _then(_value.copyWith(
      corporateApps: null == corporateApps
          ? _value.corporateApps
          : corporateApps // ignore: cast_nullable_to_non_nullable
              as SimpleVisaModel,
      passportOrApps: null == passportOrApps
          ? _value.passportOrApps
          : passportOrApps // ignore: cast_nullable_to_non_nullable
              as SimpleVisaModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SimpleVisaModelCopyWith<$Res> get corporateApps {
    return $SimpleVisaModelCopyWith<$Res>(_value.corporateApps, (value) {
      return _then(_value.copyWith(corporateApps: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SimpleVisaModelCopyWith<$Res> get passportOrApps {
    return $SimpleVisaModelCopyWith<$Res>(_value.passportOrApps, (value) {
      return _then(_value.copyWith(passportOrApps: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DashboardApplicationStateImplCopyWith<$Res>
    implements $DashboardApplicationStateCopyWith<$Res> {
  factory _$$DashboardApplicationStateImplCopyWith(
          _$DashboardApplicationStateImpl value,
          $Res Function(_$DashboardApplicationStateImpl) then) =
      __$$DashboardApplicationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SimpleVisaModel corporateApps, SimpleVisaModel passportOrApps});

  @override
  $SimpleVisaModelCopyWith<$Res> get corporateApps;
  @override
  $SimpleVisaModelCopyWith<$Res> get passportOrApps;
}

/// @nodoc
class __$$DashboardApplicationStateImplCopyWithImpl<$Res>
    extends _$DashboardApplicationStateCopyWithImpl<$Res,
        _$DashboardApplicationStateImpl>
    implements _$$DashboardApplicationStateImplCopyWith<$Res> {
  __$$DashboardApplicationStateImplCopyWithImpl(
      _$DashboardApplicationStateImpl _value,
      $Res Function(_$DashboardApplicationStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? corporateApps = null,
    Object? passportOrApps = null,
  }) {
    return _then(_$DashboardApplicationStateImpl(
      corporateApps: null == corporateApps
          ? _value.corporateApps
          : corporateApps // ignore: cast_nullable_to_non_nullable
              as SimpleVisaModel,
      passportOrApps: null == passportOrApps
          ? _value.passportOrApps
          : passportOrApps // ignore: cast_nullable_to_non_nullable
              as SimpleVisaModel,
    ));
  }
}

/// @nodoc

class _$DashboardApplicationStateImpl implements _DashboardApplicationState {
  _$DashboardApplicationStateImpl(
      {required this.corporateApps, required this.passportOrApps});

  @override
  final SimpleVisaModel corporateApps;
  @override
  final SimpleVisaModel passportOrApps;

  @override
  String toString() {
    return 'DashboardApplicationState(corporateApps: $corporateApps, passportOrApps: $passportOrApps)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DashboardApplicationStateImpl &&
            (identical(other.corporateApps, corporateApps) ||
                other.corporateApps == corporateApps) &&
            (identical(other.passportOrApps, passportOrApps) ||
                other.passportOrApps == passportOrApps));
  }

  @override
  int get hashCode => Object.hash(runtimeType, corporateApps, passportOrApps);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DashboardApplicationStateImplCopyWith<_$DashboardApplicationStateImpl>
      get copyWith => __$$DashboardApplicationStateImplCopyWithImpl<
          _$DashboardApplicationStateImpl>(this, _$identity);
}

abstract class _DashboardApplicationState implements DashboardApplicationState {
  factory _DashboardApplicationState(
          {required final SimpleVisaModel corporateApps,
          required final SimpleVisaModel passportOrApps}) =
      _$DashboardApplicationStateImpl;

  @override
  SimpleVisaModel get corporateApps;
  @override
  SimpleVisaModel get passportOrApps;
  @override
  @JsonKey(ignore: true)
  _$$DashboardApplicationStateImplCopyWith<_$DashboardApplicationStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
