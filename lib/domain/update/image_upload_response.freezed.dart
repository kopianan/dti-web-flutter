// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image_upload_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ImageUploadResponse _$ImageUploadResponseFromJson(Map<String, dynamic> json) {
  return _ImageUploadResponse.fromJson(json);
}

/// @nodoc
mixin _$ImageUploadResponse {
  String get fileName => throw _privateConstructorUsedError;
  String? get oldFileName => throw _privateConstructorUsedError;
  String get downloadUrl => throw _privateConstructorUsedError;
  @JsonKey(nullable: true)
  String? get appId => throw _privateConstructorUsedError;
  @JsonKey(nullable: true)
  String? get docId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageUploadResponseCopyWith<ImageUploadResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageUploadResponseCopyWith<$Res> {
  factory $ImageUploadResponseCopyWith(
          ImageUploadResponse value, $Res Function(ImageUploadResponse) then) =
      _$ImageUploadResponseCopyWithImpl<$Res, ImageUploadResponse>;
  @useResult
  $Res call(
      {String fileName,
      String? oldFileName,
      String downloadUrl,
      @JsonKey(nullable: true) String? appId,
      @JsonKey(nullable: true) String? docId});
}

/// @nodoc
class _$ImageUploadResponseCopyWithImpl<$Res, $Val extends ImageUploadResponse>
    implements $ImageUploadResponseCopyWith<$Res> {
  _$ImageUploadResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileName = null,
    Object? oldFileName = freezed,
    Object? downloadUrl = null,
    Object? appId = freezed,
    Object? docId = freezed,
  }) {
    return _then(_value.copyWith(
      fileName: null == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
      oldFileName: freezed == oldFileName
          ? _value.oldFileName
          : oldFileName // ignore: cast_nullable_to_non_nullable
              as String?,
      downloadUrl: null == downloadUrl
          ? _value.downloadUrl
          : downloadUrl // ignore: cast_nullable_to_non_nullable
              as String,
      appId: freezed == appId
          ? _value.appId
          : appId // ignore: cast_nullable_to_non_nullable
              as String?,
      docId: freezed == docId
          ? _value.docId
          : docId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ImageUploadResponseCopyWith<$Res>
    implements $ImageUploadResponseCopyWith<$Res> {
  factory _$$_ImageUploadResponseCopyWith(_$_ImageUploadResponse value,
          $Res Function(_$_ImageUploadResponse) then) =
      __$$_ImageUploadResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String fileName,
      String? oldFileName,
      String downloadUrl,
      @JsonKey(nullable: true) String? appId,
      @JsonKey(nullable: true) String? docId});
}

/// @nodoc
class __$$_ImageUploadResponseCopyWithImpl<$Res>
    extends _$ImageUploadResponseCopyWithImpl<$Res, _$_ImageUploadResponse>
    implements _$$_ImageUploadResponseCopyWith<$Res> {
  __$$_ImageUploadResponseCopyWithImpl(_$_ImageUploadResponse _value,
      $Res Function(_$_ImageUploadResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileName = null,
    Object? oldFileName = freezed,
    Object? downloadUrl = null,
    Object? appId = freezed,
    Object? docId = freezed,
  }) {
    return _then(_$_ImageUploadResponse(
      fileName: null == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
      oldFileName: freezed == oldFileName
          ? _value.oldFileName
          : oldFileName // ignore: cast_nullable_to_non_nullable
              as String?,
      downloadUrl: null == downloadUrl
          ? _value.downloadUrl
          : downloadUrl // ignore: cast_nullable_to_non_nullable
              as String,
      appId: freezed == appId
          ? _value.appId
          : appId // ignore: cast_nullable_to_non_nullable
              as String?,
      docId: freezed == docId
          ? _value.docId
          : docId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ImageUploadResponse implements _ImageUploadResponse {
  _$_ImageUploadResponse(
      {required this.fileName,
      this.oldFileName,
      required this.downloadUrl,
      @JsonKey(nullable: true) this.appId,
      @JsonKey(nullable: true) this.docId});

  factory _$_ImageUploadResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ImageUploadResponseFromJson(json);

  @override
  final String fileName;
  @override
  final String? oldFileName;
  @override
  final String downloadUrl;
  @override
  @JsonKey(nullable: true)
  final String? appId;
  @override
  @JsonKey(nullable: true)
  final String? docId;

  @override
  String toString() {
    return 'ImageUploadResponse(fileName: $fileName, oldFileName: $oldFileName, downloadUrl: $downloadUrl, appId: $appId, docId: $docId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ImageUploadResponse &&
            (identical(other.fileName, fileName) ||
                other.fileName == fileName) &&
            (identical(other.oldFileName, oldFileName) ||
                other.oldFileName == oldFileName) &&
            (identical(other.downloadUrl, downloadUrl) ||
                other.downloadUrl == downloadUrl) &&
            (identical(other.appId, appId) || other.appId == appId) &&
            (identical(other.docId, docId) || other.docId == docId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, fileName, oldFileName, downloadUrl, appId, docId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ImageUploadResponseCopyWith<_$_ImageUploadResponse> get copyWith =>
      __$$_ImageUploadResponseCopyWithImpl<_$_ImageUploadResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ImageUploadResponseToJson(
      this,
    );
  }
}

abstract class _ImageUploadResponse implements ImageUploadResponse {
  factory _ImageUploadResponse(
      {required final String fileName,
      final String? oldFileName,
      required final String downloadUrl,
      @JsonKey(nullable: true) final String? appId,
      @JsonKey(nullable: true) final String? docId}) = _$_ImageUploadResponse;

  factory _ImageUploadResponse.fromJson(Map<String, dynamic> json) =
      _$_ImageUploadResponse.fromJson;

  @override
  String get fileName;
  @override
  String? get oldFileName;
  @override
  String get downloadUrl;
  @override
  @JsonKey(nullable: true)
  String? get appId;
  @override
  @JsonKey(nullable: true)
  String? get docId;
  @override
  @JsonKey(ignore: true)
  _$$_ImageUploadResponseCopyWith<_$_ImageUploadResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
