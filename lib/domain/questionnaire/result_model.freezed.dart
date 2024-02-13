// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'result_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResultModel _$ResultModelFromJson(Map<String, dynamic> json) {
  return _ResultModel.fromJson(json);
}

/// @nodoc
mixin _$ResultModel {
  bool? get contactUs => throw _privateConstructorUsedError;
  VisaPriceModel? get visaPrice => throw _privateConstructorUsedError;
  String? get visaEntry => throw _privateConstructorUsedError;
  String? get documents => throw _privateConstructorUsedError;
  String? get visaTitle => throw _privateConstructorUsedError;
  String? get visaSubTitle => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResultModelCopyWith<ResultModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultModelCopyWith<$Res> {
  factory $ResultModelCopyWith(
          ResultModel value, $Res Function(ResultModel) then) =
      _$ResultModelCopyWithImpl<$Res, ResultModel>;
  @useResult
  $Res call(
      {bool? contactUs,
      VisaPriceModel? visaPrice,
      String? visaEntry,
      String? documents,
      String? visaTitle,
      String? visaSubTitle});

  $VisaPriceModelCopyWith<$Res>? get visaPrice;
}

/// @nodoc
class _$ResultModelCopyWithImpl<$Res, $Val extends ResultModel>
    implements $ResultModelCopyWith<$Res> {
  _$ResultModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contactUs = freezed,
    Object? visaPrice = freezed,
    Object? visaEntry = freezed,
    Object? documents = freezed,
    Object? visaTitle = freezed,
    Object? visaSubTitle = freezed,
  }) {
    return _then(_value.copyWith(
      contactUs: freezed == contactUs
          ? _value.contactUs
          : contactUs // ignore: cast_nullable_to_non_nullable
              as bool?,
      visaPrice: freezed == visaPrice
          ? _value.visaPrice
          : visaPrice // ignore: cast_nullable_to_non_nullable
              as VisaPriceModel?,
      visaEntry: freezed == visaEntry
          ? _value.visaEntry
          : visaEntry // ignore: cast_nullable_to_non_nullable
              as String?,
      documents: freezed == documents
          ? _value.documents
          : documents // ignore: cast_nullable_to_non_nullable
              as String?,
      visaTitle: freezed == visaTitle
          ? _value.visaTitle
          : visaTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      visaSubTitle: freezed == visaSubTitle
          ? _value.visaSubTitle
          : visaSubTitle // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $VisaPriceModelCopyWith<$Res>? get visaPrice {
    if (_value.visaPrice == null) {
      return null;
    }

    return $VisaPriceModelCopyWith<$Res>(_value.visaPrice!, (value) {
      return _then(_value.copyWith(visaPrice: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ResultModelImplCopyWith<$Res>
    implements $ResultModelCopyWith<$Res> {
  factory _$$ResultModelImplCopyWith(
          _$ResultModelImpl value, $Res Function(_$ResultModelImpl) then) =
      __$$ResultModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? contactUs,
      VisaPriceModel? visaPrice,
      String? visaEntry,
      String? documents,
      String? visaTitle,
      String? visaSubTitle});

  @override
  $VisaPriceModelCopyWith<$Res>? get visaPrice;
}

/// @nodoc
class __$$ResultModelImplCopyWithImpl<$Res>
    extends _$ResultModelCopyWithImpl<$Res, _$ResultModelImpl>
    implements _$$ResultModelImplCopyWith<$Res> {
  __$$ResultModelImplCopyWithImpl(
      _$ResultModelImpl _value, $Res Function(_$ResultModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contactUs = freezed,
    Object? visaPrice = freezed,
    Object? visaEntry = freezed,
    Object? documents = freezed,
    Object? visaTitle = freezed,
    Object? visaSubTitle = freezed,
  }) {
    return _then(_$ResultModelImpl(
      contactUs: freezed == contactUs
          ? _value.contactUs
          : contactUs // ignore: cast_nullable_to_non_nullable
              as bool?,
      visaPrice: freezed == visaPrice
          ? _value.visaPrice
          : visaPrice // ignore: cast_nullable_to_non_nullable
              as VisaPriceModel?,
      visaEntry: freezed == visaEntry
          ? _value.visaEntry
          : visaEntry // ignore: cast_nullable_to_non_nullable
              as String?,
      documents: freezed == documents
          ? _value.documents
          : documents // ignore: cast_nullable_to_non_nullable
              as String?,
      visaTitle: freezed == visaTitle
          ? _value.visaTitle
          : visaTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      visaSubTitle: freezed == visaSubTitle
          ? _value.visaSubTitle
          : visaSubTitle // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResultModelImpl implements _ResultModel {
  _$ResultModelImpl(
      {this.contactUs,
      this.visaPrice,
      this.visaEntry,
      this.documents,
      this.visaTitle,
      this.visaSubTitle});

  factory _$ResultModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResultModelImplFromJson(json);

  @override
  final bool? contactUs;
  @override
  final VisaPriceModel? visaPrice;
  @override
  final String? visaEntry;
  @override
  final String? documents;
  @override
  final String? visaTitle;
  @override
  final String? visaSubTitle;

  @override
  String toString() {
    return 'ResultModel(contactUs: $contactUs, visaPrice: $visaPrice, visaEntry: $visaEntry, documents: $documents, visaTitle: $visaTitle, visaSubTitle: $visaSubTitle)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultModelImpl &&
            (identical(other.contactUs, contactUs) ||
                other.contactUs == contactUs) &&
            (identical(other.visaPrice, visaPrice) ||
                other.visaPrice == visaPrice) &&
            (identical(other.visaEntry, visaEntry) ||
                other.visaEntry == visaEntry) &&
            (identical(other.documents, documents) ||
                other.documents == documents) &&
            (identical(other.visaTitle, visaTitle) ||
                other.visaTitle == visaTitle) &&
            (identical(other.visaSubTitle, visaSubTitle) ||
                other.visaSubTitle == visaSubTitle));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, contactUs, visaPrice, visaEntry,
      documents, visaTitle, visaSubTitle);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResultModelImplCopyWith<_$ResultModelImpl> get copyWith =>
      __$$ResultModelImplCopyWithImpl<_$ResultModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResultModelImplToJson(
      this,
    );
  }
}

abstract class _ResultModel implements ResultModel {
  factory _ResultModel(
      {final bool? contactUs,
      final VisaPriceModel? visaPrice,
      final String? visaEntry,
      final String? documents,
      final String? visaTitle,
      final String? visaSubTitle}) = _$ResultModelImpl;

  factory _ResultModel.fromJson(Map<String, dynamic> json) =
      _$ResultModelImpl.fromJson;

  @override
  bool? get contactUs;
  @override
  VisaPriceModel? get visaPrice;
  @override
  String? get visaEntry;
  @override
  String? get documents;
  @override
  String? get visaTitle;
  @override
  String? get visaSubTitle;
  @override
  @JsonKey(ignore: true)
  _$$ResultModelImplCopyWith<_$ResultModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
