// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feedback_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FeedbackModelImpl _$$FeedbackModelImplFromJson(Map<String, dynamic> json) =>
    _$FeedbackModelImpl(
      rating: json['rating'] as int? ?? 0,
      createdDate: DateTime.parse(json['createdDate'] as String),
      name: json['name'] as String? ?? "",
      comment: json['comment'] as String? ?? "",
    );

Map<String, dynamic> _$$FeedbackModelImplToJson(_$FeedbackModelImpl instance) =>
    <String, dynamic>{
      'rating': instance.rating,
      'createdDate': instance.createdDate.toIso8601String(),
      'name': instance.name,
      'comment': instance.comment,
    };
