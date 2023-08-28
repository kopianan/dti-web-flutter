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
  String get name => throw _privateConstructorUsedError;
  String? get uid => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get countryCode => throw _privateConstructorUsedError;
  String get mobileNumber => throw _privateConstructorUsedError;
  int get totalVisa => throw _privateConstructorUsedError;
  @DateTimeOrNullConverter()
  DateTime? get createdDate => throw _privateConstructorUsedError;
  @DateTimeOrNullConverter()
  DateTime? get lastUpdatedDate => throw _privateConstructorUsedError;
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
      {String name,
      String? uid,
      String email,
      String countryCode,
      String mobileNumber,
      int totalVisa,
      @DateTimeOrNullConverter() DateTime? createdDate,
      @DateTimeOrNullConverter() DateTime? lastUpdatedDate,
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
    Object? name = null,
    Object? uid = freezed,
    Object? email = null,
    Object? countryCode = null,
    Object? mobileNumber = null,
    Object? totalVisa = null,
    Object? createdDate = freezed,
    Object? lastUpdatedDate = freezed,
    Object? outstandingAction = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      uid: freezed == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      countryCode: null == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String,
      mobileNumber: null == mobileNumber
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
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
      {String name,
      String? uid,
      String email,
      String countryCode,
      String mobileNumber,
      int totalVisa,
      @DateTimeOrNullConverter() DateTime? createdDate,
      @DateTimeOrNullConverter() DateTime? lastUpdatedDate,
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
    Object? name = null,
    Object? uid = freezed,
    Object? email = null,
    Object? countryCode = null,
    Object? mobileNumber = null,
    Object? totalVisa = null,
    Object? createdDate = freezed,
    Object? lastUpdatedDate = freezed,
    Object? outstandingAction = null,
  }) {
    return _then(_$_CustomerModel(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      uid: freezed == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      countryCode: null == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String,
      mobileNumber: null == mobileNumber
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
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
      {this.name = "",
      this.uid,
      this.email = "",
      this.countryCode = "",
      this.mobileNumber = "",
      this.totalVisa = 0,
      @DateTimeOrNullConverter() this.createdDate,
      @DateTimeOrNullConverter() this.lastUpdatedDate,
      this.outstandingAction = false});

  factory _$_CustomerModel.fromJson(Map<String, dynamic> json) =>
      _$$_CustomerModelFromJson(json);

  @override
  @JsonKey()
  final String name;
  @override
  final String? uid;
  @override
  @JsonKey()
  final String email;
  @override
  @JsonKey()
  final String countryCode;
  @override
  @JsonKey()
  final String mobileNumber;
  @override
  @JsonKey()
  final int totalVisa;
  @override
  @DateTimeOrNullConverter()
  final DateTime? createdDate;
  @override
  @DateTimeOrNullConverter()
  final DateTime? lastUpdatedDate;
  @override
  @JsonKey()
  final bool outstandingAction;

  @override
  String toString() {
    return 'CustomerModel(name: $name, uid: $uid, email: $email, countryCode: $countryCode, mobileNumber: $mobileNumber, totalVisa: $totalVisa, createdDate: $createdDate, lastUpdatedDate: $lastUpdatedDate, outstandingAction: $outstandingAction)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CustomerModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode) &&
            (identical(other.mobileNumber, mobileNumber) ||
                other.mobileNumber == mobileNumber) &&
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
  int get hashCode => Object.hash(runtimeType, name, uid, email, countryCode,
      mobileNumber, totalVisa, createdDate, lastUpdatedDate, outstandingAction);

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
      {final String name,
      final String? uid,
      final String email,
      final String countryCode,
      final String mobileNumber,
      final int totalVisa,
      @DateTimeOrNullConverter() final DateTime? createdDate,
      @DateTimeOrNullConverter() final DateTime? lastUpdatedDate,
      final bool outstandingAction}) = _$_CustomerModel;

  factory _CustomerModel.fromJson(Map<String, dynamic> json) =
      _$_CustomerModel.fromJson;

  @override
  String get name;
  @override
  String? get uid;
  @override
  String get email;
  @override
  String get countryCode;
  @override
  String get mobileNumber;
  @override
  int get totalVisa;
  @override
  @DateTimeOrNullConverter()
  DateTime? get createdDate;
  @override
  @DateTimeOrNullConverter()
  DateTime? get lastUpdatedDate;
  @override
  bool get outstandingAction;
  @override
  @JsonKey(ignore: true)
  _$$_CustomerModelCopyWith<_$_CustomerModel> get copyWith =>
      throw _privateConstructorUsedError;
}
