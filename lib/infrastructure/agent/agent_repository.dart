import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:dti_web/core/storage.dart';
import 'package:dti_web/domain/agent/i_agent.dart';
import 'package:dti_web/domain/core/visa_application_model.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IAgent)
class AgentRepository extends IAgent {
  AgentRepository(this.dio);
  final Dio dio;
  final storage = Storage();

  @override
  Future<Either<String, String>> createBulkData(
      List<VisaApplicationModel> listOfVisa) async {
    final listOfRequestData = listOfVisa.map((e) {
      return e.toJson();
    }).toList();

    print(json.encode(listOfRequestData));
    try {
      final result = await dio.post(
        '${dotenv.env['BASE_URL']}/applicationBulk',
        data: {'listOfApplications': listOfRequestData},
        options: Options(
          headers: {
            'Authorization': 'Bearer ${storage.getToken()}',
          },
        ),
      );
      print(result);
    } on Exception catch (e) {
      print(e);
    }

    return const Right('listData');
  }
}
