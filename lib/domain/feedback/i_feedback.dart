import 'package:dartz/dartz.dart';
import 'package:dti_web/domain/feedback/feedback_model.dart';

abstract class IFeedback {
  Future<Either<String, List<FeedbackModel>>> getAllFeedback();
}
