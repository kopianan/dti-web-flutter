import 'package:dartz/dartz.dart';
import 'package:dti_web/domain/global/failures.dart';

abstract class IOther {
  Future<Either<String, String>> getImageUrl(
      {required String applicationId,
      required String documentId,
      required String fileName});
}
