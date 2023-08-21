// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CustomerModel _$CustomerModelFromJson(Map<String, dynamic> json) {
  return _CustomerModel.fromJson(json);
}

/// @nodoc
mixin _$CustomerModel {
  @JsonKey(includeIfNull: true)
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: true)
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: true)
  String get countryCode => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: true)
  int get totalVisa => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: true)
  @DateTimeOrNullConverter()
  DateTime? get createdDate => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: true)
  @DateTimeOrNullConverter()
  DateTime? get lastUpdatedDate => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: true)
  bool get outstandingAction => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CustomerModelCopyWith<CustomerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerModelCopyWith<$Res> {
  factory $CustomerModelCopyWith(
          CustomerModel value, $Res Function(CustomerModel) then) =
      _$CustomerModelCopyWithImpl<$Res, CustomerModel>;
  @useResult
  $Res call(
      {@JsonKey(includeIfNull: true)
          String? name,
      @JsonKey(includeIfNull: true)
          String? email,
      @JsonKey(includeIfNull: true)
          String countryCode,
      @JsonKey(includeIfNull: true)
          int totalVisa,
      @JsonKey(includeIfNull: true)
      @DateTimeOrNullConverter()
          DateTime? createdDate,
      @JsonKey(includeIfNull: true)
      @DateTimeOrNullConverter()
          DateTime? lastUpdatedDate,
      @JsonKey(includeIfNull: true)
          bool outstandingAction});
}

/// @nodoc
class _$CustomerModelCopyWithImpl<$Res, $Val extends CustomerModel>
    implements $CustomerModelCopyWith<$Res> {
  _$CustomerModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? email = freezed,
    Object? countryCode = null,
    Object? totalVisa = null,
    Object? createdDate = freezed,
    Object? lastUpdatedDate = freezed,
    Object? outstandingAction = null,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      countryCode: null == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String,
      totalVisa: null == totalVisa
          ? _value.totalVisa
          : totalVisa // ignore: cast_nullable_to_non_nullable
              as int,
      createdDate: freezed == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastUpdatedDate: freezed == lastUpdatedDate
          ? _value.lastUpdatedDate
          : lastUpdatedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      outstandingAction: null == outstandingAction
          ? _value.outstandingAction
          : outstandingAction // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CustomerModelCopyWith<$Res>
    implements $CustomerModelCopyWith<$Res> {
  factory _$$_CustomerModelCopyWith(
          _$_CustomerModel value, $Res Function(_$_CustomerModel) then) =
      __$$_CustomerModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(includeIfNull: true)
          String? name,
      @JsonKey(includeIfNull: true)
          String? email,
      @JsonKey(includeIfNull: true)
          String countryCode,
      @JsonKey(includeIfNull: true)
          int totalVisa,
      @JsonKey(includeIfNull: true)
      @DateTimeOrNullConverter()
          DateTime? createdDate,
      @JsonKey(includeIfNull: true)
      @DateTimeOrNullConverter()
          DateTime? lastUpdatedDate,
      @JsonKey(includeIfNull: true)
          bool outstandingAction});
}

