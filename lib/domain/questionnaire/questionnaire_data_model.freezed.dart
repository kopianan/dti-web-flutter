// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'questionnaire_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
      _$QuestionnaireDataModelCopyWithImpl<$Res>;
  $Res call({List<QuestionnaireModel> questionnaire});
}

/// @nodoc
class _$QuestionnaireDataModelCopyWithImpl<$Res>
    implements $QuestionnaireDataModelCopyWith<$Res> {
  _$QuestionnaireDataModelCopyWithImpl(this._value, this._then);

  final QuestionnaireDataModel _value;
  // ignore: unused_field
  final $Res Function(QuestionnaireDataModel) _then;

  @override
  $Res call({
    Object? questionnaire = freezed,
  }) {
    return _then(_value.copyWith(
      questionnaire: questionnaire == freezed
          ? _value.questionnaire
          : questionnaire // ignore: cast_nullable_to_non_nullable
              as List<QuestionnaireModel>,
    ));
  }
}

/// @nodoc
abstract class _$$_QuestionnaireDataModelCopyWith<$Res>
    implements $QuestionnaireDataModelCopyWith<$Res> {
  factory _$$_QuestionnaireDataModelCopyWith(_$_QuestionnaireDataModel value,
          $Res Function(_$_QuestionnaireDataModel) then) =
      __$$_QuestionnaireDataModelCopyWithImpl<$Res>;
  @override
  $Res call({List<QuestionnaireModel> questionnaire});
}

/// @nodoc
class __$$_QuestionnaireDataModelCopyWithImpl<$Res>
    extends _$QuestionnaireDataModelCopyWithImpl<$Res>
    implements _$$_QuestionnaireDataModelCopyWith<$Res> {
  __$$_QuestionnaireDataModelCopyWithImpl(_$_QuestionnaireDataModel _value,
      $Res Function(_$_QuestionnaireDataModel) _then)
      : super(_value, (v) => _then(v as _$_QuestionnaireDataModel));

  @override
  _$_QuestionnaireDataModel get _value =>
      super._value as _$_QuestionnaireDataModel;

  @override
  $Res call({
    Object? questionnaire = freezed,
  }) {
    return _then(_$_QuestionnaireDataModel(
      questionnaire == freezed
          ? _value._questionnaire
          : questionnaire // ignore: cast_nullable_to_non_nullable
              as List<QuestionnaireModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_QuestionnaireDataModel implements _QuestionnaireDataModel {
  _$_QuestionnaireDataModel(final List<QuestionnaireModel> questionnaire)
      : _questionnaire = questionnaire;

  factory _$_QuestionnaireDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_QuestionnaireDataModelFromJson(json);

  final List<QuestionnaireModel> _questionnaire;
  @override
  List<QuestionnaireModel> get questionnaire {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_questionnaire);
  }

  @override
  String toString() {
    return 'QuestionnaireDataModel(questionnaire: $questionnaire)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QuestionnaireDataModel &&
            const DeepCollectionEquality()
                .equals(other._questionnaire, _questionnaire));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_questionnaire));

  @JsonKey(ignore: true)
  @override
  _$$_QuestionnaireDataModelCopyWith<_$_QuestionnaireDataModel> get copyWith =>
      __$$_QuestionnaireDataModelCopyWithImpl<_$_QuestionnaireDataModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QuestionnaireDataModelToJson(
      this,
    );
  }
}

abstract class _QuestionnaireDataModel implements QuestionnaireDataModel {
  factory _QuestionnaireDataModel(
      final List<QuestionnaireModel> questionnaire) = _$_QuestionnaireDataModel;

  factory _QuestionnaireDataModel.fromJson(Map<String, dynamic> json) =
      _$_QuestionnaireDataModel.fromJson;

  @override
  List<QuestionnaireModel> get questionnaire;
  @override
  @JsonKey(ignore: true)
  _$$_QuestionnaireDataModelCopyWith<_$_QuestionnaireDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}
