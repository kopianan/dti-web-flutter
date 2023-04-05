// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

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
  String? get header => throw _privateConstructorUsedError;
  List<String?>? get imageList => throw _privateConstructorUsedError;
  bool? get isSubmited => throw _privateConstructorUsedError;
  String? get previewImage => throw _privateConstructorUsedError;
  String? get body => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  String? get attachment => throw _privateConstructorUsedError;
  int? get numberOfDocs => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DocumentDataModelCopyWith<DocumentDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DocumentDataModelCopyWith<$Res> {
  factory $DocumentDataModelCopyWith(
          DocumentDataModel value, $Res Function(DocumentDataModel) then) =
      _$DocumentDataModelCopyWithImpl<$Res>;
  $Res call(
      {String? header,
      List<String?>? imageList,
      bool? isSubmited,
      String? previewImage,
      String? body,
      String? id,
      String? attachment,
      int? numberOfDocs});
}

/// @nodoc
class _$DocumentDataModelCopyWithImpl<$Res>
    implements $DocumentDataModelCopyWith<$Res> {
  _$DocumentDataModelCopyWithImpl(this._value, this._then);

  final DocumentDataModel _value;
  // ignore: unused_field
  final $Res Function(DocumentDataModel) _then;

  @override
  $Res call({
    Object? header = freezed,
    Object? imageList = freezed,
    Object? isSubmited = freezed,
    Object? previewImage = freezed,
    Object? body = freezed,
    Object? id = freezed,
    Object? attachment = freezed,
    Object? numberOfDocs = freezed,
  }) {
    return _then(_value.copyWith(
      header: header == freezed
          ? _value.header
          : header // ignore: cast_nullable_to_non_nullable
              as String?,
      imageList: imageList == freezed
          ? _value.imageList
          : imageList // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
      isSubmited: isSubmited == freezed
          ? _value.isSubmited
          : isSubmited // ignore: cast_nullable_to_non_nullable
              as bool?,
      previewImage: previewImage == freezed
          ? _value.previewImage
          : previewImage // ignore: cast_nullable_to_non_nullable
              as String?,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      attachment: attachment == freezed
          ? _value.attachment
          : attachment // ignore: cast_nullable_to_non_nullable
              as String?,
      numberOfDocs: numberOfDocs == freezed
          ? _value.numberOfDocs
          : numberOfDocs // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$$_DocumentDataModelCopyWith<$Res>
    implements $DocumentDataModelCopyWith<$Res> {
  factory _$$_DocumentDataModelCopyWith(_$_DocumentDataModel value,
          $Res Function(_$_DocumentDataModel) then) =
      __$$_DocumentDataModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? header,
      List<String?>? imageList,
      bool? isSubmited,
      String? previewImage,
      String? body,
      String? id,
      String? attachment,
      int? numberOfDocs});
}

/// @nodoc
class __$$_DocumentDataModelCopyWithImpl<$Res>
    extends _$DocumentDataModelCopyWithImpl<$Res>
    implements _$$_DocumentDataModelCopyWith<$Res> {
  __$$_DocumentDataModelCopyWithImpl(
      _$_DocumentDataModel _value, $Res Function(_$_DocumentDataModel) _then)
      : super(_value, (v) => _then(v as _$_DocumentDataModel));

  @override
  _$_DocumentDataModel get _value => super._value as _$_DocumentDataModel;

  @override
  $Res call({
    Object? header = freezed,
    Object? imageList = freezed,
    Object? isSubmited = freezed,
    Object? previewImage = freezed,
    Object? body = freezed,
    Object? id = freezed,
    Object? attachment = freezed,
    Object? numberOfDocs = freezed,
  }) {
    return _then(_$_DocumentDataModel(
      header: header == freezed
          ? _value.header
          : header // ignore: cast_nullable_to_non_nullable
              as String?,
      imageList: imageList == freezed
          ? _value.imageList
          : imageList // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
      isSubmited: isSubmited == freezed
          ? _value.isSubmited
          : isSubmited // ignore: cast_nullable_to_non_nullable
              as bool?,
      previewImage: previewImage == freezed
          ? _value.previewImage
          : previewImage // ignore: cast_nullable_to_non_nullable
              as String?,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      attachment: attachment == freezed
          ? _value.attachment
          : attachment // ignore: cast_nullable_to_non_nullable
              as String?,
      numberOfDocs: numberOfDocs == freezed
          ? _value.numberOfDocs
          : numberOfDocs // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DocumentDataModel implements _DocumentDataModel {
  _$_DocumentDataModel(
      {this.header,
      this.imageList,
      this.isSubmited,
      this.previewImage,
      this.body,
      this.id,
      this.attachment,
      this.numberOfDocs});

  factory _$_DocumentDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_DocumentDataModelFromJson(json);

  @override
  final String? header;
  @override
  final List<String?>? imageList;
  @override
  final bool? isSubmited;
  @override
  final String? previewImage;
  @override
  final String? body;
  @override
  final String? id;
  @override
  final String? attachment;
  @override
  final int? numberOfDocs;

  @override
  String toString() {
    return 'DocumentDataModel(header: $header, imageList: $imageList, isSubmited: $isSubmited, previewImage: $previewImage, body: $body, id: $id, attachment: $attachment, numberOfDocs: $numberOfDocs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DocumentDataModel &&
            const DeepCollectionEquality().equals(other.header, header) &&
            const DeepCollectionEquality().equals(other.imageList, imageList) &&
            const DeepCollectionEquality()
                .equals(other.isSubmited, isSubmited) &&
            const DeepCollectionEquality()
                .equals(other.previewImage, previewImage) &&
            const DeepCollectionEquality().equals(other.body, body) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.attachment, attachment) &&
            const DeepCollectionEquality()
                .equals(other.numberOfDocs, numberOfDocs));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(header),
      const DeepCollectionEquality().hash(imageList),
      const DeepCollectionEquality().hash(isSubmited),
      const DeepCollectionEquality().hash(previewImage),
      const DeepCollectionEquality().hash(body),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(attachment),
      const DeepCollectionEquality().hash(numberOfDocs));

  @JsonKey(ignore: true)
  @override
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
      {final String? header,
      final List<String?>? imageList,
      final bool? isSubmited,
      final String? previewImage,
      final String? body,
      final String? id,
      final String? attachment,
      final int? numberOfDocs}) = _$_DocumentDataModel;

  factory _DocumentDataModel.fromJson(Map<String, dynamic> json) =
      _$_DocumentDataModel.fromJson;

  @override
  String? get header;
  @override
  List<String?>? get imageList;
  @override
  bool? get isSubmited;
  @override
  String? get previewImage;
  @override
  String? get body;
  @override
  String? get id;
  @override
  String? get attachment;
  @override
  int? get numberOfDocs;
  @override
  @JsonKey(ignore: true)
  _$$_DocumentDataModelCopyWith<_$_DocumentDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}
