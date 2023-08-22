part of 'feedback_cubit.dart';

@freezed
class FeedbackState with _$FeedbackState {
  const factory FeedbackState.initial() = _Initial;
  const factory FeedbackState.loading() = _Loading;
  const factory FeedbackState.error() = _Error;
  
  const factory FeedbackState.getAllFeedback(List<FeedbackModel> feedbacks) =
      _GetAllFeedback;
}
