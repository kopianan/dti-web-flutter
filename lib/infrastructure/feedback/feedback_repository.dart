import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:dti_web/core/storage.dart';
import 'package:dti_web/domain/feedback/feedback_model.dart';
import 'package:dti_web/domain/feedback/i_feedback.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IFeedback)
class FeedbackRepository extends IFeedback {
  FeedbackRepository(this.dio);
  final Dio dio;
  final storage = Storage();

  @override
  Future<Either<String, List<FeedbackModel>>> getAllFeedback() async {
    try {
      final result = await dio.get('${dotenv.env['BASE_URL']}/user_feedbacks',
          options: Options(
            headers: {'Authorization': 'Bearer ${storage.getToken()}'},
          ));

      final user = result.data['data'] as List;

      final listData = user.map((e) => FeedbackModel.fromJson(e)).toList();

      return Right(listData);
    } on Exception catch (e) {
      log(e.toString());
      return left("");
    }
  }
}