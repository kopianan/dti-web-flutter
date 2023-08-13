// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'camera_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CameraState {
  XFile? get file => throw _privateConstructorUsedError;
  CameraStatus get status => throw _privateConstructorUsedError;
  Uint8List? get bytes => throw _privateConstructorUsedError;
  String get cameraError => throw _privateConstructorUsedError;
  List<CameraDescription> get cameras => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CameraStateCopyWith<CameraState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CameraStateCopyWith<$Res> {
  factory $CameraStateCopyWith(
          CameraState value, $Res Function(CameraState) then) =
      _$CameraStateCopyWithImpl<$Res, CameraState>;
  @useResult
  $Res call(
      {XFile? file,
      CameraStatus status,
      Uint8List? bytes,
      String cameraError,
      List<CameraDescription> cameras});
}

/// @nodoc
class _$CameraStateCopyWithImpl<$Res, $Val extends CameraState>
    implements $CameraStateCopyWith<$Res> {
  _$CameraStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? file = freezed,
    Object? status = null,
    Object? bytes = freezed,
    Object? cameraError = null,
    Object? cameras = null,
  }) {
    return _then(_value.copyWith(
      file: freezed == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as XFile?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CameraStatus,
      bytes: freezed == bytes
          ? _value.bytes
          : bytes // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
      cameraError: null == cameraError
          ? _value.cameraError
          : cameraError // ignore: cast_nullable_to_non_nullable
              as String,
      cameras: null == cameras
          ? _value.cameras
          : cameras // ignore: cast_nullable_to_non_nullable
              as List<CameraDescription>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CameraStateCopyWith<$Res>
    implements $CameraStateCopyWith<$Res> {
  factory _$$_CameraStateCopyWith(
          _$_CameraState value, $Res Function(_$_CameraState) then) =
      __$$_CameraStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {XFile? file,
      CameraStatus status,
      Uint8List? bytes,
      String cameraError,
      List<CameraDescription> cameras});
}

/// @nodoc
class __$$_CameraStateCopyWithImpl<$Res>
    extends _$CameraStateCopyWithImpl<$Res, _$_CameraState>
    implements _$$_CameraStateCopyWith<$Res> {
  __$$_CameraStateCopyWithImpl(
      _$_CameraState _value, $Res Function(_$_CameraState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? file = freezed,
    Object? status = null,
    Object? bytes = freezed,
    Object? cameraError = null,
    Object? cameras = null,
  }) {
    return _then(_$_CameraState(
      file: freezed == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as XFile?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CameraStatus,
      bytes: freezed == bytes
          ? _value.bytes
          : bytes // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
      cameraError: null == cameraError
          ? _value.cameraError
          : cameraError // ignore: cast_nullable_to_non_nullable
              as String,
      cameras: null == cameras
          ? _value._cameras
          : cameras // ignore: cast_nullable_to_non_nullable
              as List<CameraDescription>,
    ));
  }
}

/// @nodoc

class _$_CameraState with DiagnosticableTreeMixin implements _CameraState {
  _$_CameraState(
      {this.file,
      required this.status,
      this.bytes,
      this.cameraError = '',
      final List<CameraDescription> cameras = const []})
      : _cameras = cameras;

  @override
  final XFile? file;
  @override
  final CameraStatus status;
  @override
  final Uint8List? bytes;
  @override
  @JsonKey()
  final String cameraError;
  final List<CameraDescription> _cameras;
  @override
  @JsonKey()
  List<CameraDescription> get cameras {
    if (_cameras is EqualUnmodifiableListView) return _cameras;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cameras);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CameraState(file: $file, status: $status, bytes: $bytes, cameraError: $cameraError, cameras: $cameras)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CameraState'))
      ..add(DiagnosticsProperty('file', file))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('bytes', bytes))
      ..add(DiagnosticsProperty('cameraError', cameraError))
      ..add(DiagnosticsProperty('cameras', cameras));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CameraState &&
            (identical(other.file, file) || other.file == file) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other.bytes, bytes) &&
            (identical(other.cameraError, cameraError) ||
                other.cameraError == cameraError) &&
            const DeepCollectionEquality().equals(other._cameras, _cameras));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      file,
      status,
      const DeepCollectionEquality().hash(bytes),
      cameraError,
      const DeepCollectionEquality().hash(_cameras));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CameraStateCopyWith<_$_CameraState> get copyWith =>
      __$$_CameraStateCopyWithImpl<_$_CameraState>(this, _$identity);
}

abstract class _CameraState implements CameraState {
  factory _CameraState(
      {final XFile? file,
      required final CameraStatus status,
      final Uint8List? bytes,
      final String cameraError,
      final List<CameraDescription> cameras}) = _$_CameraState;

  @override
  XFile? get file;
  @override
  CameraStatus get status;
  @override
  Uint8List? get bytes;
  @override
  String get cameraError;
  @override
  List<CameraDescription> get cameras;
  @override
  @JsonKey(ignore: true)
  _$$_CameraStateCopyWith<_$_CameraState> get copyWith =>
      throw _privateConstructorUsedError;
}
