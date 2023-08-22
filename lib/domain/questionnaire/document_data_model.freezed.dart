// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'document_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DocumentDataModel _$DocumentDataModelFromJson(Map<String, dynamic> json) {
  return _DocumentDataModel.fromJson(json);
}

/// @nodoc
mixin _$DocumentDataModel {
  String? get id => throw _privateConstructorUsedError;
  String? get previewImage => throw _privateConstructorUsedError;
  bool? get isSubmited => throw _privateConstructorUsedError;
  String? get body => throw _privateConstructorUsedError;
  String? get attachment => throw _privateConstructorUsedError;
  int? get numberOfDocs => throw _privateConstructorUsedError;
  String? get header => throw _privateConstructorUsedError;
  List<String>? get imageList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DocumentDataModelCopyWith<DocumentDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DocumentDataModelCopyWith<$Res> {
  factory $DocumentDataModelCopyWith(
          DocumentDataModel value, $Res Function(DocumentDataModel) then) =
      _$DocumentDataModelCopyWithImpl<$Res, DocumentDataModel>;
  @useResult
  $Res call(
      {String? id,
      String? previewImage,
      bool? isSubmited,
      String? body,
      String? attachment,
      int? numberOfDocs,
      String? header,
      List<String>? imageList});
}

/// @nodoc
class _$DocumentDataModelCopyWithImpl<$Res, $Val extends DocumentDataModel>
    implements $DocumentDataModelCopyWith<$Res> {
  _$DocumentDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? previewImage = freezed,
    Object? isSubmited = freezed,
    Object? body = freezed,
    Object? attachment = freezed,
    Object? numberOfDocs = freezed,
    Object? header = freezed,
    Object? imageList = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      previewImage: freezed == previewImage
          ? _value.previewImage
          : previewImage // ignore: cast_nullable_to_non_nullable
              as String?,
      isSubmited: freezed == isSubmited
          ? _value.isSubmited
          : isSubmited // ignore: cast_nullable_to_non_nullable
              as bool?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      attachment: freezed == attachment
          ? _value.attachment
          : attachment // ignore: cast_nullable_to_non_nullable
              as String?,
      numberOfDocs: freezed == numberOfDocs
          ? _value.numberOfDocs
          : numberOfDocs // ignore: cast_nullable_to_non_nullable
              as int?,
      header: freezed == header
          ? _value.header
          : header // ignore: cast_nullable_to_non_nullable
              as String?,
      imageList: freezed == imageList
          ? _value.imageList
          : imageList // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DocumentDataModelCopyWith<$Res>
    implements $DocumentDataModelCopyWith<$Res> {
  factory _$$_DocumentDataModelCopyWith(_$_DocumentDataModel value,
          $Res Function(_$_DocumentDataModel) then) =
      __$$_DocumentDataModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? previewImage,
      bool? isSubmited,
      String? body,
      String? attachment,
      int? numberOfDocs,
      String? header,
      List<String>? imageList});
}

/// @nodoc
class __$$_DocumentDataModelCopyWithImpl<$Res>
    extends _$DocumentDataModelCopyWithImpl<$Res, _$_DocumentDataModel>
    implements _$$_DocumentDataModelCopyWith<$Res> {
  __$$_DocumentDataModelCopyWithImpl(
      _$_DocumentDataModel _value, $Res Function(_$_DocumentDataModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? previewImage = freezed,
    Object? isSubmited = freezed,
    Object? body = freezed,
    Object? attachment = freezed,
    Object? numberOfDocs = freezed,
    Object? header = freezed,
    Object? imageList = freezed,
  }) {
    return _then(_$_DocumentDataModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      previewImage: freezed == previewImage
          ? _value.previewImage
          : previewImage // ignore: cast_nullable_to_non_nullable
              as String?,
      isSubmited: freezed == isSubmited
          ? _value.isSubmited
          : isSubmited // ignore: cast_nullable_to_non_nullable
              as bool?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      attachment: freezed == attachment
          ? _value.attachment
          : attachment // ignore: cast_nullable_to_non_nullable
              as String?,
      numberOfDocs: freezed == numberOfDocs
          ? _value.numberOfDocs
          : numberOfDocs // ignore: cast_nullable_to_non_nullable
              as int?,
      header: freezed == header
          ? _value.header
          : header // ignore: cast_nullable_to_non_nullable
              as String?,
      imageList: freezed == imageList
          ? _value._imageList
          : imageList // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DocumentDataModel implements _DocumentDataModel {
  _$_DocumentDataModel(
      {this.id,
      this.previewImage,
      this.isSubmited,
      this.body,
      this.attachment,
      this.numberOfDocs,
      this.header,
      final List<String>? imageList})
      : _imageList = imageList;

  factory _$_DocumentDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_DocumentDataModelFromJson(json);

  @override
  final String? id;
  @override
  final String? previewImage;
  @override
  final bool? isSubmited;
  @override
  final String? body;
  @override
  final String? attachment;
  @override
  final int? numberOfDocs;
  @override
  final String? header;
  final List<String>? _imageList;
  @override
  List<String>? get imageList {
    final value = _imageList;
    if (value == null) return null;
    if (_imageList is EqualUnmodifiableListView) return _imageList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'DocumentDataModel(id: $id, previewImage: $previewImage, isSubmited: $isSubmited, body: $body, attachment: $attachment, numberOfDocs: $numberOfDocs, header: $header, imageList: $imageList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DocumentDataModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.previewImage, previewImage) ||
                other.previewImage == previewImage) &&
            (identical(other.isSubmited, isSubmited) ||
                other.isSubmited == isSubmited) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.attachment, attachment) ||
                other.attachment == attachment) &&
            (identical(other.numberOfDocs, numberOfDocs) ||
                other.numberOfDocs == numberOfDocs) &&
            (identical(other.header, header) || other.header == header) &&
            const DeepCollectionEquality()
                .equals(other._imageList, _imageList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      previewImage,
      isSubmited,
      body,
      attachment,
      numberOfDocs,
      header,
      const DeepCollectionEquality().hash(_imageList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DocumentDataModelCopyWith<_$_DocumentDataModel> get copyWith =>
      __$$_DocumentDataModelCopyWithImpl<_$_DocumentDataModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DocumentDataModelToJson(
      this,
    );
  }
}

abstract class _DocumentDataModel implements DocumentDataModel {
  factory _DocumentDataModel(
      {final String? id,
      final String? previewImage,
      final bool? isSubmited,
      final String? body,
      final String? attachment,
      final int? numberOfDocs,
      final String? header,
      final List<String>? imageList}) = _$_DocumentDataModel;

  factory _DocumentDataModel.fromJson(Map<String, dynamic> json) =
      _$_DocumentDataModel.fromJson;

  @override
  String? get id;
  @override
  String? get previewImage;
  @override
  bool? get isSubmited;
  @override
  String? get body;
  @override
  String? get attachment;
  @override
  int? get numberOfDocs;
  @override
  String? get header;
  @override
  List<String>? get imageList;
  @override
  @JsonKey(ignore: true)
  _$$_DocumentDataModelCopyWith<_$_DocumentDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}
