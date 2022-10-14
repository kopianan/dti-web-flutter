// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'assitance_for_permit_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AssitanceForPermitModel _$AssitanceForPermitModelFromJson(
    Map<String, dynamic> json) {
  return _AssitanceForPermitModel.fromJson(json);
}

/// @nodoc
mixin _$AssitanceForPermitModel {
  bool? get isActive => throw _privateConstructorUsedError;
  AssistancePermitDetailModel? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AssitanceForPermitModelCopyWith<AssitanceForPermitModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssitanceForPermitModelCopyWith<$Res> {
  factory $AssitanceForPermitModelCopyWith(AssitanceForPermitModel value,
          $Res Function(AssitanceForPermitModel) then) =
      _$AssitanceForPermitModelCopyWithImpl<$Res>;
  $Res call({bool? isActive, AssistancePermitDetailModel? data});

  $AssistancePermitDetailModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$AssitanceForPermitModelCopyWithImpl<$Res>
    implements $AssitanceForPermitModelCopyWith<$Res> {
  _$AssitanceForPermitModelCopyWithImpl(this._value, this._then);

  final AssitanceForPermitModel _value;
  // ignore: unused_field
  final $Res Function(AssitanceForPermitModel) _then;

  @override
  $Res call({
    Object? isActive = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      isActive: isActive == freezed
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AssistancePermitDetailModel?,
    ));
  }

  @override
  $AssistancePermitDetailModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $AssistancePermitDetailModelCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$$_AssitanceForPermitModelCopyWith<$Res>
    implements $AssitanceForPermitModelCopyWith<$Res> {
  factory _$$_AssitanceForPermitModelCopyWith(_$_AssitanceForPermitModel value,
          $Res Function(_$_AssitanceForPermitModel) then) =
      __$$_AssitanceForPermitModelCopyWithImpl<$Res>;
  @override
  $Res call({bool? isActive, AssistancePermitDetailModel? data});

  @override
  $AssistancePermitDetailModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$$_AssitanceForPermitModelCopyWithImpl<$Res>
    extends _$AssitanceForPermitModelCopyWithImpl<$Res>
    implements _$$_AssitanceForPermitModelCopyWith<$Res> {
  __$$_AssitanceForPermitModelCopyWithImpl(_$_AssitanceForPermitModel _value,
      $Res Function(_$_AssitanceForPermitModel) _then)
      : super(_value, (v) => _then(v as _$_AssitanceForPermitModel));

  @override
  _$_AssitanceForPermitModel get _value =>
      super._value as _$_AssitanceForPermitModel;

  @override
  $Res call({
    Object? isActive = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_AssitanceForPermitModel(
      isActive: isActive == freezed
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AssistancePermitDetailModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AssitanceForPermitModel implements _AssitanceForPermitModel {
  _$_AssitanceForPermitModel({this.isActive, this.data});

  factory _$_AssitanceForPermitModel.fromJson(Map<String, dynamic> json) =>
      _$$_AssitanceForPermitModelFromJson(json);

  @override
  final bool? isActive;
  @override
  final AssistancePermitDetailModel? data;

  @override
  String toString() {
    return 'AssitanceForPermitModel(isActive: $isActive, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AssitanceForPermitModel &&
            const DeepCollectionEquality().equals(other.isActive, isActive) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isActive),
      const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$$_AssitanceForPermitModelCopyWith<_$_AssitanceForPermitModel>
      get copyWith =>
          __$$_AssitanceForPermitModelCopyWithImpl<_$_AssitanceForPermitModel>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AssitanceForPermitModelToJson(
      this,
    );
  }
}

abstract class _AssitanceForPermitModel implements AssitanceForPermitModel {
  factory _AssitanceForPermitModel(
      {final bool? isActive,
      final AssistancePermitDetailModel? data}) = _$_AssitanceForPermitModel;

  factory _AssitanceForPermitModel.fromJson(Map<String, dynamic> json) =
      _$_AssitanceForPermitModel.fromJson;

  @override
  bool? get isActive;
  @override
  AssistancePermitDetailModel? get data;
  @override
  @JsonKey(ignore: true)
  _$$_AssitanceForPermitModelCopyWith<_$_AssitanceForPermitModel>
      get copyWith => throw _privateConstructorUsedError;
}
