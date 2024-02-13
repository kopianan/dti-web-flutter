// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'questionnaire_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

QuestionnaireDataModel _$QuestionnaireDataModelFromJson(
    Map<String, dynamic> json) {
  return _QuestionnaireDataModel.fromJson(json);
}

/// @nodoc
mixin _$QuestionnaireDataModel {
  List<QuestionnaireModel> get questionnaire =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestionnaireDataModelCopyWith<QuestionnaireDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionnaireDataModelCopyWith<$Res> {
  factory $QuestionnaireDataModelCopyWith(QuestionnaireDataModel value,
          $Res Function(QuestionnaireDataModel) then) =
      _$QuestionnaireDataModelCopyWithImpl<$Res, QuestionnaireDataModel>;
  @useResult
  $Res call({List<QuestionnaireModel> questionnaire});
}

/// @nodoc
class _$QuestionnaireDataModelCopyWithImpl<$Res,
        $Val extends QuestionnaireDataModel>
    implements $QuestionnaireDataModelCopyWith<$Res> {
  _$QuestionnaireDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questionnaire = null,
  }) {
    return _then(_value.copyWith(
      questionnaire: null == questionnaire
          ? _value.questionnaire
          : questionnaire // ignore: cast_nullable_to_non_nullable
              as List<QuestionnaireModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuestionnaireDataModelImplCopyWith<$Res>
    implements $QuestionnaireDataModelCopyWith<$Res> {
  factory _$$QuestionnaireDataModelImplCopyWith(
          _$QuestionnaireDataModelImpl value,
          $Res Function(_$QuestionnaireDataModelImpl) then) =
      __$$QuestionnaireDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<QuestionnaireModel> questionnaire});
}

/// @nodoc
class __$$QuestionnaireDataModelImplCopyWithImpl<$Res>
    extends _$QuestionnaireDataModelCopyWithImpl<$Res,
        _$QuestionnaireDataModelImpl>
    implements _$$QuestionnaireDataModelImplCopyWith<$Res> {
  __$$QuestionnaireDataModelImplCopyWithImpl(
      _$QuestionnaireDataModelImpl _value,
      $Res Function(_$QuestionnaireDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questionnaire = null,
  }) {
    return _then(_$QuestionnaireDataModelImpl(
      null == questionnaire
          ? _value._questionnaire
          : questionnaire // ignore: cast_nullable_to_non_nullable
              as List<QuestionnaireModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuestionnaireDataModelImpl implements _QuestionnaireDataModel {
  _$QuestionnaireDataModelImpl(final List<QuestionnaireModel> questionnaire)
      : _questionnaire = questionnaire;

  factory _$QuestionnaireDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuestionnaireDataModelImplFromJson(json);

  final List<QuestionnaireModel> _questionnaire;
  @override
  List<QuestionnaireModel> get questionnaire {
    if (_questionnaire is EqualUnmodifiableListView) return _questionnaire;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_questionnaire);
  }

  @override
  String toString() {
    return 'QuestionnaireDataModel(questionnaire: $questionnaire)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionnaireDataModelImpl &&
            const DeepCollectionEquality()
                .equals(other._questionnaire, _questionnaire));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_questionnaire));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestionnaireDataModelImplCopyWith<_$QuestionnaireDataModelImpl>
      get copyWith => __$$QuestionnaireDataModelImplCopyWithImpl<
          _$QuestionnaireDataModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuestionnaireDataModelImplToJson(
      this,
    );
  }
}

abstract class _QuestionnaireDataModel implements QuestionnaireDataModel {
  factory _QuestionnaireDataModel(
          final List<QuestionnaireModel> questionnaire) =
      _$QuestionnaireDataModelImpl;

  factory _QuestionnaireDataModel.fromJson(Map<String, dynamic> json) =
      _$QuestionnaireDataModelImpl.fromJson;

  @override
  List<QuestionnaireModel> get questionnaire;
  @override
  @JsonKey(ignore: true)
  _$$QuestionnaireDataModelImplCopyWith<_$QuestionnaireDataModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
