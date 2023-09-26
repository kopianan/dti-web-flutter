import 'package:dartz/dartz.dart';
import 'package:dti_web/domain/core/customer_model.dart';
import 'package:dti_web/domain/global/failures.dart';

abstract class ICustomer {
  Future<Either<Failures, List<CustomerModel>>> getAllUser();
  Future<Either<Failures, CustomerModel>> getUserById(String userId);
  Future<Either<Failures, String>> errorAuth();
}
