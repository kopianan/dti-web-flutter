// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'create_edit_application_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CreateEditApplicationState {
  VisaApplicationModel? get visa => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateEditApplicationStateCopyWith<CreateEditApplicationState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateEditApplicationStateCopyWith<$Res> {
  factory $CreateEditApplicationStateCopyWith(CreateEditApplicationState value,
          $Res Function(CreateEditApplicationState) then) =
      _$CreateEditApplicationStateCopyWithImpl<$Res>;
  $Res call({VisaApplicationModel? visa});

  $VisaApplicationModelCopyWith<$Res>? get visa;
}

/// @nodoc
class _$CreateEditApplicationStateCopyWithImpl<$Res>
    implements $CreateEditApplicationStateCopyWith<$Res> {
  _$CreateEditApplicationStateCopyWithImpl(this._value, this._then);

  final CreateEditApplicationState _value;
  // ignore: unused_field
  final $Res Function(CreateEditApplicationState) _then;

  @override
  $Res call({
    Object? visa = freezed,
  }) {
    return _then(_value.copyWith(
      visa: visa == freezed
          ? _value.visa
          : visa // ignore: cast_nullable_to_non_nullable
              as VisaApplicationModel?,
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
}

/// @nodoc
abstract class _$$_CreateEditApplicationStateCopyWith<$Res>
    implements $CreateEditApplicationStateCopyWith<$Res> {
  factory _$$_CreateEditApplicationStateCopyWith(
          _$_CreateEditApplicationState value,
          $Res Function(_$_CreateEditApplicationState) then) =
      __$$_CreateEditApplicationStateCopyWithImpl<$Res>;
  @override
  $Res call({VisaApplicationModel? visa});

  @override
  $VisaApplicationModelCopyWith<$Res>? get visa;
}

/// @nodoc
class __$$_CreateEditApplicationStateCopyWithImpl<$Res>
    extends _$CreateEditApplicationStateCopyWithImpl<$Res>
    implements _$$_CreateEditApplicationStateCopyWith<$Res> {
  __$$_CreateEditApplicationStateCopyWithImpl(
      _$_CreateEditApplicationState _value,
      $Res Function(_$_CreateEditApplicationState) _then)
      : super(_value, (v) => _then(v as _$_CreateEditApplicationState));

  @override
  _$_CreateEditApplicationState get _value =>
      super._value as _$_CreateEditApplicationState;

  @override
  $Res call({
    Object? visa = freezed,
  }) {
    return _then(_$_CreateEditApplicationState(
      visa: visa == freezed
          ? _value.visa
          : visa // ignore: cast_nullable_to_non_nullable
              as VisaApplicationModel?,
    ));
  }
}

/// @nodoc

class _$_CreateEditApplicationState implements _CreateEditApplicationState {
  const _$_CreateEditApplicationState({this.visa});

  @override
  final VisaApplicationModel? visa;

  @override
  String toString() {
    return 'CreateEditApplicationState(visa: $visa)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateEditApplicationState &&
            const DeepCollectionEquality().equals(other.visa, visa));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(visa));

  @JsonKey(ignore: true)
  @override
  _$$_CreateEditApplicationStateCopyWith<_$_CreateEditApplicationState>
      get copyWith => __$$_CreateEditApplicationStateCopyWithImpl<
          _$_CreateEditApplicationState>(this, _$identity);
}

abstract class _CreateEditApplicationState
    implements CreateEditApplicationState {
  const factory _CreateEditApplicationState(
      {final VisaApplicationModel? visa}) = _$_CreateEditApplicationState;

  @override
  VisaApplicationModel? get visa;
  @override
  @JsonKey(ignore: true)
  _$$_CreateEditApplicationStateCopyWith<_$_CreateEditApplicationState>
      get copyWith => throw _privateConstructorUsedError;
}
