// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'questionnaire_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_QuestionnaireModel _$$_QuestionnaireModelFromJson(
        Map<String, dynamic> json) =>
    _$_QuestionnaireModel(
      subQuestionnaire: (json['subQuestionnaire'] as List<dynamic>?)
          ?.map((e) => QuestionnaireModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      footer: json['footer'] as String?,
      imgName: json['imgName'] as String?,
      body: json['body'] as String?,
      header: json['header'] as String?,
      description: json['description'] as String?,
      importantNotes: json['importantNotes'] as String?,
      results: json['results'] == null
          ? null
          : ResultModel.fromJson(json['results'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_QuestionnaireModelToJson(
        _$_QuestionnaireModel instance) =>
    <String, dynamic>{
      'subQuestionnaire': instance.subQuestionnaire,
      'footer': instance.footer,
      'imgName': instance.imgName,
      'body': instance.body,
      'header': instance.header,
      'description': instance.description,
      'importantNotes': instance.importantNotes,
      'results': instance.results,
    };
