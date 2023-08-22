// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feedback_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FeedbackModel _$$_FeedbackModelFromJson(Map<String, dynamic> json) =>
    _$_FeedbackModel(
      rating: json['rating'] as int? ?? 0,
      createdDate: DateTime.parse(json['createdDate'] as String),
      name: json['name'] as String? ?? "",
      comment: json['comment'] as String? ?? "",
    );

Map<String, dynamic> _$$_FeedbackModelToJson(_$_FeedbackModel instance) =>
    <String, dynamic>{
      'rating': instance.rating,
      'createdDate': instance.createdDate.toIso8601String(),
      'name': instance.name,
      'comment': instance.comment,
    };
