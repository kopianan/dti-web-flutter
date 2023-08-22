import 'package:bloc/bloc.dart';
import 'package:dti_web/domain/feedback/feedback_model.dart';
import 'package:dti_web/domain/feedback/i_feedback.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'feedback_state.dart';
part 'feedback_cubit.freezed.dart';

@injectable
class FeedbackCubit extends Cubit<FeedbackState> {
  FeedbackCubit(this.iFeedback) : super(const FeedbackState.initial());

  final IFeedback iFeedback;

  void getAllCustomer() async {
    emit(const FeedbackState.loading());
    final result = await iFeedback.getAllFeedback();
    result.fold(
      (l) => emit(const FeedbackState.error()),
      (r) {
        var feedbacks = r.toList(); 
        feedbacks.sort((a, b) => b.createdDate.compareTo(a.createdDate));
        emit(FeedbackState.getAllFeedback(feedbacks));
      },
    );
  }
}
