// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'assistance_permit_detail_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AssistancePermitDetailModel _$AssistancePermitDetailModelFromJson(
    Map<String, dynamic> json) {
  return _AssistancePermitDetailModel.fromJson(json);
}

/// @nodoc
mixin _$AssistancePermitDetailModel {
  String? get expiredDate => throw _privateConstructorUsedError;
  String? get dateOfPermit => throw _privateConstructorUsedError;
  String? get permitPhoto => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AssistancePermitDetailModelCopyWith<AssistancePermitDetailModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssistancePermitDetailModelCopyWith<$Res> {
  factory $AssistancePermitDetailModelCopyWith(
          AssistancePermitDetailModel value,
          $Res Function(AssistancePermitDetailModel) then) =
      _$AssistancePermitDetailModelCopyWithImpl<$Res>;
  $Res call({String? expiredDate, String? dateOfPermit, String? permitPhoto});
}

/// @nodoc
class _$AssistancePermitDetailModelCopyWithImpl<$Res>
    implements $AssistancePermitDetailModelCopyWith<$Res> {
  _$AssistancePermitDetailModelCopyWithImpl(this._value, this._then);

  final AssistancePermitDetailModel _value;
  // ignore: unused_field
  final $Res Function(AssistancePermitDetailModel) _then;

  @override
  $Res call({
    Object? expiredDate = freezed,
    Object? dateOfPermit = freezed,
    Object? permitPhoto = freezed,
  }) {
    return _then(_value.copyWith(
      expiredDate: expiredDate == freezed
          ? _value.expiredDate
          : expiredDate // ignore: cast_nullable_to_non_nullable
              as String?,
      dateOfPermit: dateOfPermit == freezed
          ? _value.dateOfPermit
          : dateOfPermit // ignore: cast_nullable_to_non_nullable
              as String?,
      permitPhoto: permitPhoto == freezed
          ? _value.permitPhoto
          : permitPhoto // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_AssistancePermitDetailModelCopyWith<$Res>
    implements $AssistancePermitDetailModelCopyWith<$Res> {
  factory _$$_AssistancePermitDetailModelCopyWith(
          _$_AssistancePermitDetailModel value,
          $Res Function(_$_AssistancePermitDetailModel) then) =
      __$$_AssistancePermitDetailModelCopyWithImpl<$Res>;
  @override
  $Res call({String? expiredDate, String? dateOfPermit, String? permitPhoto});
}

/// @nodoc
class __$$_AssistancePermitDetailModelCopyWithImpl<$Res>
    extends _$AssistancePermitDetailModelCopyWithImpl<$Res>
    implements _$$_AssistancePermitDetailModelCopyWith<$Res> {
  __$$_AssistancePermitDetailModelCopyWithImpl(
      _$_AssistancePermitDetailModel _value,
      $Res Function(_$_AssistancePermitDetailModel) _then)
      : super(_value, (v) => _then(v as _$_AssistancePermitDetailModel));

  @override
  _$_AssistancePermitDetailModel get _value =>
      super._value as _$_AssistancePermitDetailModel;

  @override
  $Res call({
    Object? expiredDate = freezed,
    Object? dateOfPermit = freezed,
    Object? permitPhoto = freezed,
  }) {
    return _then(_$_AssistancePermitDetailModel(
      expiredDate: expiredDate == freezed
          ? _value.expiredDate
          : expiredDate // ignore: cast_nullable_to_non_nullable
              as String?,
      dateOfPermit: dateOfPermit == freezed
          ? _value.dateOfPermit
          : dateOfPermit // ignore: cast_nullable_to_non_nullable
              as String?,
      permitPhoto: permitPhoto == freezed
          ? _value.permitPhoto
          : permitPhoto // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AssistancePermitDetailModel implements _AssistancePermitDetailModel {
  _$_AssistancePermitDetailModel(
      {this.expiredDate, this.dateOfPermit, this.permitPhoto});

  factory _$_AssistancePermitDetailModel.fromJson(Map<String, dynamic> json) =>
      _$$_AssistancePermitDetailModelFromJson(json);

  @override
  final String? expiredDate;
  @override
  final String? dateOfPermit;
  @override
  final String? permitPhoto;

  @override
  String toString() {
    return 'AssistancePermitDetailModel(expiredDate: $expiredDate, dateOfPermit: $dateOfPermit, permitPhoto: $permitPhoto)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AssistancePermitDetailModel &&
            const DeepCollectionEquality()
                .equals(other.expiredDate, expiredDate) &&
            const DeepCollectionEquality()
                .equals(other.dateOfPermit, dateOfPermit) &&
            const DeepCollectionEquality()
                .equals(other.permitPhoto, permitPhoto));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(expiredDate),
      const DeepCollectionEquality().hash(dateOfPermit),
      const DeepCollectionEquality().hash(permitPhoto));

  @JsonKey(ignore: true)
  @override
  _$$_AssistancePermitDetailModelCopyWith<_$_AssistancePermitDetailModel>
      get copyWith => __$$_AssistancePermitDetailModelCopyWithImpl<
          _$_AssistancePermitDetailModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AssistancePermitDetailModelToJson(
      this,
    );
  }
}

abstract class _AssistancePermitDetailModel
    implements AssistancePermitDetailModel {
  factory _AssistancePermitDetailModel(
      {final String? expiredDate,
      final String? dateOfPermit,
      final String? permitPhoto}) = _$_AssistancePermitDetailModel;

  factory _AssistancePermitDetailModel.fromJson(Map<String, dynamic> json) =
      _$_AssistancePermitDetailModel.fromJson;

  @override
  String? get expiredDate;
  @override
  String? get dateOfPermit;
  @override
  String? get permitPhoto;
  @override
  @JsonKey(ignore: true)
  _$$_AssistancePermitDetailModelCopyWith<_$_AssistancePermitDetailModel>
      get copyWith => throw _privateConstructorUsedError;
}
