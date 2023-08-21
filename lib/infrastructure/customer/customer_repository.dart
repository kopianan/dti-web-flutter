import 'dart:convert';
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:dti_web/core/storage.dart';
import 'package:dti_web/domain/core/customer_model.dart';
import 'package:dti_web/domain/customer/i_customer.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ICustomer)
class CustomerRepository extends ICustomer {
  CustomerRepository(this.dio);
  final Dio dio;
  final storage = Storage();
  @override
  Future<Either<String, List<CustomerModel>>> getAllCustomer() async {
    //ONLY GET APPLICATION, NOT PASSPORT
    // final result =
    // await dio!.get('${dotenv.env['BASE_URL']}/applicationsByUser',
    //     options: Options(
    //       headers: {'Authorization': 'Bearer ${storage.getToken()}'},
    //     ));
    try {
      final result = await dio.get('${dotenv.env['BASE_URL']}/users',
          options: Options(
            headers: {'Authorization': 'Bearer ${storage.getToken()}'},
          ));

      final user = result.data['data'] as List;
      print(json.encode(  user)); 

      final listData = user.map((e) => CustomerModel.fromJson(e)).toList();

      return Right(listData);
    } on Exception catch (e) {
      log(e.toString());
      return left("");
    }
  }
}
