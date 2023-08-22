// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'feedback_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FeedbackModel _$FeedbackModelFromJson(Map<String, dynamic> json) {
  return _FeedbackModel.fromJson(json);
}

/// @nodoc
mixin _$FeedbackModel {
  int get rating => throw _privateConstructorUsedError;
  @DateTimeOrNullConverter()
  DateTime get createdDate => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get comment => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FeedbackModelCopyWith<FeedbackModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedbackModelCopyWith<$Res> {
  factory $FeedbackModelCopyWith(
          FeedbackModel value, $Res Function(FeedbackModel) then) =
      _$FeedbackModelCopyWithImpl<$Res, FeedbackModel>;
  @useResult
  $Res call(
      {int rating,
      @DateTimeOrNullConverter() DateTime createdDate,
      String name,
      String comment});
}

/// @nodoc
class _$FeedbackModelCopyWithImpl<$Res, $Val extends FeedbackModel>
    implements $FeedbackModelCopyWith<$Res> {
  _$FeedbackModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rating = null,
    Object? createdDate = null,
    Object? name = null,
    Object? comment = null,
  }) {
    return _then(_value.copyWith(
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      createdDate: null == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FeedbackModelCopyWith<$Res>
    implements $FeedbackModelCopyWith<$Res> {
  factory _$$_FeedbackModelCopyWith(
          _$_FeedbackModel value, $Res Function(_$_FeedbackModel) then) =
      __$$_FeedbackModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int rating,
      @DateTimeOrNullConverter() DateTime createdDate,
      String name,
      String comment});
}

/// @nodoc
class __$$_FeedbackModelCopyWithImpl<$Res>
    extends _$FeedbackModelCopyWithImpl<$Res, _$_FeedbackModel>
    implements _$$_FeedbackModelCopyWith<$Res> {
  __$$_FeedbackModelCopyWithImpl(
      _$_FeedbackModel _value, $Res Function(_$_FeedbackModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rating = null,
    Object? createdDate = null,
    Object? name = null,
    Object? comment = null,
  }) {
    return _then(_$_FeedbackModel(
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      createdDate: null == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FeedbackModel implements _FeedbackModel {
  _$_FeedbackModel(
      {this.rating = 0,
      @DateTimeOrNullConverter() required this.createdDate,
      this.name = "",
      this.comment = ""});

  factory _$_FeedbackModel.fromJson(Map<String, dynamic> json) =>
      _$$_FeedbackModelFromJson(json);

  @override
  @JsonKey()
  final int rating;
  @override
  @DateTimeOrNullConverter()
  final DateTime createdDate;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String comment;

  @override
  String toString() {
    return 'FeedbackModel(rating: $rating, createdDate: $createdDate, name: $name, comment: $comment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FeedbackModel &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.createdDate, createdDate) ||
                other.createdDate == createdDate) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.comment, comment) || other.comment == comment));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, rating, createdDate, name, comment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FeedbackModelCopyWith<_$_FeedbackModel> get copyWith =>
      __$$_FeedbackModelCopyWithImpl<_$_FeedbackModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FeedbackModelToJson(
      this,
    );
  }
}

abstract class _FeedbackModel implements FeedbackModel {
  factory _FeedbackModel(
      {final int rating,
      @DateTimeOrNullConverter() required final DateTime createdDate,
      final String name,
      final String comment}) = _$_FeedbackModel;

  factory _FeedbackModel.fromJson(Map<String, dynamic> json) =
      _$_FeedbackModel.fromJson;

  @override
  int get rating;
  @override
  @DateTimeOrNullConverter()
  DateTime get createdDate;
  @override
  String get name;
  @override
  String get comment;
  @override
  @JsonKey(ignore: true)
  _$$_FeedbackModelCopyWith<_$_FeedbackModel> get copyWith =>
      throw _privateConstructorUsedError;
}
