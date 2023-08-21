// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

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
  List<DocumentDataModel> get initialDocs => throw _privateConstructorUsedError;
  int? get selectedIndex => throw _privateConstructorUsedError;
  List<Map<String, dynamic>> get masterListData =>
      throw _privateConstructorUsedError;
  List<String>? get selectedMasterListData =>
      throw _privateConstructorUsedError;
  List<String>? get deletedImagesName => throw _privateConstructorUsedError;
  DocumentDataModel? get selectedDocument => throw _privateConstructorUsedError;
  Map<String, dynamic>? get selectedDataCollection =>
      throw _privateConstructorUsedError;
  Map<String, dynamic>? get selfie => throw _privateConstructorUsedError;
  String? get deletedSelfiePhoto => throw _privateConstructorUsedError;
  int? get selectedDataType => throw _privateConstructorUsedError;
  bool get isAllRead => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DocumentStateCopyWith<DocumentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DocumentStateCopyWith<$Res> {
  factory $DocumentStateCopyWith(
          DocumentState value, $Res Function(DocumentState) then) =
      _$DocumentStateCopyWithImpl<$Res, DocumentState>;
  @useResult
  $Res call(
      {VisaApplicationModel? visa,
      List<DocumentDataModel>? docs,
      List<DocumentDataModel> initialDocs,
      int? selectedIndex,
      List<Map<String, dynamic>> masterListData,
      List<String>? selectedMasterListData,
      List<String>? deletedImagesName,
      DocumentDataModel? selectedDocument,
      Map<String, dynamic>? selectedDataCollection,
      Map<String, dynamic>? selfie,
      String? deletedSelfiePhoto,
      int? selectedDataType,
      bool isAllRead});

  $VisaApplicationModelCopyWith<$Res>? get visa;
  $DocumentDataModelCopyWith<$Res>? get selectedDocument;
}

