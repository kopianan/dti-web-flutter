// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'questionnaire_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$QuestionnaireState {
  List<QuestionnaireModel>? get listQuestionnaire =>
      throw _privateConstructorUsedError;
  List<String>? get importantNotes => throw _privateConstructorUsedError;
  List<String>? get description => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QuestionnaireStateCopyWith<QuestionnaireState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionnaireStateCopyWith<$Res> {
  factory $QuestionnaireStateCopyWith(
          QuestionnaireState value, $Res Function(QuestionnaireState) then) =
      _$QuestionnaireStateCopyWithImpl<$Res, QuestionnaireState>;
  @useResult
  $Res call(
      {List<QuestionnaireModel>? listQuestionnaire,
      List<String>? importantNotes,
      List<String>? description});
}

/// @nodoc
class _$QuestionnaireStateCopyWithImpl<$Res, $Val extends QuestionnaireState>
    implements $QuestionnaireStateCopyWith<$Res> {
  _$QuestionnaireStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listQuestionnaire = freezed,
    Object? importantNotes = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      listQuestionnaire: freezed == listQuestionnaire
          ? _value.listQuestionnaire
          : listQuestionnaire // ignore: cast_nullable_to_non_nullable
              as List<QuestionnaireModel>?,
      importantNotes: freezed == importantNotes
          ? _value.importantNotes
          : importantNotes // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_QuestionnaireStateCopyWith<$Res>
    implements $QuestionnaireStateCopyWith<$Res> {
  factory _$$_QuestionnaireStateCopyWith(_$_QuestionnaireState value,
          $Res Function(_$_QuestionnaireState) then) =
      __$$_QuestionnaireStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<QuestionnaireModel>? listQuestionnaire,
      List<String>? importantNotes,
      List<String>? description});
}

/// @nodoc
class __$$_QuestionnaireStateCopyWithImpl<$Res>
    extends _$QuestionnaireStateCopyWithImpl<$Res, _$_QuestionnaireState>
    implements _$$_QuestionnaireStateCopyWith<$Res> {
  __$$_QuestionnaireStateCopyWithImpl(
      _$_QuestionnaireState _value, $Res Function(_$_QuestionnaireState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listQuestionnaire = freezed,
    Object? importantNotes = freezed,
    Object? description = freezed,
  }) {
    return _then(_$_QuestionnaireState(
      listQuestionnaire: freezed == listQuestionnaire
          ? _value.listQuestionnaire
          : listQuestionnaire // ignore: cast_nullable_to_non_nullable
              as List<QuestionnaireModel>?,
      importantNotes: freezed == importantNotes
          ? _value.importantNotes
          : importantNotes // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc

class _$_QuestionnaireState implements _QuestionnaireState {
  _$_QuestionnaireState(
      {this.listQuestionnaire, this.importantNotes, this.description});

  @override
  final List<QuestionnaireModel>? listQuestionnaire;
  @override
  final List<String>? importantNotes;
  @override
  final List<String>? description;

  @override
  String toString() {
    return 'QuestionnaireState(listQuestionnaire: $listQuestionnaire, importantNotes: $importantNotes, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QuestionnaireState &&
            const DeepCollectionEquality()
                .equals(other.listQuestionnaire, listQuestionnaire) &&
            const DeepCollectionEquality()
                .equals(other.importantNotes, importantNotes) &&
            const DeepCollectionEquality()
                .equals(other.description, description));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(listQuestionnaire),
      const DeepCollectionEquality().hash(importantNotes),
      const DeepCollectionEquality().hash(description));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QuestionnaireStateCopyWith<_$_QuestionnaireState> get copyWith =>
      __$$_QuestionnaireStateCopyWithImpl<_$_QuestionnaireState>(
          this, _$identity);
}

abstract class _QuestionnaireState implements QuestionnaireState {
  factory _QuestionnaireState(
      {final List<QuestionnaireModel>? listQuestionnaire,
      final List<String>? importantNotes,
      final List<String>? description}) = _$_QuestionnaireState;

  @override
  List<QuestionnaireModel>? get listQuestionnaire;
  @override
  List<String>? get importantNotes;
  @override
  List<String>? get description;
  @override
  @JsonKey(ignore: true)
  _$$_QuestionnaireStateCopyWith<_$_QuestionnaireState> get copyWith =>
      throw _privateConstructorUsedError;
}
