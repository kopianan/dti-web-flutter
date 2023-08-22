import 'package:dti_web/domain/core/date_time_or_null_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'feedback_model.freezed.dart';
part 'feedback_model.g.dart';

@freezed
class FeedbackModel with _$FeedbackModel {
  factory FeedbackModel({
    @Default(0) int rating,
    @DateTimeOrNullConverter() required DateTime createdDate,
    @Default("") String name,
    @Default("") String comment,
  }) = _FeedbackModel;

  factory FeedbackModel.fromJson(Map<String, dynamic> json) =>
      _$FeedbackModelFromJson(json);
}
