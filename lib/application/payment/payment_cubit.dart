import 'package:bloc/bloc.dart';
import 'package:dti_web/domain/core/visa_application_model.dart';
import 'package:dti_web/domain/payment/i_payment.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'payment_cubit.freezed.dart';
part 'payment_state.dart';

@injectable
class PaymentCubit extends Cubit<PaymentState> {
  PaymentCubit(this.iPayment) : super(const PaymentState.initial());
  IPayment iPayment;
  // void deletePromoCode() async {
  //   emit(const PaymentState.initial());
  //   emit(PaymentState.onPromoCanceled());
  // }

  // void getPromoCode(String code) async {
  //   emit(const PaymentState.onLoading());
  //   final data = await iPayment.checkPromo(code);
  //   data.fold(
  //     (l) => emit(PaymentState.onError(errorMessage: l)),
  //     (r) => emit(PaymentState.onPromoCodeValid(r)),
  //   );
  // }

  // void getUsdIdrCurrency() async {
  //   emit(const PaymentState.onLoading());
  //   final _result = await iPayment.getCurrency();
  //   _result.fold(
  //     (l) => emit(const PaymentState.onError()),
  //     (r) => emit(PaymentState.onGetCurrency(r)),
  //   );
  // }

  void makePayment(VisaApplicationModel visaApplication,
      {double? discount}) async {
    emit(const PaymentState.onLoading());
    final _result =
        await iPayment.createInvoice(visaApplication, discount: discount);
    _result.fold(
      (left) => emit(const PaymentState.onError()),
      (right) => emit(PaymentState.onGetPaymentUrl(right)),
    );
  }

  // void makePaymentPaypal(VisaApplication visaApplication) async {
  //   emit(const PaymentState.onLoading());
  //   final _result = await iPayment.createInvoicePaypal(visaApplication);
  //   _result.fold(
  //     (left) => emit(const PaymentState.onError()),
  //     (right) => emit(PaymentState.onGetPaymentUrl(right)),
  //   );
  // }
}
