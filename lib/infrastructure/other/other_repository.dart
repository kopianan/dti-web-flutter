import 'package:dio/dio.dart';
import 'package:dti_web/core/storage.dart';
import 'package:dartz/dartz.dart';
import 'package:dti_web/domain/other/i_other.dart';
import 'package:dti_web/utils/constant.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IOther)
class OtherRepository extends IOther {
  @override
  Future<Either<String, String>> getImageUrl(
      {required String applicationId,
      required String documentId,
      required String fileName}) async {
    Dio dio = Dio();
    Storage storage = Storage();
    try {
      final result = await dio.post('${Constant.baseUrl}/downloadURL',
          data: {
            "appId": applicationId,
            "docId": documentId,
            "nameFile": fileName
          },
          options: Options(
            headers: {'Authorization': 'Bearer ${storage.getToken()}'},
          ));

      return Right(result.data['downloadUrl']);
    } catch (e) {
      print(e);
      return Left("Can not get download url");
    }
  }
}
