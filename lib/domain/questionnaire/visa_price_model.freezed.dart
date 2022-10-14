// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'visa_price_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
      _$VisaPriceModelCopyWithImpl<$Res>;
  $Res call({int? usd});
}

/// @nodoc
class _$VisaPriceModelCopyWithImpl<$Res>
    implements $VisaPriceModelCopyWith<$Res> {
  _$VisaPriceModelCopyWithImpl(this._value, this._then);

  final VisaPriceModel _value;
  // ignore: unused_field
  final $Res Function(VisaPriceModel) _then;

  @override
  $Res call({
    Object? usd = freezed,
  }) {
    return _then(_value.copyWith(
      usd: usd == freezed
          ? _value.usd
          : usd // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$$_VisaPriceModelCopyWith<$Res>
    implements $VisaPriceModelCopyWith<$Res> {
  factory _$$_VisaPriceModelCopyWith(
          _$_VisaPriceModel value, $Res Function(_$_VisaPriceModel) then) =
      __$$_VisaPriceModelCopyWithImpl<$Res>;
  @override
  $Res call({int? usd});
}

/// @nodoc
class __$$_VisaPriceModelCopyWithImpl<$Res>
    extends _$VisaPriceModelCopyWithImpl<$Res>
    implements _$$_VisaPriceModelCopyWith<$Res> {
  __$$_VisaPriceModelCopyWithImpl(
      _$_VisaPriceModel _value, $Res Function(_$_VisaPriceModel) _then)
      : super(_value, (v) => _then(v as _$_VisaPriceModel));

  @override
  _$_VisaPriceModel get _value => super._value as _$_VisaPriceModel;

  @override
  $Res call({
    Object? usd = freezed,
  }) {
    return _then(_$_VisaPriceModel(
      usd: usd == freezed
          ? _value.usd
          : usd // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VisaPriceModel implements _VisaPriceModel {
  _$_VisaPriceModel({this.usd});

  factory _$_VisaPriceModel.fromJson(Map<String, dynamic> json) =>
      _$$_VisaPriceModelFromJson(json);

  @override
  final int? usd;

  @override
  String toString() {
    return 'VisaPriceModel(usd: $usd)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VisaPriceModel &&
            const DeepCollectionEquality().equals(other.usd, usd));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(usd));

  @JsonKey(ignore: true)
  @override
  _$$_VisaPriceModelCopyWith<_$_VisaPriceModel> get copyWith =>
      __$$_VisaPriceModelCopyWithImpl<_$_VisaPriceModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VisaPriceModelToJson(
      this,
    );
  }
}

abstract class _VisaPriceModel implements VisaPriceModel {
  factory _VisaPriceModel({final int? usd}) = _$_VisaPriceModel;

  factory _VisaPriceModel.fromJson(Map<String, dynamic> json) =
      _$_VisaPriceModel.fromJson;

  @override
  int? get usd;
  @override
  @JsonKey(ignore: true)
  _$$_VisaPriceModelCopyWith<_$_VisaPriceModel> get copyWith =>
      throw _privateConstructorUsedError;
}
