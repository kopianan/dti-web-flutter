part of 'payment_cubit.dart';

@freezed
class PaymentState with _$PaymentState {
  const factory PaymentState.initial() = _Initial;

  const factory PaymentState.onError(Failures errorMessage) = _OnError;
  const factory PaymentState.onLoading() = _OnLoading;
  //CURRENCY
  // const factory PaymentState.onGetCurrency(double total) = _OnGetCurrency;

  //Payment
  const factory PaymentState.onGetPaymentUrl(String url) = _OnGetPaymentUrl;
  //Promo Code
  // const factory PaymentState.onPromoCodeValid(PromotionModel promo) = _OnPromoCodeValid;
  // const factory PaymentState.onPromoCanceled() = _OnPromoCanceled;
}
