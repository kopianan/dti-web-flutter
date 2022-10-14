// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'questionnaire_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_QuestionnaireDataModel _$$_QuestionnaireDataModelFromJson(
        Map<String, dynamic> json) =>
    _$_QuestionnaireDataModel(
      (json['questionnaire'] as List<dynamic>)
          .map((e) => QuestionnaireModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_QuestionnaireDataModelToJson(
        _$_QuestionnaireDataModel instance) =>
    <String, dynamic>{
      'questionnaire': instance.questionnaire,
    };
