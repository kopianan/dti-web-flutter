// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

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
  List<Map<String, dynamic>>? get masterListData =>
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
      _$ApplicationStateCopyWithImpl<$Res, ApplicationState>;
  @useResult
  $Res call(
      {bool onLoading,
      String? onError,
      String? onSuccess,
      List<DocumentDataModel>? documnets,
      List<Map<String, dynamic>>? masterListData,
      VisaApplicationModel? visaApplicationModel});

  $VisaApplicationModelCopyWith<$Res>? get visaApplicationModel;
}

/// @nodoc
class _$ApplicationStateCopyWithImpl<$Res, $Val extends ApplicationState>
    implements $ApplicationStateCopyWith<$Res> {
  _$ApplicationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? onLoading = null,
    Object? onError = freezed,
    Object? onSuccess = freezed,
    Object? documnets = freezed,
    Object? masterListData = freezed,
    Object? visaApplicationModel = freezed,
  }) {
    return _then(_value.copyWith(
      onLoading: null == onLoading
          ? _value.onLoading
          : onLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      onError: freezed == onError
          ? _value.onError
          : onError // ignore: cast_nullable_to_non_nullable
              as String?,
      onSuccess: freezed == onSuccess
          ? _value.onSuccess
          : onSuccess // ignore: cast_nullable_to_non_nullable
              as String?,
      documnets: freezed == documnets
          ? _value.documnets
          : documnets // ignore: cast_nullable_to_non_nullable
              as List<DocumentDataModel>?,
      masterListData: freezed == masterListData
          ? _value.masterListData
          : masterListData // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>?,
      visaApplicationModel: freezed == visaApplicationModel
          ? _value.visaApplicationModel
          : visaApplicationModel // ignore: cast_nullable_to_non_nullable
              as VisaApplicationModel?,
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
abstract class _$$_ApplicationStateCopyWith<$Res>
    implements $ApplicationStateCopyWith<$Res> {
  factory _$$_ApplicationStateCopyWith(
          _$_ApplicationState value, $Res Function(_$_ApplicationState) then) =
      __$$_ApplicationStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool onLoading,
      String? onError,
      String? onSuccess,
      List<DocumentDataModel>? documnets,
      List<Map<String, dynamic>>? masterListData,
      VisaApplicationModel? visaApplicationModel});

  @override
  $VisaApplicationModelCopyWith<$Res>? get visaApplicationModel;
}

/// @nodoc
class __$$_ApplicationStateCopyWithImpl<$Res>
    extends _$ApplicationStateCopyWithImpl<$Res, _$_ApplicationState>
    implements _$$_ApplicationStateCopyWith<$Res> {
  __$$_ApplicationStateCopyWithImpl(
      _$_ApplicationState _value, $Res Function(_$_ApplicationState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? onLoading = null,
    Object? onError = freezed,
    Object? onSuccess = freezed,
    Object? documnets = freezed,
    Object? masterListData = freezed,
    Object? visaApplicationModel = freezed,
  }) {
    return _then(_$_ApplicationState(
      onLoading: null == onLoading
          ? _value.onLoading
          : onLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      onError: freezed == onError
          ? _value.onError
          : onError // ignore: cast_nullable_to_non_nullable
              as String?,
      onSuccess: freezed == onSuccess
          ? _value.onSuccess
          : onSuccess // ignore: cast_nullable_to_non_nullable
              as String?,
      documnets: freezed == documnets
          ? _value._documnets
          : documnets // ignore: cast_nullable_to_non_nullable
              as List<DocumentDataModel>?,
      masterListData: freezed == masterListData
          ? _value._masterListData
          : masterListData // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>?,
      visaApplicationModel: freezed == visaApplicationModel
          ? _value.visaApplicationModel
          : visaApplicationModel // ignore: cast_nullable_to_non_nullable
              as VisaApplicationModel?,
    ));
  }
}

/// @nodoc

class _$_ApplicationState
    with DiagnosticableTreeMixin
    implements _ApplicationState {
  const _$_ApplicationState(
      {this.onLoading = false,
      this.onError,
      this.onSuccess,
      final List<DocumentDataModel>? documnets,
      final List<Map<String, dynamic>>? masterListData,
      this.visaApplicationModel})
      : _documnets = documnets,
        _masterListData = masterListData;

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
    if (_documnets is EqualUnmodifiableListView) return _documnets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Map<String, dynamic>>? _masterListData;
  @override
  List<Map<String, dynamic>>? get masterListData {
    final value = _masterListData;
    if (value == null) return null;
    if (_masterListData is EqualUnmodifiableListView) return _masterListData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final VisaApplicationModel? visaApplicationModel;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ApplicationState(onLoading: $onLoading, onError: $onError, onSuccess: $onSuccess, documnets: $documnets, masterListData: $masterListData, visaApplicationModel: $visaApplicationModel)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ApplicationState'))
      ..add(DiagnosticsProperty('onLoading', onLoading))
      ..add(DiagnosticsProperty('onError', onError))
      ..add(DiagnosticsProperty('onSuccess', onSuccess))
      ..add(DiagnosticsProperty('documnets', documnets))
      ..add(DiagnosticsProperty('masterListData', masterListData))
      ..add(DiagnosticsProperty('visaApplicationModel', visaApplicationModel));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ApplicationState &&
            (identical(other.onLoading, onLoading) ||
                other.onLoading == onLoading) &&
            (identical(other.onError, onError) || other.onError == onError) &&
            (identical(other.onSuccess, onSuccess) ||
                other.onSuccess == onSuccess) &&
            const DeepCollectionEquality()
                .equals(other._documnets, _documnets) &&
            const DeepCollectionEquality()
                .equals(other._masterListData, _masterListData) &&
            (identical(other.visaApplicationModel, visaApplicationModel) ||
                other.visaApplicationModel == visaApplicationModel));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      onLoading,
      onError,
      onSuccess,
      const DeepCollectionEquality().hash(_documnets),
      const DeepCollectionEquality().hash(_masterListData),
      visaApplicationModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ApplicationStateCopyWith<_$_ApplicationState> get copyWith =>
      __$$_ApplicationStateCopyWithImpl<_$_ApplicationState>(this, _$identity);
}

abstract class _ApplicationState implements ApplicationState {
  const factory _ApplicationState(
      {final bool onLoading,
      final String? onError,
      final String? onSuccess,
      final List<DocumentDataModel>? documnets,
      final List<Map<String, dynamic>>? masterListData,
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
  List<Map<String, dynamic>>? get masterListData;
  @override
  VisaApplicationModel? get visaApplicationModel;
  @override
  @JsonKey(ignore: true)
  _$$_ApplicationStateCopyWith<_$_ApplicationState> get copyWith =>
      throw _privateConstructorUsedError;
}
