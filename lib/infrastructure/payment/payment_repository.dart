import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:dti_web/domain/core/visa_application_model.dart';
import 'package:dti_web/domain/payment/i_payment.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IPayment)
class PaymentRepository extends IPayment {
  PaymentRepository();

  // @override
  // Future<Either<String, double>> getCurrency() async {
  //   try {
  //     var _result = await _firebaseFirestore.currectyMaster().get();
  //     var _currency = (_result.data() as dynamic)['USD_IDR'] as num;
  //     return right(_currency.toDouble());
  //   } on Exception {
  //     return left("Something wrong");
  //   }
  // }

  @override
  Future<Either<String, String>> createInvoice(
      VisaApplicationModel visaApplication,
      {double? discount}) async {
    final _dio = Dio();
    double finalPrice = visaApplication.price!;
    if (discount != null) {
      finalPrice = finalPrice - discount;
    } 
    var _requst = {
      "externalID": visaApplication.applicationID,
      "description":
          "${visaApplication.title} - ${visaApplication.subTitle} - ${visaApplication.entry} - ${visaApplication.applicationID}",
      "amount": finalPrice,
      "documentID": visaApplication.firebaseDocId,
    };
    try {
      var _result = await _dio.post(
          "https://us-central1-doortoid-mobile.cloudfunctions.net/api/createInvoice",
          data: _requst);
      //UPDATE PROMO CODE
      // var _collRef = _firebaseFirestore.userApplicationCollection();

      // await _collRef
      //     .doc(visaApplication.firebaseDocId)
      //     .update({'promoUsed': visaApplication.promoUsed});

      var _url = _result.data['paymentInvoiceUrl'];
      return right(_url);
    } on Exception catch (e) {
      return left(e.toString());
    }
  }

  // @override
  // Future<Either<String, String>> createInvoicePaypal(
  //     VisaApplication visaApplication) async {
  //   final _dio = Dio();
  //   var _requst = {
  //     "externalID": visaApplication.applicationID,
  //     "description":
  //         "${visaApplication.title} - ${visaApplication.subTitle} - ${visaApplication.entry} - ${visaApplication.applicationID}",
  //     "amount": visaApplication.price,
  //     "documentID": visaApplication.firebaseDocId
  //   };
  //   try {
  //     var _result = await _dio.post(
  //         "https://us-central1-doortoid-mobile.cloudfunctions.net/api/createPaypalInvoice",
  //         data: _requst);
  //     var _url = _result.data['paymentInvoiceUrl'];
  //     return right(_url);
  //   } on Exception catch (e) {
  //     return left(e.toString());
  //   }
  // }

  // @override
  // Future<Either<String, PromotionModel>> checkPromo(String code) async {
  //   try {
  //     var _result = await _firebaseFirestore.getPromotionCodeList
  //         .where('code', isEqualTo: code)
  //         .limit(1)
  //         .get();
  //     if (_result.docs.length == 0) {
  //       return Left("Voucher not found");
  //     } else {
  //       final data =
  //           PromotionModel.fromJson(_result.docs.single.data() as dynamic);
  //       if (data.endDate!.isBefore(DateTime.now())) {
  //         return Left("Your promotion is expired");
  //       } else {}
  //       return Right(data);
  //     }
  //   } catch (e) {
  //     return left("Something wrong");
  //   }
  // }
}
