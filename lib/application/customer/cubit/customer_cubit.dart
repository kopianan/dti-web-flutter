import 'package:bloc/bloc.dart';
import 'package:dti_web/domain/core/customer_model.dart';
import 'package:dti_web/domain/customer/i_customer.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'customer_state.dart';
part 'customer_cubit.freezed.dart';

@injectable
class CustomerCubit extends Cubit<CustomerState> {
  CustomerCubit(this.iCustomer) : super(const CustomerState.initial());
  final ICustomer iCustomer;

  void getAllCustomer() async {
    emit(const CustomerState.loading());
    final result = await iCustomer.getAllCustomer();
    result.fold(
      (l) => emit(const CustomerState.error()),
      (r) => emit(CustomerState.getAllCustomer(r)),
    ); 
  }
}
