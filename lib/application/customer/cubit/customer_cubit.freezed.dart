// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CustomerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(List<CustomerModel> customers) getAllCustomer,
    required TResult Function(CustomerModel user) getSingleCustomer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(List<CustomerModel> customers)? getAllCustomer,
    TResult? Function(CustomerModel user)? getSingleCustomer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(List<CustomerModel> customers)? getAllCustomer,
    TResult Function(CustomerModel user)? getSingleCustomer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_GetAllCustomer value) getAllCustomer,
    required TResult Function(_GetSingleCustomer value) getSingleCustomer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_GetAllCustomer value)? getAllCustomer,
    TResult? Function(_GetSingleCustomer value)? getSingleCustomer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_GetAllCustomer value)? getAllCustomer,
    TResult Function(_GetSingleCustomer value)? getSingleCustomer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerStateCopyWith<$Res> {
  factory $CustomerStateCopyWith(
          CustomerState value, $Res Function(CustomerState) then) =
      _$CustomerStateCopyWithImpl<$Res, CustomerState>;
}

/// @nodoc
class _$CustomerStateCopyWithImpl<$Res, $Val extends CustomerState>
    implements $CustomerStateCopyWith<$Res> {
  _$CustomerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$CustomerStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'CustomerState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(List<CustomerModel> customers) getAllCustomer,
    required TResult Function(CustomerModel user) getSingleCustomer,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(List<CustomerModel> customers)? getAllCustomer,
    TResult? Function(CustomerModel user)? getSingleCustomer,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(List<CustomerModel> customers)? getAllCustomer,
    TResult Function(CustomerModel user)? getSingleCustomer,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_GetAllCustomer value) getAllCustomer,
    required TResult Function(_GetSingleCustomer value) getSingleCustomer,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_GetAllCustomer value)? getAllCustomer,
    TResult? Function(_GetSingleCustomer value)? getSingleCustomer,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_GetAllCustomer value)? getAllCustomer,
    TResult Function(_GetSingleCustomer value)? getSingleCustomer,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CustomerState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$CustomerStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'CustomerState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(List<CustomerModel> customers) getAllCustomer,
    required TResult Function(CustomerModel user) getSingleCustomer,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(List<CustomerModel> customers)? getAllCustomer,
    TResult? Function(CustomerModel user)? getSingleCustomer,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(List<CustomerModel> customers)? getAllCustomer,
    TResult Function(CustomerModel user)? getSingleCustomer,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_GetAllCustomer value) getAllCustomer,
    required TResult Function(_GetSingleCustomer value) getSingleCustomer,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_GetAllCustomer value)? getAllCustomer,
    TResult? Function(_GetSingleCustomer value)? getSingleCustomer,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_GetAllCustomer value)? getAllCustomer,
    TResult Function(_GetSingleCustomer value)? getSingleCustomer,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements CustomerState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_ErrorCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res>
    extends _$CustomerStateCopyWithImpl<$Res, _$_Error>
    implements _$$_ErrorCopyWith<$Res> {
  __$$_ErrorCopyWithImpl(_$_Error _value, $Res Function(_$_Error) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error();

  @override
  String toString() {
    return 'CustomerState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Error);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(List<CustomerModel> customers) getAllCustomer,
    required TResult Function(CustomerModel user) getSingleCustomer,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(List<CustomerModel> customers)? getAllCustomer,
    TResult? Function(CustomerModel user)? getSingleCustomer,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(List<CustomerModel> customers)? getAllCustomer,
    TResult Function(CustomerModel user)? getSingleCustomer,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_GetAllCustomer value) getAllCustomer,
    required TResult Function(_GetSingleCustomer value) getSingleCustomer,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_GetAllCustomer value)? getAllCustomer,
    TResult? Function(_GetSingleCustomer value)? getSingleCustomer,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_GetAllCustomer value)? getAllCustomer,
    TResult Function(_GetSingleCustomer value)? getSingleCustomer,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements CustomerState {
  const factory _Error() = _$_Error;
}

/// @nodoc
abstract class _$$_GetAllCustomerCopyWith<$Res> {
  factory _$$_GetAllCustomerCopyWith(
          _$_GetAllCustomer value, $Res Function(_$_GetAllCustomer) then) =
      __$$_GetAllCustomerCopyWithImpl<$Res>;
  @useResult
  $Res call({List<CustomerModel> customers});
}

/// @nodoc
class __$$_GetAllCustomerCopyWithImpl<$Res>
    extends _$CustomerStateCopyWithImpl<$Res, _$_GetAllCustomer>
    implements _$$_GetAllCustomerCopyWith<$Res> {
  __$$_GetAllCustomerCopyWithImpl(
      _$_GetAllCustomer _value, $Res Function(_$_GetAllCustomer) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customers = null,
  }) {
    return _then(_$_GetAllCustomer(
      null == customers
          ? _value._customers
          : customers // ignore: cast_nullable_to_non_nullable
              as List<CustomerModel>,
    ));
  }
}

/// @nodoc

