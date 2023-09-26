part of 'customer_cubit.dart';

@freezed
class CustomerState with _$CustomerState {
  const factory CustomerState.initial() = _Initial;
  const factory CustomerState.loading() = _Loading; 
  const factory CustomerState.onError(Failures error) = _OnError;
  const factory CustomerState.getAllCustomer(List<CustomerModel> customers) =
      _GetAllCustomer;
  const factory CustomerState.getSingleCustomer(CustomerModel user) =
      _GetSingleCustomer;
}
