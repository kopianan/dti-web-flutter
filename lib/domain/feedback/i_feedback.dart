import 'package:dartz/dartz.dart';
import 'package:dti_web/domain/feedback/feedback_model.dart';
import 'package:dti_web/domain/global/failures.dart';

abstract class IFeedback {
  Future<Either<Failures, List<FeedbackModel>>> getAllFeedback();
}