class _$_GetAllCustomer implements _GetAllCustomer {
  const _$_GetAllCustomer(final List<CustomerModel> customers)
      : _customers = customers;

  final List<CustomerModel> _customers;
  @override
  List<CustomerModel> get customers {
    if (_customers is EqualUnmodifiableListView) return _customers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_customers);
  }

  @override
  String toString() {
    return 'CustomerState.getAllCustomer(customers: $customers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetAllCustomer &&
            const DeepCollectionEquality()
                .equals(other._customers, _customers));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_customers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetAllCustomerCopyWith<_$_GetAllCustomer> get copyWith =>
      __$$_GetAllCustomerCopyWithImpl<_$_GetAllCustomer>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(List<CustomerModel> customers) getAllCustomer,
    required TResult Function(CustomerModel user) getSingleCustomer,
  }) {
    return getAllCustomer(customers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(List<CustomerModel> customers)? getAllCustomer,
    TResult? Function(CustomerModel user)? getSingleCustomer,
  }) {
    return getAllCustomer?.call(customers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(List<CustomerModel> customers)? getAllCustomer,
    TResult Function(CustomerModel user)? getSingleCustomer,
    required TResult orElse(),
  }) {
    if (getAllCustomer != null) {
      return getAllCustomer(customers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_GetAllCustomer value) getAllCustomer,
    required TResult Function(_GetSingleCustomer value) getSingleCustomer,
  }) {
    return getAllCustomer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_GetAllCustomer value)? getAllCustomer,
    TResult? Function(_GetSingleCustomer value)? getSingleCustomer,
  }) {
    return getAllCustomer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_GetAllCustomer value)? getAllCustomer,
    TResult Function(_GetSingleCustomer value)? getSingleCustomer,
    required TResult orElse(),
  }) {
    if (getAllCustomer != null) {
      return getAllCustomer(this);
    }
    return orElse();
  }
}

abstract class _GetAllCustomer implements CustomerState {
  const factory _GetAllCustomer(final List<CustomerModel> customers) =
      _$_GetAllCustomer;

  List<CustomerModel> get customers;
  @JsonKey(ignore: true)
  _$$_GetAllCustomerCopyWith<_$_GetAllCustomer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetSingleCustomerCopyWith<$Res> {
  factory _$$_GetSingleCustomerCopyWith(_$_GetSingleCustomer value,
          $Res Function(_$_GetSingleCustomer) then) =
      __$$_GetSingleCustomerCopyWithImpl<$Res>;
  @useResult
  $Res call({CustomerModel user});

  $CustomerModelCopyWith<$Res> get user;
}

/// @nodoc
class __$$_GetSingleCustomerCopyWithImpl<$Res>
    extends _$CustomerStateCopyWithImpl<$Res, _$_GetSingleCustomer>
    implements _$$_GetSingleCustomerCopyWith<$Res> {
  __$$_GetSingleCustomerCopyWithImpl(
      _$_GetSingleCustomer _value, $Res Function(_$_GetSingleCustomer) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$_GetSingleCustomer(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as CustomerModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CustomerModelCopyWith<$Res> get user {
    return $CustomerModelCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$_GetSingleCustomer implements _GetSingleCustomer {
  const _$_GetSingleCustomer(this.user);

  @override
  final CustomerModel user;

  @override
  String toString() {
    return 'CustomerState.getSingleCustomer(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetSingleCustomer &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetSingleCustomerCopyWith<_$_GetSingleCustomer> get copyWith =>
      __$$_GetSingleCustomerCopyWithImpl<_$_GetSingleCustomer>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(List<CustomerModel> customers) getAllCustomer,
    required TResult Function(CustomerModel user) getSingleCustomer,
  }) {
    return getSingleCustomer(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(List<CustomerModel> customers)? getAllCustomer,
    TResult? Function(CustomerModel user)? getSingleCustomer,
  }) {
    return getSingleCustomer?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(List<CustomerModel> customers)? getAllCustomer,
    TResult Function(CustomerModel user)? getSingleCustomer,
    required TResult orElse(),
  }) {
    if (getSingleCustomer != null) {
      return getSingleCustomer(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_GetAllCustomer value) getAllCustomer,
    required TResult Function(_GetSingleCustomer value) getSingleCustomer,
  }) {
    return getSingleCustomer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_GetAllCustomer value)? getAllCustomer,
    TResult? Function(_GetSingleCustomer value)? getSingleCustomer,
  }) {
    return getSingleCustomer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_GetAllCustomer value)? getAllCustomer,
    TResult Function(_GetSingleCustomer value)? getSingleCustomer,
    required TResult orElse(),
  }) {
    if (getSingleCustomer != null) {
      return getSingleCustomer(this);
    }
    return orElse();
  }
}

abstract class _GetSingleCustomer implements CustomerState {
  const factory _GetSingleCustomer(final CustomerModel user) =
      _$_GetSingleCustomer;

  CustomerModel get user;
  @JsonKey(ignore: true)
  _$$_GetSingleCustomerCopyWith<_$_GetSingleCustomer> get copyWith =>
      throw _privateConstructorUsedError;
}