/// @nodoc
class __$$_CustomerModelCopyWithImpl<$Res>
    extends _$CustomerModelCopyWithImpl<$Res, _$_CustomerModel>
    implements _$$_CustomerModelCopyWith<$Res> {
  __$$_CustomerModelCopyWithImpl(
      _$_CustomerModel _value, $Res Function(_$_CustomerModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? email = freezed,
    Object? countryCode = null,
    Object? totalVisa = null,
    Object? createdDate = freezed,
    Object? lastUpdatedDate = freezed,
    Object? outstandingAction = null,
  }) {
    return _then(_$_CustomerModel(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      countryCode: null == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String,
      totalVisa: null == totalVisa
          ? _value.totalVisa
          : totalVisa // ignore: cast_nullable_to_non_nullable
              as int,
      createdDate: freezed == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastUpdatedDate: freezed == lastUpdatedDate
          ? _value.lastUpdatedDate
          : lastUpdatedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      outstandingAction: null == outstandingAction
          ? _value.outstandingAction
          : outstandingAction // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CustomerModel implements _CustomerModel {
  _$_CustomerModel(
      {@JsonKey(includeIfNull: true)
          this.name = "",
      @JsonKey(includeIfNull: true)
          this.email = "",
      @JsonKey(includeIfNull: true)
          this.countryCode = "",
      @JsonKey(includeIfNull: true)
          this.totalVisa = 0,
      @JsonKey(includeIfNull: true)
      @DateTimeOrNullConverter()
          this.createdDate,
      @JsonKey(includeIfNull: true)
      @DateTimeOrNullConverter()
          this.lastUpdatedDate,
      @JsonKey(includeIfNull: true)
          this.outstandingAction = false});

  factory _$_CustomerModel.fromJson(Map<String, dynamic> json) =>
      _$$_CustomerModelFromJson(json);

  @override
  @JsonKey(includeIfNull: true)
  final String? name;
  @override
  @JsonKey(includeIfNull: true)
  final String? email;
  @override
  @JsonKey(includeIfNull: true)
  final String countryCode;
  @override
  @JsonKey(includeIfNull: true)
  final int totalVisa;
  @override
  @JsonKey(includeIfNull: true)
  @DateTimeOrNullConverter()
  final DateTime? createdDate;
  @override
  @JsonKey(includeIfNull: true)
  @DateTimeOrNullConverter()
  final DateTime? lastUpdatedDate;
  @override
  @JsonKey(includeIfNull: true)
  final bool outstandingAction;

  @override
  String toString() {
    return 'CustomerModel(name: $name, email: $email, countryCode: $countryCode, totalVisa: $totalVisa, createdDate: $createdDate, lastUpdatedDate: $lastUpdatedDate, outstandingAction: $outstandingAction)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CustomerModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode) &&
            (identical(other.totalVisa, totalVisa) ||
                other.totalVisa == totalVisa) &&
            (identical(other.createdDate, createdDate) ||
                other.createdDate == createdDate) &&
            (identical(other.lastUpdatedDate, lastUpdatedDate) ||
                other.lastUpdatedDate == lastUpdatedDate) &&
            (identical(other.outstandingAction, outstandingAction) ||
                other.outstandingAction == outstandingAction));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, email, countryCode,
      totalVisa, createdDate, lastUpdatedDate, outstandingAction);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CustomerModelCopyWith<_$_CustomerModel> get copyWith =>
      __$$_CustomerModelCopyWithImpl<_$_CustomerModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CustomerModelToJson(
      this,
    );
  }
}

abstract class _CustomerModel implements CustomerModel {
  factory _CustomerModel(
      {@JsonKey(includeIfNull: true)
          final String? name,
      @JsonKey(includeIfNull: true)
          final String? email,
      @JsonKey(includeIfNull: true)
          final String countryCode,
      @JsonKey(includeIfNull: true)
          final int totalVisa,
      @JsonKey(includeIfNull: true)
      @DateTimeOrNullConverter()
          final DateTime? createdDate,
      @JsonKey(includeIfNull: true)
      @DateTimeOrNullConverter()
          final DateTime? lastUpdatedDate,
      @JsonKey(includeIfNull: true)
          final bool outstandingAction}) = _$_CustomerModel;

  factory _CustomerModel.fromJson(Map<String, dynamic> json) =
      _$_CustomerModel.fromJson;

  @override
  @JsonKey(includeIfNull: true)
  String? get name;
  @override
  @JsonKey(includeIfNull: true)
  String? get email;
  @override
  @JsonKey(includeIfNull: true)
  String get countryCode;
  @override
  @JsonKey(includeIfNull: true)
  int get totalVisa;
  @override
  @JsonKey(includeIfNull: true)
  @DateTimeOrNullConverter()
  DateTime? get createdDate;
  @override
  @JsonKey(includeIfNull: true)
  @DateTimeOrNullConverter()
  DateTime? get lastUpdatedDate;
  @override
  @JsonKey(includeIfNull: true)
  bool get outstandingAction;
  @override
  @JsonKey(ignore: true)
  _$$_CustomerModelCopyWith<_$_CustomerModel> get copyWith =>
      throw _privateConstructorUsedError;
}
