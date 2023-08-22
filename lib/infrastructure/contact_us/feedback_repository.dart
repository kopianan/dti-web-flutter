import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:dti_web/core/storage.dart';
import 'package:dti_web/domain/contact_us/contact_us_model.dart';
import 'package:dti_web/domain/contact_us/i_contact_us.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IContactUs)
class ContactUsRepository extends IContactUs {
  ContactUsRepository(this.dio);
  final Dio dio;
  final storage = Storage();

  @override
  Future<Either<String, List<ContactUsModel>>> getAllContactUsData() async {
    try {
      final result = await dio.get('${dotenv.env['BASE_URL']}/user_contactUs',
          options: Options(
            headers: {'Authorization': 'Bearer ${storage.getToken()}'},
          ));

      final user = result.data['data'] as List;

      final listData = user.map((e) => ContactUsModel.fromJson(e)).toList();

      return Right(listData);
    } on Exception catch (e) {
      log(e.toString());
      return left("");
    }
  }
}
