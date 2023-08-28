import 'package:dartz/dartz.dart';
import 'package:dti_web/domain/core/customer_model.dart';

abstract class ICustomer {
  Future<Either<String, List<CustomerModel>>> getAllUser();
  Future<Either<String, CustomerModel>> getUserById(String userId);
}