/// @nodoc
class _$DocumentStateCopyWithImpl<$Res, $Val extends DocumentState>
    implements $DocumentStateCopyWith<$Res> {
  _$DocumentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? visa = freezed,
    Object? docs = freezed,
    Object? initialDocs = null,
    Object? selectedIndex = freezed,
    Object? masterListData = null,
    Object? selectedMasterListData = freezed,
    Object? deletedImagesName = freezed,
    Object? selectedDocument = freezed,
    Object? selectedDataCollection = freezed,
    Object? selfie = freezed,
    Object? deletedSelfiePhoto = freezed,
    Object? selectedDataType = freezed,
    Object? isAllRead = null,
  }) {
    return _then(_value.copyWith(
      visa: freezed == visa
          ? _value.visa
          : visa // ignore: cast_nullable_to_non_nullable
              as VisaApplicationModel?,
      docs: freezed == docs
          ? _value.docs
          : docs // ignore: cast_nullable_to_non_nullable
              as List<DocumentDataModel>?,
      initialDocs: null == initialDocs
          ? _value.initialDocs
          : initialDocs // ignore: cast_nullable_to_non_nullable
              as List<DocumentDataModel>,
      selectedIndex: freezed == selectedIndex
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      masterListData: null == masterListData
          ? _value.masterListData
          : masterListData // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      selectedMasterListData: freezed == selectedMasterListData
          ? _value.selectedMasterListData
          : selectedMasterListData // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      deletedImagesName: freezed == deletedImagesName
          ? _value.deletedImagesName
          : deletedImagesName // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      selectedDocument: freezed == selectedDocument
          ? _value.selectedDocument
          : selectedDocument // ignore: cast_nullable_to_non_nullable
              as DocumentDataModel?,
      selectedDataCollection: freezed == selectedDataCollection
          ? _value.selectedDataCollection
          : selectedDataCollection // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      selfie: freezed == selfie
          ? _value.selfie
          : selfie // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      deletedSelfiePhoto: freezed == deletedSelfiePhoto
          ? _value.deletedSelfiePhoto
          : deletedSelfiePhoto // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedDataType: freezed == selectedDataType
          ? _value.selectedDataType
          : selectedDataType // ignore: cast_nullable_to_non_nullable
              as int?,
      isAllRead: null == isAllRead
          ? _value.isAllRead
          : isAllRead // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $VisaApplicationModelCopyWith<$Res>? get visa {
    if (_value.visa == null) {
      return null;
    }

    return $VisaApplicationModelCopyWith<$Res>(_value.visa!, (value) {
      return _then(_value.copyWith(visa: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DocumentDataModelCopyWith<$Res>? get selectedDocument {
    if (_value.selectedDocument == null) {
      return null;
    }

    return $DocumentDataModelCopyWith<$Res>(_value.selectedDocument!, (value) {
      return _then(_value.copyWith(selectedDocument: value) as $Val);
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
  @useResult
  $Res call(
      {VisaApplicationModel? visa,
      List<DocumentDataModel>? docs,
      List<DocumentDataModel> initialDocs,
      int? selectedIndex,
      List<Map<String, dynamic>> masterListData,
      List<String>? selectedMasterListData,
      List<String>? deletedImagesName,
      DocumentDataModel? selectedDocument,
      Map<String, dynamic>? selectedDataCollection,
      Map<String, dynamic>? selfie,
      String? deletedSelfiePhoto,
      int? selectedDataType,
      bool isAllRead});

  @override
  $VisaApplicationModelCopyWith<$Res>? get visa;
  @override
  $DocumentDataModelCopyWith<$Res>? get selectedDocument;
}

/// @nodoc
class __$$_DocumentStateCopyWithImpl<$Res>
    extends _$DocumentStateCopyWithImpl<$Res, _$_DocumentState>
    implements _$$_DocumentStateCopyWith<$Res> {
  __$$_DocumentStateCopyWithImpl(
      _$_DocumentState _value, $Res Function(_$_DocumentState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? visa = freezed,
    Object? docs = freezed,
    Object? initialDocs = null,
    Object? selectedIndex = freezed,
    Object? masterListData = null,
    Object? selectedMasterListData = freezed,
    Object? deletedImagesName = freezed,
    Object? selectedDocument = freezed,
    Object? selectedDataCollection = freezed,
    Object? selfie = freezed,
    Object? deletedSelfiePhoto = freezed,
    Object? selectedDataType = freezed,
    Object? isAllRead = null,
  }) {
    return _then(_$_DocumentState(
      visa: freezed == visa
          ? _value.visa
          : visa // ignore: cast_nullable_to_non_nullable
              as VisaApplicationModel?,
      docs: freezed == docs
          ? _value.docs
          : docs // ignore: cast_nullable_to_non_nullable
              as List<DocumentDataModel>?,
      initialDocs: null == initialDocs
          ? _value.initialDocs
          : initialDocs // ignore: cast_nullable_to_non_nullable
              as List<DocumentDataModel>,
      selectedIndex: freezed == selectedIndex
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      masterListData: null == masterListData
          ? _value.masterListData
          : masterListData // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      selectedMasterListData: freezed == selectedMasterListData
          ? _value.selectedMasterListData
          : selectedMasterListData // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      deletedImagesName: freezed == deletedImagesName
          ? _value.deletedImagesName
          : deletedImagesName // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      selectedDocument: freezed == selectedDocument
          ? _value.selectedDocument
          : selectedDocument // ignore: cast_nullable_to_non_nullable
              as DocumentDataModel?,
      selectedDataCollection: freezed == selectedDataCollection
          ? _value.selectedDataCollection
          : selectedDataCollection // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      selfie: freezed == selfie
          ? _value.selfie
          : selfie // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      deletedSelfiePhoto: freezed == deletedSelfiePhoto
          ? _value.deletedSelfiePhoto
          : deletedSelfiePhoto // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedDataType: freezed == selectedDataType
          ? _value.selectedDataType
          : selectedDataType // ignore: cast_nullable_to_non_nullable
              as int?,
      isAllRead: null == isAllRead
          ? _value.isAllRead
          : isAllRead // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_DocumentState with DiagnosticableTreeMixin implements _DocumentState {
  _$_DocumentState(
      {this.visa,
      this.docs,
      this.initialDocs = const [],
      this.selectedIndex,
      this.masterListData = const [],
      this.selectedMasterListData,
      this.deletedImagesName,
      this.selectedDocument,
      this.selectedDataCollection,
      this.selfie,
      this.deletedSelfiePhoto,
      this.selectedDataType,
      this.isAllRead = false});

  @override
  final VisaApplicationModel? visa;
  @override
  final List<DocumentDataModel>? docs;
  @override
  @JsonKey()
  final List<DocumentDataModel> initialDocs;
  @override
  final int? selectedIndex;
  @override
  @JsonKey()
  final List<Map<String, dynamic>> masterListData;
  @override
  final List<String>? selectedMasterListData;
  @override
  final List<String>? deletedImagesName;
  @override
  final DocumentDataModel? selectedDocument;
  @override
  final Map<String, dynamic>? selectedDataCollection;
  @override
  final Map<String, dynamic>? selfie;
  @override
  final String? deletedSelfiePhoto;
  @override
  final int? selectedDataType;
  @override
  @JsonKey()
  final bool isAllRead;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DocumentState(visa: $visa, docs: $docs, initialDocs: $initialDocs, selectedIndex: $selectedIndex, masterListData: $masterListData, selectedMasterListData: $selectedMasterListData, deletedImagesName: $deletedImagesName, selectedDocument: $selectedDocument, selectedDataCollection: $selectedDataCollection, selfie: $selfie, deletedSelfiePhoto: $deletedSelfiePhoto, selectedDataType: $selectedDataType, isAllRead: $isAllRead)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DocumentState'))
      ..add(DiagnosticsProperty('visa', visa))
      ..add(DiagnosticsProperty('docs', docs))
      ..add(DiagnosticsProperty('initialDocs', initialDocs))
      ..add(DiagnosticsProperty('selectedIndex', selectedIndex))
      ..add(DiagnosticsProperty('masterListData', masterListData))
      ..add(
          DiagnosticsProperty('selectedMasterListData', selectedMasterListData))
      ..add(DiagnosticsProperty('deletedImagesName', deletedImagesName))
      ..add(DiagnosticsProperty('selectedDocument', selectedDocument))
      ..add(
          DiagnosticsProperty('selectedDataCollection', selectedDataCollection))
      ..add(DiagnosticsProperty('selfie', selfie))
      ..add(DiagnosticsProperty('deletedSelfiePhoto', deletedSelfiePhoto))
      ..add(DiagnosticsProperty('selectedDataType', selectedDataType))
      ..add(DiagnosticsProperty('isAllRead', isAllRead));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DocumentState &&
            (identical(other.visa, visa) || other.visa == visa) &&
            const DeepCollectionEquality().equals(other.docs, docs) &&
            const DeepCollectionEquality()
                .equals(other.initialDocs, initialDocs) &&
            (identical(other.selectedIndex, selectedIndex) ||
                other.selectedIndex == selectedIndex) &&
            const DeepCollectionEquality()
                .equals(other.masterListData, masterListData) &&
            const DeepCollectionEquality()
                .equals(other.selectedMasterListData, selectedMasterListData) &&
            const DeepCollectionEquality()
                .equals(other.deletedImagesName, deletedImagesName) &&
            (identical(other.selectedDocument, selectedDocument) ||
                other.selectedDocument == selectedDocument) &&
            const DeepCollectionEquality()
                .equals(other.selectedDataCollection, selectedDataCollection) &&
            const DeepCollectionEquality().equals(other.selfie, selfie) &&
            (identical(other.deletedSelfiePhoto, deletedSelfiePhoto) ||
                other.deletedSelfiePhoto == deletedSelfiePhoto) &&
            (identical(other.selectedDataType, selectedDataType) ||
                other.selectedDataType == selectedDataType) &&
            (identical(other.isAllRead, isAllRead) ||
                other.isAllRead == isAllRead));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      visa,
      const DeepCollectionEquality().hash(docs),
      const DeepCollectionEquality().hash(initialDocs),
      selectedIndex,
      const DeepCollectionEquality().hash(masterListData),
      const DeepCollectionEquality().hash(selectedMasterListData),
      const DeepCollectionEquality().hash(deletedImagesName),
      selectedDocument,
      const DeepCollectionEquality().hash(selectedDataCollection),
      const DeepCollectionEquality().hash(selfie),
      deletedSelfiePhoto,
      selectedDataType,
      isAllRead);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DocumentStateCopyWith<_$_DocumentState> get copyWith =>
      __$$_DocumentStateCopyWithImpl<_$_DocumentState>(this, _$identity);
}

abstract class _DocumentState implements DocumentState {
  factory _DocumentState(
      {final VisaApplicationModel? visa,
      final List<DocumentDataModel>? docs,
      final List<DocumentDataModel> initialDocs,
      final int? selectedIndex,
      final List<Map<String, dynamic>> masterListData,
      final List<String>? selectedMasterListData,
      final List<String>? deletedImagesName,
      final DocumentDataModel? selectedDocument,
      final Map<String, dynamic>? selectedDataCollection,
      final Map<String, dynamic>? selfie,
      final String? deletedSelfiePhoto,
      final int? selectedDataType,
      final bool isAllRead}) = _$_DocumentState;

  @override
  VisaApplicationModel? get visa;
  @override
  List<DocumentDataModel>? get docs;
  @override
  List<DocumentDataModel> get initialDocs;
  @override
  int? get selectedIndex;
  @override
  List<Map<String, dynamic>> get masterListData;
  @override
  List<String>? get selectedMasterListData;
  @override
  List<String>? get deletedImagesName;
  @override
  DocumentDataModel? get selectedDocument;
  @override
  Map<String, dynamic>? get selectedDataCollection;
  @override
  Map<String, dynamic>? get selfie;
  @override
  String? get deletedSelfiePhoto;
  @override
  int? get selectedDataType;
  @override
  bool get isAllRead;
  @override
  @JsonKey(ignore: true)
  _$$_DocumentStateCopyWith<_$_DocumentState> get copyWith =>
      throw _privateConstructorUsedError;
}
