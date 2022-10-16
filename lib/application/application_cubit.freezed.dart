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
  List<DocumentDataModel>? get documnets => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ApplicationStateCopyWith<ApplicationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApplicationStateCopyWith<$Res> {
  factory $ApplicationStateCopyWith(
          ApplicationState value, $Res Function(ApplicationState) then) =
      _$ApplicationStateCopyWithImpl<$Res>;
  $Res call({List<DocumentDataModel>? documnets});
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
    Object? documnets = freezed,
  }) {
    return _then(_value.copyWith(
      documnets: documnets == freezed
          ? _value.documnets
          : documnets // ignore: cast_nullable_to_non_nullable
              as List<DocumentDataModel>?,
    ));
  }
}

/// @nodoc
abstract class _$$_ApplicationStateCopyWith<$Res>
    implements $ApplicationStateCopyWith<$Res> {
  factory _$$_ApplicationStateCopyWith(
          _$_ApplicationState value, $Res Function(_$_ApplicationState) then) =
      __$$_ApplicationStateCopyWithImpl<$Res>;
  @override
  $Res call({List<DocumentDataModel>? documnets});
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
    Object? documnets = freezed,
  }) {
    return _then(_$_ApplicationState(
      documnets: documnets == freezed
          ? _value._documnets
          : documnets // ignore: cast_nullable_to_non_nullable
              as List<DocumentDataModel>?,
    ));
  }
}

/// @nodoc

class _$_ApplicationState implements _ApplicationState {
  const _$_ApplicationState({final List<DocumentDataModel>? documnets})
      : _documnets = documnets;

  final List<DocumentDataModel>? _documnets;
  @override
  List<DocumentDataModel>? get documnets {
    final value = _documnets;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ApplicationState(documnets: $documnets)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ApplicationState &&
            const DeepCollectionEquality()
                .equals(other._documnets, _documnets));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_documnets));

  @JsonKey(ignore: true)
  @override
  _$$_ApplicationStateCopyWith<_$_ApplicationState> get copyWith =>
      __$$_ApplicationStateCopyWithImpl<_$_ApplicationState>(this, _$identity);
}

abstract class _ApplicationState implements ApplicationState {
  const factory _ApplicationState({final List<DocumentDataModel>? documnets}) =
      _$_ApplicationState;

  @override
  List<DocumentDataModel>? get documnets;
  @override
  @JsonKey(ignore: true)
  _$$_ApplicationStateCopyWith<_$_ApplicationState> get copyWith =>
      throw _privateConstructorUsedError;
}
