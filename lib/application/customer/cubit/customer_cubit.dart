import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dti_web/domain/core/customer_model.dart';
import 'package:dti_web/domain/customer/i_customer.dart';
import 'package:dti_web/domain/global/failures.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'customer_state.dart';
part 'customer_cubit.freezed.dart';

@injectable
class CustomerCubit extends Cubit<CustomerState> {
  CustomerCubit(this.iCustomer) : super(const CustomerState.initial());
  final ICustomer iCustomer;
  void getUserById(String id) async {
    emit(const CustomerState.loading());
    final result = await iCustomer.getUserById(id);
    result.fold(
      (l) => emit(CustomerState.onError(l)),
      (r) => emit(CustomerState.getSingleCustomer(r)),
    );
  }

  void getAllCustomer() async {
    emit(const CustomerState.loading());
    final result = await iCustomer.getAllUser();
    result.fold(
      (l) => emit(CustomerState.onError(l)),
      (r) => emit(CustomerState.getAllCustomer(r)),
    );
  }

  void errorAuth() async {
    emit(const CustomerState.loading());
    final result = await iCustomer.errorAuth();
    result.fold(
      (l) {
        log("ERROR FROM CUBIT");
        emit(CustomerState.onError(l));
      },
      (r) {},
    );
  }
}
