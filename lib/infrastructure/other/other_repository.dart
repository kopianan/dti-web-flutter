import 'package:dio/dio.dart';
import 'package:dti_web/core/storage.dart';
import 'package:dartz/dartz.dart';
import 'package:dti_web/domain/global/failures.dart';
import 'package:dti_web/domain/other/i_other.dart';
import 'package:dti_web/domain/questionnaire/questionnaire_data_model.dart';
import 'package:dti_web/domain/questionnaire/questionnaire_model.dart';
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

  @override
  Future<Either<Failures, QuestionnaireDataModel>>
      getQuestionnaireList() async {
    Dio dio = Dio();
    Storage storage = Storage();
    try {
      final data =
          await dio.get('${Constant.baseUrl}/master/questionnaire',
              options: Options(
                headers: {'Authorization': 'Bearer ${storage.getToken()}'},
              ));
      print(data); 
      if (data.data['data'] != null) {
        final rawData = data.data['data'];
        return Right(QuestionnaireDataModel.fromJson(rawData));
      }
      return Left(Failures.generalError("Something Wrong"));
    } on DioError catch (e) {
      if (e.type == DioErrorType.response) {
        if (e.response!.statusCode! == 404) {
          if (e.response!.data['error'] != null) {
            return Left(Failures.generalError(e.response!.data['error']));
          }
          return Left(Failures.generalError("Something wrong"));
        } else if (e.response?.statusCode! == 403) {
          //authorization
          return Left(Failures.apiExpired());
        }
      }
      return Left(Failures.serverError());
    }
  }
}
