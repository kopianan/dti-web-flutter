// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'application_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ApplicationState {
  bool get onLoading => throw _privateConstructorUsedError;
  String? get onError => throw _privateConstructorUsedError;
  String? get onSuccess => throw _privateConstructorUsedError;
  List<DocumentDataModel>? get documnets => throw _privateConstructorUsedError;
  List<Map<String, dynamic>>? get masterImagesDocument =>
      throw _privateConstructorUsedError;
  VisaApplicationModel? get visaApplicationModel =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ApplicationStateCopyWith<ApplicationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApplicationStateCopyWith<$Res> {
  factory $ApplicationStateCopyWith(
          ApplicationState value, $Res Function(ApplicationState) then) =
      _$ApplicationStateCopyWithImpl<$Res>;
  $Res call(
      {bool onLoading,
      String? onError,
      String? onSuccess,
      List<DocumentDataModel>? documnets,
      List<Map<String, dynamic>>? masterImagesDocument,
      VisaApplicationModel? visaApplicationModel});

  $VisaApplicationModelCopyWith<$Res>? get visaApplicationModel;
}

/// @nodoc
class _$ApplicationStateCopyWithImpl<$Res>
    implements $ApplicationStateCopyWith<$Res> {
  _$ApplicationStateCopyWithImpl(this._value, this._then);

  final ApplicationState _value;
  // ignore: unused_field
  final $Res Function(ApplicationState) _then;

  @override
  $Res call({
    Object? onLoading = freezed,
    Object? onError = freezed,
    Object? onSuccess = freezed,
    Object? documnets = freezed,
    Object? masterImagesDocument = freezed,
    Object? visaApplicationModel = freezed,
  }) {
    return _then(_value.copyWith(
      onLoading: onLoading == freezed
          ? _value.onLoading
          : onLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      onError: onError == freezed
          ? _value.onError
          : onError // ignore: cast_nullable_to_non_nullable
              as String?,
      onSuccess: onSuccess == freezed
          ? _value.onSuccess
          : onSuccess // ignore: cast_nullable_to_non_nullable
              as String?,
      documnets: documnets == freezed
          ? _value.documnets
          : documnets // ignore: cast_nullable_to_non_nullable
              as List<DocumentDataModel>?,
      masterImagesDocument: masterImagesDocument == freezed
          ? _value.masterImagesDocument
          : masterImagesDocument // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>?,
      visaApplicationModel: visaApplicationModel == freezed
          ? _value.visaApplicationModel
          : visaApplicationModel // ignore: cast_nullable_to_non_nullable
              as VisaApplicationModel?,
    ));
  }

  @override
  $VisaApplicationModelCopyWith<$Res>? get visaApplicationModel {
    if (_value.visaApplicationModel == null) {
      return null;
    }

    return $VisaApplicationModelCopyWith<$Res>(_value.visaApplicationModel!,
        (value) {
      return _then(_value.copyWith(visaApplicationModel: value));
    });
  }
}

/// @nodoc
abstract class _$$_ApplicationStateCopyWith<$Res>
    implements $ApplicationStateCopyWith<$Res> {
  factory _$$_ApplicationStateCopyWith(
          _$_ApplicationState value, $Res Function(_$_ApplicationState) then) =
      __$$_ApplicationStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool onLoading,
      String? onError,
      String? onSuccess,
      List<DocumentDataModel>? documnets,
      List<Map<String, dynamic>>? masterImagesDocument,
      VisaApplicationModel? visaApplicationModel});

  @override
  $VisaApplicationModelCopyWith<$Res>? get visaApplicationModel;
}

