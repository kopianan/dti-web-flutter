// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'questionnaire_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuestionnaireDataModelImpl _$$QuestionnaireDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$QuestionnaireDataModelImpl(
      (json['questionnaire'] as List<dynamic>)
          .map((e) => QuestionnaireModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$QuestionnaireDataModelImplToJson(
        _$QuestionnaireDataModelImpl instance) =>
    <String, dynamic>{
      'questionnaire': instance.questionnaire,
    };
