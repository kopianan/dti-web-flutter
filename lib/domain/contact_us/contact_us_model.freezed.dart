// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contact_us_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ContactUsModel _$ContactUsModelFromJson(Map<String, dynamic> json) {
  return _ContactUsModel.fromJson(json);
}

/// @nodoc
mixin _$ContactUsModel {
  @DateTimeOrNullConverter()
  DateTime get createdDate => throw _privateConstructorUsedError;
  String get createdBy => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContactUsModelCopyWith<ContactUsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactUsModelCopyWith<$Res> {
  factory $ContactUsModelCopyWith(
          ContactUsModel value, $Res Function(ContactUsModel) then) =
      _$ContactUsModelCopyWithImpl<$Res, ContactUsModel>;
  @useResult
  $Res call(
      {@DateTimeOrNullConverter() DateTime createdDate,
      String createdBy,
      String name,
      String title,
      String email});
}

/// @nodoc
class _$ContactUsModelCopyWithImpl<$Res, $Val extends ContactUsModel>
    implements $ContactUsModelCopyWith<$Res> {
  _$ContactUsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdDate = null,
    Object? createdBy = null,
    Object? name = null,
    Object? title = null,
    Object? email = null,
  }) {
    return _then(_value.copyWith(
      createdDate: null == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdBy: null == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ContactUsModelCopyWith<$Res>
    implements $ContactUsModelCopyWith<$Res> {
  factory _$$_ContactUsModelCopyWith(
          _$_ContactUsModel value, $Res Function(_$_ContactUsModel) then) =
      __$$_ContactUsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@DateTimeOrNullConverter() DateTime createdDate,
      String createdBy,
      String name,
      String title,
      String email});
}

/// @nodoc
class __$$_ContactUsModelCopyWithImpl<$Res>
    extends _$ContactUsModelCopyWithImpl<$Res, _$_ContactUsModel>
    implements _$$_ContactUsModelCopyWith<$Res> {
  __$$_ContactUsModelCopyWithImpl(
      _$_ContactUsModel _value, $Res Function(_$_ContactUsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdDate = null,
    Object? createdBy = null,
    Object? name = null,
    Object? title = null,
    Object? email = null,
  }) {
    return _then(_$_ContactUsModel(
      createdDate: null == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdBy: null == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ContactUsModel implements _ContactUsModel {
  _$_ContactUsModel(
      {@DateTimeOrNullConverter() required this.createdDate,
      this.createdBy = '',
      this.name = '',
      this.title = '',
      this.email = ''});

  factory _$_ContactUsModel.fromJson(Map<String, dynamic> json) =>
      _$$_ContactUsModelFromJson(json);

  @override
  @DateTimeOrNullConverter()
  final DateTime createdDate;
  @override
  @JsonKey()
  final String createdBy;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String email;

  @override
  String toString() {
    return 'ContactUsModel(createdDate: $createdDate, createdBy: $createdBy, name: $name, title: $title, email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ContactUsModel &&
            (identical(other.createdDate, createdDate) ||
                other.createdDate == createdDate) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, createdDate, createdBy, name, title, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ContactUsModelCopyWith<_$_ContactUsModel> get copyWith =>
      __$$_ContactUsModelCopyWithImpl<_$_ContactUsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ContactUsModelToJson(
      this,
    );
  }
}

abstract class _ContactUsModel implements ContactUsModel {
  factory _ContactUsModel(
      {@DateTimeOrNullConverter() required final DateTime createdDate,
      final String createdBy,
      final String name,
      final String title,
      final String email}) = _$_ContactUsModel;

  factory _ContactUsModel.fromJson(Map<String, dynamic> json) =
      _$_ContactUsModel.fromJson;

  @override
  @DateTimeOrNullConverter()
  DateTime get createdDate;
  @override
  String get createdBy;
  @override
  String get name;
  @override
  String get title;
  @override
  String get email;
  @override
  @JsonKey(ignore: true)
  _$$_ContactUsModelCopyWith<_$_ContactUsModel> get copyWith =>
      throw _privateConstructorUsedError;
}