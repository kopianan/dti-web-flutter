// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'visa_price_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VisaPriceModel _$VisaPriceModelFromJson(Map<String, dynamic> json) {
  return _VisaPriceModel.fromJson(json);
}

/// @nodoc
mixin _$VisaPriceModel {
  int? get usd => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VisaPriceModelCopyWith<VisaPriceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VisaPriceModelCopyWith<$Res> {
  factory $VisaPriceModelCopyWith(
          VisaPriceModel value, $Res Function(VisaPriceModel) then) =
      _$VisaPriceModelCopyWithImpl<$Res, VisaPriceModel>;
  @useResult
  $Res call({int? usd});
}

/// @nodoc
class _$VisaPriceModelCopyWithImpl<$Res, $Val extends VisaPriceModel>
    implements $VisaPriceModelCopyWith<$Res> {
  _$VisaPriceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? usd = freezed,
  }) {
    return _then(_value.copyWith(
      usd: freezed == usd
          ? _value.usd
          : usd // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VisaPriceModelImplCopyWith<$Res>
    implements $VisaPriceModelCopyWith<$Res> {
  factory _$$VisaPriceModelImplCopyWith(_$VisaPriceModelImpl value,
          $Res Function(_$VisaPriceModelImpl) then) =
      __$$VisaPriceModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? usd});
}

/// @nodoc
class __$$VisaPriceModelImplCopyWithImpl<$Res>
    extends _$VisaPriceModelCopyWithImpl<$Res, _$VisaPriceModelImpl>
    implements _$$VisaPriceModelImplCopyWith<$Res> {
  __$$VisaPriceModelImplCopyWithImpl(
      _$VisaPriceModelImpl _value, $Res Function(_$VisaPriceModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? usd = freezed,
  }) {
    return _then(_$VisaPriceModelImpl(
      usd: freezed == usd
          ? _value.usd
          : usd // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VisaPriceModelImpl implements _VisaPriceModel {
  _$VisaPriceModelImpl({this.usd});

  factory _$VisaPriceModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$VisaPriceModelImplFromJson(json);

  @override
  final int? usd;

  @override
  String toString() {
    return 'VisaPriceModel(usd: $usd)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VisaPriceModelImpl &&
            (identical(other.usd, usd) || other.usd == usd));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, usd);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VisaPriceModelImplCopyWith<_$VisaPriceModelImpl> get copyWith =>
      __$$VisaPriceModelImplCopyWithImpl<_$VisaPriceModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VisaPriceModelImplToJson(
      this,
    );
  }
}

abstract class _VisaPriceModel implements VisaPriceModel {
  factory _VisaPriceModel({final int? usd}) = _$VisaPriceModelImpl;

  factory _VisaPriceModel.fromJson(Map<String, dynamic> json) =
      _$VisaPriceModelImpl.fromJson;

  @override
  int? get usd;
  @override
  @JsonKey(ignore: true)
  _$$VisaPriceModelImplCopyWith<_$VisaPriceModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