/// @nodoc
class __$$_ApplicationStateCopyWithImpl<$Res>
    extends _$ApplicationStateCopyWithImpl<$Res>
    implements _$$_ApplicationStateCopyWith<$Res> {
  __$$_ApplicationStateCopyWithImpl(
      _$_ApplicationState _value, $Res Function(_$_ApplicationState) _then)
      : super(_value, (v) => _then(v as _$_ApplicationState));

  @override
  _$_ApplicationState get _value => super._value as _$_ApplicationState;

  @override
  $Res call({
    Object? onLoading = freezed,
    Object? onError = freezed,
    Object? onSuccess = freezed,
    Object? documnets = freezed,
    Object? masterImagesDocument = freezed,
    Object? visaApplicationModel = freezed,
  }) {
    return _then(_$_ApplicationState(
      onLoading: onLoading == freezed
          ? _value.onLoading
          : onLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      onError: onError == freezed
          ? _value.onError
          : onError // ignore: cast_nullable_to_non_nullable
              as String?,
      onSuccess: onSuccess == freezed
          ? _value.onSuccess
          : onSuccess // ignore: cast_nullable_to_non_nullable
              as String?,
      documnets: documnets == freezed
          ? _value._documnets
          : documnets // ignore: cast_nullable_to_non_nullable
              as List<DocumentDataModel>?,
      masterImagesDocument: masterImagesDocument == freezed
          ? _value._masterImagesDocument
          : masterImagesDocument // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>?,
      visaApplicationModel: visaApplicationModel == freezed
          ? _value.visaApplicationModel
          : visaApplicationModel // ignore: cast_nullable_to_non_nullable
              as VisaApplicationModel?,
    ));
  }
}

/// @nodoc

class _$_ApplicationState implements _ApplicationState {
  const _$_ApplicationState(
      {this.onLoading = false,
      this.onError,
      this.onSuccess,
      final List<DocumentDataModel>? documnets,
      final List<Map<String, dynamic>>? masterImagesDocument,
      this.visaApplicationModel})
      : _documnets = documnets,
        _masterImagesDocument = masterImagesDocument;

  @override
  @JsonKey()
  final bool onLoading;
  @override
  final String? onError;
  @override
  final String? onSuccess;
  final List<DocumentDataModel>? _documnets;
  @override
  List<DocumentDataModel>? get documnets {
    final value = _documnets;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Map<String, dynamic>>? _masterImagesDocument;
  @override
  List<Map<String, dynamic>>? get masterImagesDocument {
    final value = _masterImagesDocument;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final VisaApplicationModel? visaApplicationModel;

  @override
  String toString() {
    return 'ApplicationState(onLoading: $onLoading, onError: $onError, onSuccess: $onSuccess, documnets: $documnets, masterImagesDocument: $masterImagesDocument, visaApplicationModel: $visaApplicationModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ApplicationState &&
            const DeepCollectionEquality().equals(other.onLoading, onLoading) &&
            const DeepCollectionEquality().equals(other.onError, onError) &&
            const DeepCollectionEquality().equals(other.onSuccess, onSuccess) &&
            const DeepCollectionEquality()
                .equals(other._documnets, _documnets) &&
            const DeepCollectionEquality()
                .equals(other._masterImagesDocument, _masterImagesDocument) &&
            const DeepCollectionEquality()
                .equals(other.visaApplicationModel, visaApplicationModel));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(onLoading),
      const DeepCollectionEquality().hash(onError),
      const DeepCollectionEquality().hash(onSuccess),
      const DeepCollectionEquality().hash(_documnets),
      const DeepCollectionEquality().hash(_masterImagesDocument),
      const DeepCollectionEquality().hash(visaApplicationModel));

  @JsonKey(ignore: true)
  @override
  _$$_ApplicationStateCopyWith<_$_ApplicationState> get copyWith =>
      __$$_ApplicationStateCopyWithImpl<_$_ApplicationState>(this, _$identity);
}

abstract class _ApplicationState implements ApplicationState {
  const factory _ApplicationState(
      {final bool onLoading,
      final String? onError,
      final String? onSuccess,
      final List<DocumentDataModel>? documnets,
      final List<Map<String, dynamic>>? masterImagesDocument,
      final VisaApplicationModel? visaApplicationModel}) = _$_ApplicationState;

  @override
  bool get onLoading;
  @override
  String? get onError;
  @override
  String? get onSuccess;
  @override
  List<DocumentDataModel>? get documnets;
  @override
  List<Map<String, dynamic>>? get masterImagesDocument;
  @override
  VisaApplicationModel? get visaApplicationModel;
  @override
  @JsonKey(ignore: true)
  _$$_ApplicationStateCopyWith<_$_ApplicationState> get copyWith =>
      throw _privateConstructorUsedError;
}
