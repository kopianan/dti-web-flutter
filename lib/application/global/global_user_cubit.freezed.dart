// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'global_user_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GlobalUserState {
  UserData get user => throw _privateConstructorUsedError;
  bool get isAgent => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GlobalUserStateCopyWith<GlobalUserState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GlobalUserStateCopyWith<$Res> {
  factory $GlobalUserStateCopyWith(
          GlobalUserState value, $Res Function(GlobalUserState) then) =
      _$GlobalUserStateCopyWithImpl<$Res, GlobalUserState>;
  @useResult
  $Res call({UserData user, bool isAgent});

  $UserDataCopyWith<$Res> get user;
}

/// @nodoc
class _$GlobalUserStateCopyWithImpl<$Res, $Val extends GlobalUserState>
    implements $GlobalUserStateCopyWith<$Res> {
  _$GlobalUserStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? isAgent = null,
  }) {
    return _then(_value.copyWith(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserData,
      isAgent: null == isAgent
          ? _value.isAgent
          : isAgent // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserDataCopyWith<$Res> get user {
    return $UserDataCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_GlobalUserStateCopyWith<$Res>
    implements $GlobalUserStateCopyWith<$Res> {
  factory _$$_GlobalUserStateCopyWith(
          _$_GlobalUserState value, $Res Function(_$_GlobalUserState) then) =
      __$$_GlobalUserStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserData user, bool isAgent});

  @override
  $UserDataCopyWith<$Res> get user;
}

/// @nodoc
class __$$_GlobalUserStateCopyWithImpl<$Res>
    extends _$GlobalUserStateCopyWithImpl<$Res, _$_GlobalUserState>
    implements _$$_GlobalUserStateCopyWith<$Res> {
  __$$_GlobalUserStateCopyWithImpl(
      _$_GlobalUserState _value, $Res Function(_$_GlobalUserState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? isAgent = null,
  }) {
    return _then(_$_GlobalUserState(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserData,
      isAgent: null == isAgent
          ? _value.isAgent
          : isAgent // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_GlobalUserState implements _GlobalUserState {
  _$_GlobalUserState({required this.user, required this.isAgent});

  @override
  final UserData user;
  @override
  final bool isAgent;

  @override
  String toString() {
    return 'GlobalUserState(user: $user, isAgent: $isAgent)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GlobalUserState &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.isAgent, isAgent) || other.isAgent == isAgent));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, isAgent);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GlobalUserStateCopyWith<_$_GlobalUserState> get copyWith =>
      __$$_GlobalUserStateCopyWithImpl<_$_GlobalUserState>(this, _$identity);
}

abstract class _GlobalUserState implements GlobalUserState {
  factory _GlobalUserState(
      {required final UserData user,
      required final bool isAgent}) = _$_GlobalUserState;

  @override
  UserData get user;
  @override
  bool get isAgent;
  @override
  @JsonKey(ignore: true)
  _$$_GlobalUserStateCopyWith<_$_GlobalUserState> get copyWith =>
      throw _privateConstructorUsedError;
}
