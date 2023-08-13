// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'single_visa_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SingleVisaResponse _$SingleVisaResponseFromJson(Map<String, dynamic> json) {
  return _SingleVisaResponse.fromJson(json);
}

/// @nodoc
mixin _$SingleVisaResponse {
  @JsonKey(name: 'data')
  VisaApplicationModel? get visaApplicationModel =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'documentUserUrl')
  List<Map<String, dynamic>>? get documentUserApplicationUrl =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SingleVisaResponseCopyWith<SingleVisaResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SingleVisaResponseCopyWith<$Res> {
  factory $SingleVisaResponseCopyWith(
          SingleVisaResponse value, $Res Function(SingleVisaResponse) then) =
      _$SingleVisaResponseCopyWithImpl<$Res, SingleVisaResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'data')
          VisaApplicationModel? visaApplicationModel,
      @JsonKey(name: 'documentUserUrl')
          List<Map<String, dynamic>>? documentUserApplicationUrl});

  $VisaApplicationModelCopyWith<$Res>? get visaApplicationModel;
}

/// @nodoc
class _$SingleVisaResponseCopyWithImpl<$Res, $Val extends SingleVisaResponse>
    implements $SingleVisaResponseCopyWith<$Res> {
  _$SingleVisaResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? visaApplicationModel = freezed,
    Object? documentUserApplicationUrl = freezed,
  }) {
    return _then(_value.copyWith(
      visaApplicationModel: freezed == visaApplicationModel
          ? _value.visaApplicationModel
          : visaApplicationModel // ignore: cast_nullable_to_non_nullable
              as VisaApplicationModel?,
      documentUserApplicationUrl: freezed == documentUserApplicationUrl
          ? _value.documentUserApplicationUrl
          : documentUserApplicationUrl // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $VisaApplicationModelCopyWith<$Res>? get visaApplicationModel {
    if (_value.visaApplicationModel == null) {
      return null;
    }

    return $VisaApplicationModelCopyWith<$Res>(_value.visaApplicationModel!,
        (value) {
      return _then(_value.copyWith(visaApplicationModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SingleVisaResponseCopyWith<$Res>
    implements $SingleVisaResponseCopyWith<$Res> {
  factory _$$_SingleVisaResponseCopyWith(_$_SingleVisaResponse value,
          $Res Function(_$_SingleVisaResponse) then) =
      __$$_SingleVisaResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'data')
          VisaApplicationModel? visaApplicationModel,
      @JsonKey(name: 'documentUserUrl')
          List<Map<String, dynamic>>? documentUserApplicationUrl});

  @override
  $VisaApplicationModelCopyWith<$Res>? get visaApplicationModel;
}

/// @nodoc
class __$$_SingleVisaResponseCopyWithImpl<$Res>
    extends _$SingleVisaResponseCopyWithImpl<$Res, _$_SingleVisaResponse>
    implements _$$_SingleVisaResponseCopyWith<$Res> {
  __$$_SingleVisaResponseCopyWithImpl(
      _$_SingleVisaResponse _value, $Res Function(_$_SingleVisaResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? visaApplicationModel = freezed,
    Object? documentUserApplicationUrl = freezed,
  }) {
    return _then(_$_SingleVisaResponse(
      visaApplicationModel: freezed == visaApplicationModel
          ? _value.visaApplicationModel
          : visaApplicationModel // ignore: cast_nullable_to_non_nullable
              as VisaApplicationModel?,
      documentUserApplicationUrl: freezed == documentUserApplicationUrl
          ? _value._documentUserApplicationUrl
          : documentUserApplicationUrl // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SingleVisaResponse implements _SingleVisaResponse {
  _$_SingleVisaResponse(
      {@JsonKey(name: 'data')
          this.visaApplicationModel,
      @JsonKey(name: 'documentUserUrl')
          final List<Map<String, dynamic>>? documentUserApplicationUrl})
      : _documentUserApplicationUrl = documentUserApplicationUrl;

  factory _$_SingleVisaResponse.fromJson(Map<String, dynamic> json) =>
      _$$_SingleVisaResponseFromJson(json);

  @override
  @JsonKey(name: 'data')
  final VisaApplicationModel? visaApplicationModel;
  final List<Map<String, dynamic>>? _documentUserApplicationUrl;
  @override
  @JsonKey(name: 'documentUserUrl')
  List<Map<String, dynamic>>? get documentUserApplicationUrl {
    final value = _documentUserApplicationUrl;
    if (value == null) return null;
    if (_documentUserApplicationUrl is EqualUnmodifiableListView)
      return _documentUserApplicationUrl;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SingleVisaResponse(visaApplicationModel: $visaApplicationModel, documentUserApplicationUrl: $documentUserApplicationUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SingleVisaResponse &&
            (identical(other.visaApplicationModel, visaApplicationModel) ||
                other.visaApplicationModel == visaApplicationModel) &&
            const DeepCollectionEquality().equals(
                other._documentUserApplicationUrl,
                _documentUserApplicationUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, visaApplicationModel,
      const DeepCollectionEquality().hash(_documentUserApplicationUrl));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SingleVisaResponseCopyWith<_$_SingleVisaResponse> get copyWith =>
      __$$_SingleVisaResponseCopyWithImpl<_$_SingleVisaResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SingleVisaResponseToJson(
      this,
    );
  }
}

abstract class _SingleVisaResponse implements SingleVisaResponse {
  factory _SingleVisaResponse(
          {@JsonKey(name: 'data')
              final VisaApplicationModel? visaApplicationModel,
          @JsonKey(name: 'documentUserUrl')
              final List<Map<String, dynamic>>? documentUserApplicationUrl}) =
      _$_SingleVisaResponse;

  factory _SingleVisaResponse.fromJson(Map<String, dynamic> json) =
      _$_SingleVisaResponse.fromJson;

  @override
  @JsonKey(name: 'data')
  VisaApplicationModel? get visaApplicationModel;
  @override
  @JsonKey(name: 'documentUserUrl')
  List<Map<String, dynamic>>? get documentUserApplicationUrl;
  @override
  @JsonKey(ignore: true)
  _$$_SingleVisaResponseCopyWith<_$_SingleVisaResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
