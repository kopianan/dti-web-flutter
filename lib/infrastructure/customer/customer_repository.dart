import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:dti_web/core/storage.dart';
import 'package:dti_web/domain/core/customer_model.dart';
import 'package:dti_web/domain/customer/i_customer.dart';
import 'package:dti_web/domain/global/failures.dart';
import 'package:dti_web/utils/error_handling.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ICustomer)
class CustomerRepository extends ICustomer {
  CustomerRepository(this.dio);
  final Dio dio;
  final storage = Storage();

  @override
  Future<Either<Failures, String>> errorAuth() async {
    try {
      final result = await dio.get('${dotenv.env['BASE_URL']}/users',
          options: Options(
            headers: {'Authorization': 'Bearer $_token'},
          ));
      return right("");
    } on DioError catch (e) {
      return left(ErrorHandling().onDioErrorHandle(e));
    }
  }

  @override
  Future<Either<Failures, List<CustomerModel>>> getAllUser() async {
    try {
      final result = await dio.get(
        '${dotenv.env['BASE_URL']}/users',
        options: Options(
          headers: {'Authorization': 'Bearer ${storage.getToken()}'},
        ),
      );
      final user = result.data['data'] as List;
      final listData = user.map((e) => CustomerModel.fromJson(e)).toList();

      return Right(listData);
    } on DioError catch (e) {
      return left(ErrorHandling().onDioErrorHandle(e));
    } on Exception {
      return left(Failures.serverError());
    }
  }

  @override
  Future<Either<Failures, CustomerModel>> getUserById(String userId) async {
    try {
      final result = await dio.get('${dotenv.env['BASE_URL']}/user/$userId',
          options: Options(
            headers: {'Authorization': 'Bearer ${storage.getToken()}'},
          ));

      final user = result.data['data'] as dynamic;

      final userModel = CustomerModel.fromJson(user);

      return Right(userModel);
    } on DioError catch (e) {
      return left(ErrorHandling().onDioErrorHandle(e));
    } on Exception {
      return left(Failures.serverError());
    }
  }
}

String _token =
    "eyJhbGciOiJSUzI1NiIsImtpZCI6ImFhMDhlN2M3ODNkYjhjOGFjNGNhNzJhZjdmOWRkN2JiMzk4ZjE2ZGMiLCJ0eXAiOiJKV1QifQ.eyJuYW1lIjoiRG9vciBUbyBJbmRvbmVzaWEgKERUSSkiLCJwaWN0dXJlIjoiaHR0cHM6Ly9saDMuZ29vZ2xldXNlcmNvbnRlbnQuY29tL2EvQUVkRlRwNFNtcmlLTFFUaTJZWmM3bTdKZ2R3SGhiZ2o4cGJrOFREMTZjWXE9czk2LWMiLCJpc3MiOiJodHRwczovL3NlY3VyZXRva2VuLmdvb2dsZS5jb20vZG9vcnRvaWQtbW9iaWxlIiwiYXVkIjoiZG9vcnRvaWQtbW9iaWxlIiwiYXV0aF90aW1lIjoxNjk1MTQzMjYzLCJ1c2VyX2lkIjoiRFdpMkVQQjFYYVJUM1ZmRlM5c2FFR2lvQUh1MiIsInN1YiI6IkRXaTJFUEIxWGFSVDNWZkZTOXNhRUdpb0FIdTIiLCJpYXQiOjE2OTUxNDMyNzQsImV4cCI6MTY5NTE0Njg3NCwiZW1haWwiOiJ0ZWFtQGRvb3J0b2lkLmNvbSIsImVtYWlsX3ZlcmlmaWVkIjp0cnVlLCJmaXJlYmFzZSI6eyJpZGVudGl0aWVzIjp7Imdvb2dsZS5jb20iOlsiMTExNzQ2Nzg3ODUwOTIxODA0NDI4Il0sImVtYWlsIjpbInRlYW1AZG9vcnRvaWQuY29tIl19LCJzaWduX2luX3Byb3ZpZGVyIjoicGFzc3dvcmQifX0.ZHbGS88V1YoI4m1ALp2AmtWiqz131GxWmQJ8VfuPnKDUcFHlZ08NrBpaU8Duk8UWntAt9-A8LBwmROZvj_yK2cwWjqFTDqfqAkDpCKjQ9OVcFseBK02drE8xnUR9ffAMXL3vInJKl8ksfj7ROg8Teb_Ha1Sgvonq6FFPKHf7nTWCogOsio2aThnKakROhwdEg5u8WPmNafYNGAy1h_uA0aVeJyGMG9Kex2l2FPH3HhgK5zO-o_3EDwg-Q37On_lLI27q6QP2x0QJpYrmWRg5OqLFOkydNSCeKhU1EPKKt9wKar4lV3eNIiyhjvOAg6opKmrWCny2JB6Lrkbb-fvpbw";
