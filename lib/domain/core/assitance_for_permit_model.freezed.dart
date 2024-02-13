// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'assitance_for_permit_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
      _$AssitanceForPermitModelCopyWithImpl<$Res, AssitanceForPermitModel>;
  @useResult
  $Res call({bool? isActive, AssistancePermitDetailModel? data});

  $AssistancePermitDetailModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$AssitanceForPermitModelCopyWithImpl<$Res,
        $Val extends AssitanceForPermitModel>
    implements $AssitanceForPermitModelCopyWith<$Res> {
  _$AssitanceForPermitModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isActive = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AssistancePermitDetailModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AssistancePermitDetailModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $AssistancePermitDetailModelCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AssitanceForPermitModelImplCopyWith<$Res>
    implements $AssitanceForPermitModelCopyWith<$Res> {
  factory _$$AssitanceForPermitModelImplCopyWith(
          _$AssitanceForPermitModelImpl value,
          $Res Function(_$AssitanceForPermitModelImpl) then) =
      __$$AssitanceForPermitModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? isActive, AssistancePermitDetailModel? data});

  @override
  $AssistancePermitDetailModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$$AssitanceForPermitModelImplCopyWithImpl<$Res>
    extends _$AssitanceForPermitModelCopyWithImpl<$Res,
        _$AssitanceForPermitModelImpl>
    implements _$$AssitanceForPermitModelImplCopyWith<$Res> {
  __$$AssitanceForPermitModelImplCopyWithImpl(
      _$AssitanceForPermitModelImpl _value,
      $Res Function(_$AssitanceForPermitModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isActive = freezed,
    Object? data = freezed,
  }) {
    return _then(_$AssitanceForPermitModelImpl(
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AssistancePermitDetailModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AssitanceForPermitModelImpl implements _AssitanceForPermitModel {
  _$AssitanceForPermitModelImpl({this.isActive, this.data});

  factory _$AssitanceForPermitModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AssitanceForPermitModelImplFromJson(json);

  @override
  final bool? isActive;
  @override
  final AssistancePermitDetailModel? data;

  @override
  String toString() {
    return 'AssitanceForPermitModel(isActive: $isActive, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssitanceForPermitModelImpl &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, isActive, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AssitanceForPermitModelImplCopyWith<_$AssitanceForPermitModelImpl>
      get copyWith => __$$AssitanceForPermitModelImplCopyWithImpl<
          _$AssitanceForPermitModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AssitanceForPermitModelImplToJson(
      this,
    );
  }
}

abstract class _AssitanceForPermitModel implements AssitanceForPermitModel {
  factory _AssitanceForPermitModel(
      {final bool? isActive,
      final AssistancePermitDetailModel? data}) = _$AssitanceForPermitModelImpl;

  factory _AssitanceForPermitModel.fromJson(Map<String, dynamic> json) =
      _$AssitanceForPermitModelImpl.fromJson;

  @override
  bool? get isActive;
  @override
  AssistancePermitDetailModel? get data;
  @override
  @JsonKey(ignore: true)
  _$$AssitanceForPermitModelImplCopyWith<_$AssitanceForPermitModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
