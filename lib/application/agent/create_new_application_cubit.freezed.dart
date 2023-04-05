// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'create_new_application_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CreateNewApplicationState {
  FilePickerResult? get pickedFile => throw _privateConstructorUsedError;
  Uint8List? get excelBytes => throw _privateConstructorUsedError;
  List<Data?> get header => throw _privateConstructorUsedError;
  List<List<Data?>> get body => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateNewApplicationStateCopyWith<CreateNewApplicationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateNewApplicationStateCopyWith<$Res> {
  factory $CreateNewApplicationStateCopyWith(CreateNewApplicationState value,
          $Res Function(CreateNewApplicationState) then) =
      _$CreateNewApplicationStateCopyWithImpl<$Res>;
  $Res call(
      {FilePickerResult? pickedFile,
      Uint8List? excelBytes,
      List<Data?> header,
      List<List<Data?>> body});
}

/// @nodoc
class _$CreateNewApplicationStateCopyWithImpl<$Res>
    implements $CreateNewApplicationStateCopyWith<$Res> {
  _$CreateNewApplicationStateCopyWithImpl(this._value, this._then);

  final CreateNewApplicationState _value;
  // ignore: unused_field
  final $Res Function(CreateNewApplicationState) _then;

  @override
  $Res call({
    Object? pickedFile = freezed,
    Object? excelBytes = freezed,
    Object? header = freezed,
    Object? body = freezed,
  }) {
    return _then(_value.copyWith(
      pickedFile: pickedFile == freezed
          ? _value.pickedFile
          : pickedFile // ignore: cast_nullable_to_non_nullable
              as FilePickerResult?,
      excelBytes: excelBytes == freezed
          ? _value.excelBytes
          : excelBytes // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
      header: header == freezed
          ? _value.header
          : header // ignore: cast_nullable_to_non_nullable
              as List<Data?>,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as List<List<Data?>>,
    ));
  }
}

/// @nodoc
abstract class _$$_CreateNewApplicationCubitCopyWith<$Res>
    implements $CreateNewApplicationStateCopyWith<$Res> {
  factory _$$_CreateNewApplicationCubitCopyWith(
          _$_CreateNewApplicationCubit value,
          $Res Function(_$_CreateNewApplicationCubit) then) =
      __$$_CreateNewApplicationCubitCopyWithImpl<$Res>;
  @override
  $Res call(
      {FilePickerResult? pickedFile,
      Uint8List? excelBytes,
      List<Data?> header,
      List<List<Data?>> body});
}

/// @nodoc
class __$$_CreateNewApplicationCubitCopyWithImpl<$Res>
    extends _$CreateNewApplicationStateCopyWithImpl<$Res>
    implements _$$_CreateNewApplicationCubitCopyWith<$Res> {
  __$$_CreateNewApplicationCubitCopyWithImpl(
      _$_CreateNewApplicationCubit _value,
      $Res Function(_$_CreateNewApplicationCubit) _then)
      : super(_value, (v) => _then(v as _$_CreateNewApplicationCubit));

  @override
  _$_CreateNewApplicationCubit get _value =>
      super._value as _$_CreateNewApplicationCubit;

  @override
  $Res call({
    Object? pickedFile = freezed,
    Object? excelBytes = freezed,
    Object? header = freezed,
    Object? body = freezed,
  }) {
    return _then(_$_CreateNewApplicationCubit(
      pickedFile: pickedFile == freezed
          ? _value.pickedFile
          : pickedFile // ignore: cast_nullable_to_non_nullable
              as FilePickerResult?,
      excelBytes: excelBytes == freezed
          ? _value.excelBytes
          : excelBytes // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
      header: header == freezed
          ? _value._header
          : header // ignore: cast_nullable_to_non_nullable
              as List<Data?>,
      body: body == freezed
          ? _value._body
          : body // ignore: cast_nullable_to_non_nullable
              as List<List<Data?>>,
    ));
  }
}

/// @nodoc

class _$_CreateNewApplicationCubit
    with DiagnosticableTreeMixin
    implements _CreateNewApplicationCubit {
  _$_CreateNewApplicationCubit(
      {this.pickedFile,
      this.excelBytes,
      required final List<Data?> header,
      required final List<List<Data?>> body})
      : _header = header,
        _body = body;

  @override
  final FilePickerResult? pickedFile;
  @override
  final Uint8List? excelBytes;
  final List<Data?> _header;
  @override
  List<Data?> get header {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_header);
  }

  final List<List<Data?>> _body;
  @override
  List<List<Data?>> get body {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_body);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CreateNewApplicationState(pickedFile: $pickedFile, excelBytes: $excelBytes, header: $header, body: $body)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CreateNewApplicationState'))
      ..add(DiagnosticsProperty('pickedFile', pickedFile))
      ..add(DiagnosticsProperty('excelBytes', excelBytes))
      ..add(DiagnosticsProperty('header', header))
      ..add(DiagnosticsProperty('body', body));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateNewApplicationCubit &&
            const DeepCollectionEquality()
                .equals(other.pickedFile, pickedFile) &&
            const DeepCollectionEquality()
                .equals(other.excelBytes, excelBytes) &&
            const DeepCollectionEquality().equals(other._header, _header) &&
            const DeepCollectionEquality().equals(other._body, _body));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(pickedFile),
      const DeepCollectionEquality().hash(excelBytes),
      const DeepCollectionEquality().hash(_header),
      const DeepCollectionEquality().hash(_body));

  @JsonKey(ignore: true)
  @override
  _$$_CreateNewApplicationCubitCopyWith<_$_CreateNewApplicationCubit>
      get copyWith => __$$_CreateNewApplicationCubitCopyWithImpl<
          _$_CreateNewApplicationCubit>(this, _$identity);
}

abstract class _CreateNewApplicationCubit implements CreateNewApplicationState {
  factory _CreateNewApplicationCubit(
      {final FilePickerResult? pickedFile,
      final Uint8List? excelBytes,
      required final List<Data?> header,
      required final List<List<Data?>> body}) = _$_CreateNewApplicationCubit;

  @override
  FilePickerResult? get pickedFile;
  @override
  Uint8List? get excelBytes;
  @override
  List<Data?> get header;
  @override
  List<List<Data?>> get body;
  @override
  @JsonKey(ignore: true)
  _$$_CreateNewApplicationCubitCopyWith<_$_CreateNewApplicationCubit>
      get copyWith => throw _privateConstructorUsedError;
}
