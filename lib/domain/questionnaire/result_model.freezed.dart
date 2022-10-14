// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'result_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
      _$ResultModelCopyWithImpl<$Res>;
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
class _$ResultModelCopyWithImpl<$Res> implements $ResultModelCopyWith<$Res> {
  _$ResultModelCopyWithImpl(this._value, this._then);

  final ResultModel _value;
  // ignore: unused_field
  final $Res Function(ResultModel) _then;

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
      contactUs: contactUs == freezed
          ? _value.contactUs
          : contactUs // ignore: cast_nullable_to_non_nullable
              as bool?,
      visaPrice: visaPrice == freezed
          ? _value.visaPrice
          : visaPrice // ignore: cast_nullable_to_non_nullable
              as VisaPriceModel?,
      visaEntry: visaEntry == freezed
          ? _value.visaEntry
          : visaEntry // ignore: cast_nullable_to_non_nullable
              as String?,
      documents: documents == freezed
          ? _value.documents
          : documents // ignore: cast_nullable_to_non_nullable
              as String?,
      visaTitle: visaTitle == freezed
          ? _value.visaTitle
          : visaTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      visaSubTitle: visaSubTitle == freezed
          ? _value.visaSubTitle
          : visaSubTitle // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $VisaPriceModelCopyWith<$Res>? get visaPrice {
    if (_value.visaPrice == null) {
      return null;
    }

    return $VisaPriceModelCopyWith<$Res>(_value.visaPrice!, (value) {
      return _then(_value.copyWith(visaPrice: value));
    });
  }
}

/// @nodoc
abstract class _$$_ResultModelCopyWith<$Res>
    implements $ResultModelCopyWith<$Res> {
  factory _$$_ResultModelCopyWith(
          _$_ResultModel value, $Res Function(_$_ResultModel) then) =
      __$$_ResultModelCopyWithImpl<$Res>;
  @override
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
class __$$_ResultModelCopyWithImpl<$Res> extends _$ResultModelCopyWithImpl<$Res>
    implements _$$_ResultModelCopyWith<$Res> {
  __$$_ResultModelCopyWithImpl(
      _$_ResultModel _value, $Res Function(_$_ResultModel) _then)
      : super(_value, (v) => _then(v as _$_ResultModel));

  @override
  _$_ResultModel get _value => super._value as _$_ResultModel;

  @override
  $Res call({
    Object? contactUs = freezed,
    Object? visaPrice = freezed,
    Object? visaEntry = freezed,
    Object? documents = freezed,
    Object? visaTitle = freezed,
    Object? visaSubTitle = freezed,
  }) {
    return _then(_$_ResultModel(
      contactUs: contactUs == freezed
          ? _value.contactUs
          : contactUs // ignore: cast_nullable_to_non_nullable
              as bool?,
      visaPrice: visaPrice == freezed
          ? _value.visaPrice
          : visaPrice // ignore: cast_nullable_to_non_nullable
              as VisaPriceModel?,
      visaEntry: visaEntry == freezed
          ? _value.visaEntry
          : visaEntry // ignore: cast_nullable_to_non_nullable
              as String?,
      documents: documents == freezed
          ? _value.documents
          : documents // ignore: cast_nullable_to_non_nullable
              as String?,
      visaTitle: visaTitle == freezed
          ? _value.visaTitle
          : visaTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      visaSubTitle: visaSubTitle == freezed
          ? _value.visaSubTitle
          : visaSubTitle // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ResultModel implements _ResultModel {
  _$_ResultModel(
      {this.contactUs,
      this.visaPrice,
      this.visaEntry,
      this.documents,
      this.visaTitle,
      this.visaSubTitle});

  factory _$_ResultModel.fromJson(Map<String, dynamic> json) =>
      _$$_ResultModelFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResultModel &&
            const DeepCollectionEquality().equals(other.contactUs, contactUs) &&
            const DeepCollectionEquality().equals(other.visaPrice, visaPrice) &&
            const DeepCollectionEquality().equals(other.visaEntry, visaEntry) &&
            const DeepCollectionEquality().equals(other.documents, documents) &&
            const DeepCollectionEquality().equals(other.visaTitle, visaTitle) &&
            const DeepCollectionEquality()
                .equals(other.visaSubTitle, visaSubTitle));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(contactUs),
      const DeepCollectionEquality().hash(visaPrice),
      const DeepCollectionEquality().hash(visaEntry),
      const DeepCollectionEquality().hash(documents),
      const DeepCollectionEquality().hash(visaTitle),
      const DeepCollectionEquality().hash(visaSubTitle));

  @JsonKey(ignore: true)
  @override
  _$$_ResultModelCopyWith<_$_ResultModel> get copyWith =>
      __$$_ResultModelCopyWithImpl<_$_ResultModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResultModelToJson(
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
      final String? visaSubTitle}) = _$_ResultModel;

  factory _ResultModel.fromJson(Map<String, dynamic> json) =
      _$_ResultModel.fromJson;

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
  _$$_ResultModelCopyWith<_$_ResultModel> get copyWith =>
      throw _privateConstructorUsedError;
}
