// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'document_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DocumentState {
  VisaApplicationModel? get visa => throw _privateConstructorUsedError;
  List<DocumentDataModel>? get docs => throw _privateConstructorUsedError;
  int? get selectedIndex => throw _privateConstructorUsedError;
  List<String>? get deletedImagesName => throw _privateConstructorUsedError;
  DocumentDataModel? get selectedDocument => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DocumentStateCopyWith<DocumentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DocumentStateCopyWith<$Res> {
  factory $DocumentStateCopyWith(
          DocumentState value, $Res Function(DocumentState) then) =
      _$DocumentStateCopyWithImpl<$Res>;
  $Res call(
      {VisaApplicationModel? visa,
      List<DocumentDataModel>? docs,
      int? selectedIndex,
      List<String>? deletedImagesName,
      DocumentDataModel? selectedDocument});

  $VisaApplicationModelCopyWith<$Res>? get visa;
  $DocumentDataModelCopyWith<$Res>? get selectedDocument;
}

/// @nodoc
class _$DocumentStateCopyWithImpl<$Res>
    implements $DocumentStateCopyWith<$Res> {
  _$DocumentStateCopyWithImpl(this._value, this._then);

  final DocumentState _value;
  // ignore: unused_field
  final $Res Function(DocumentState) _then;

  @override
  $Res call({
    Object? visa = freezed,
    Object? docs = freezed,
    Object? selectedIndex = freezed,
    Object? deletedImagesName = freezed,
    Object? selectedDocument = freezed,
  }) {
    return _then(_value.copyWith(
      visa: visa == freezed
          ? _value.visa
          : visa // ignore: cast_nullable_to_non_nullable
              as VisaApplicationModel?,
      docs: docs == freezed
          ? _value.docs
          : docs // ignore: cast_nullable_to_non_nullable
              as List<DocumentDataModel>?,
      selectedIndex: selectedIndex == freezed
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      deletedImagesName: deletedImagesName == freezed
          ? _value.deletedImagesName
          : deletedImagesName // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      selectedDocument: selectedDocument == freezed
          ? _value.selectedDocument
          : selectedDocument // ignore: cast_nullable_to_non_nullable
              as DocumentDataModel?,
    ));
  }

  @override
  $VisaApplicationModelCopyWith<$Res>? get visa {
    if (_value.visa == null) {
      return null;
    }

    return $VisaApplicationModelCopyWith<$Res>(_value.visa!, (value) {
      return _then(_value.copyWith(visa: value));
    });
  }

  @override
  $DocumentDataModelCopyWith<$Res>? get selectedDocument {
    if (_value.selectedDocument == null) {
      return null;
    }

    return $DocumentDataModelCopyWith<$Res>(_value.selectedDocument!, (value) {
      return _then(_value.copyWith(selectedDocument: value));
    });
  }
}

/// @nodoc
abstract class _$$_DocumentStateCopyWith<$Res>
    implements $DocumentStateCopyWith<$Res> {
  factory _$$_DocumentStateCopyWith(
          _$_DocumentState value, $Res Function(_$_DocumentState) then) =
      __$$_DocumentStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {VisaApplicationModel? visa,
      List<DocumentDataModel>? docs,
      int? selectedIndex,
      List<String>? deletedImagesName,
      DocumentDataModel? selectedDocument});

  @override
  $VisaApplicationModelCopyWith<$Res>? get visa;
  @override
  $DocumentDataModelCopyWith<$Res>? get selectedDocument;
}

/// @nodoc
class __$$_DocumentStateCopyWithImpl<$Res>
    extends _$DocumentStateCopyWithImpl<$Res>
    implements _$$_DocumentStateCopyWith<$Res> {
  __$$_DocumentStateCopyWithImpl(
      _$_DocumentState _value, $Res Function(_$_DocumentState) _then)
      : super(_value, (v) => _then(v as _$_DocumentState));

  @override
  _$_DocumentState get _value => super._value as _$_DocumentState;

  @override
  $Res call({
    Object? visa = freezed,
    Object? docs = freezed,
    Object? selectedIndex = freezed,
    Object? deletedImagesName = freezed,
    Object? selectedDocument = freezed,
  }) {
    return _then(_$_DocumentState(
      visa: visa == freezed
          ? _value.visa
          : visa // ignore: cast_nullable_to_non_nullable
              as VisaApplicationModel?,
      docs: docs == freezed
          ? _value.docs
          : docs // ignore: cast_nullable_to_non_nullable
              as List<DocumentDataModel>?,
      selectedIndex: selectedIndex == freezed
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      deletedImagesName: deletedImagesName == freezed
          ? _value.deletedImagesName
          : deletedImagesName // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      selectedDocument: selectedDocument == freezed
          ? _value.selectedDocument
          : selectedDocument // ignore: cast_nullable_to_non_nullable
              as DocumentDataModel?,
    ));
  }
}

/// @nodoc

class _$_DocumentState implements _DocumentState {
  _$_DocumentState(
      {this.visa,
      this.docs,
      this.selectedIndex,
      this.deletedImagesName,
      this.selectedDocument});

  @override
  final VisaApplicationModel? visa;
  @override
  final List<DocumentDataModel>? docs;
  @override
  final int? selectedIndex;
  @override
  final List<String>? deletedImagesName;
  @override
  final DocumentDataModel? selectedDocument;

  @override
  String toString() {
    return 'DocumentState(visa: $visa, docs: $docs, selectedIndex: $selectedIndex, deletedImagesName: $deletedImagesName, selectedDocument: $selectedDocument)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DocumentState &&
            const DeepCollectionEquality().equals(other.visa, visa) &&
            const DeepCollectionEquality().equals(other.docs, docs) &&
            const DeepCollectionEquality()
                .equals(other.selectedIndex, selectedIndex) &&
            const DeepCollectionEquality()
                .equals(other.deletedImagesName, deletedImagesName) &&
            const DeepCollectionEquality()
                .equals(other.selectedDocument, selectedDocument));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(visa),
      const DeepCollectionEquality().hash(docs),
      const DeepCollectionEquality().hash(selectedIndex),
      const DeepCollectionEquality().hash(deletedImagesName),
      const DeepCollectionEquality().hash(selectedDocument));

  @JsonKey(ignore: true)
  @override
  _$$_DocumentStateCopyWith<_$_DocumentState> get copyWith =>
      __$$_DocumentStateCopyWithImpl<_$_DocumentState>(this, _$identity);
}

abstract class _DocumentState implements DocumentState {
  factory _DocumentState(
      {final VisaApplicationModel? visa,
      final List<DocumentDataModel>? docs,
      final int? selectedIndex,
      final List<String>? deletedImagesName,
      final DocumentDataModel? selectedDocument}) = _$_DocumentState;

  @override
  VisaApplicationModel? get visa;
  @override
  List<DocumentDataModel>? get docs;
  @override
  int? get selectedIndex;
  @override
  List<String>? get deletedImagesName;
  @override
  DocumentDataModel? get selectedDocument;
  @override
  @JsonKey(ignore: true)
  _$$_DocumentStateCopyWith<_$_DocumentState> get copyWith =>
      throw _privateConstructorUsedError;
}
