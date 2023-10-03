
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:dti_web/domain/core/visa_application_model.dart';
import 'package:dti_web/domain/global/failures.dart';
import 'package:dti_web/domain/payment/i_payment.dart';
import 'package:dti_web/utils/error_handling.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IPayment)
class PaymentRepository extends IPayment {
  PaymentRepository(this.dio);
  final Dio dio;

  @override
  Future<Either<Failures, String>> createInvoice(
      VisaApplicationModel visaApplication,
      {double? discount}) async {
    double finalPrice = visaApplication.price!;
    if (discount != null) {
      finalPrice = finalPrice - discount;
    }
    var requst = {
      "externalID": visaApplication.applicationID,
      "description":
          "${visaApplication.title} - ${visaApplication.subTitle} - ${visaApplication.entry} - ${visaApplication.applicationID}",
      "amount": finalPrice,
      "documentID": visaApplication.firebaseDocId,
    };
    try {
      var result = await dio.post('${dotenv.env['BASE_URL']}/createInvoice',
          data: requst);
      //UPDATE PROMO CODE
      // var _collRef = _firebaseFirestore.userApplicationCollection();

      // await _collRef
      //     .doc(visaApplication.firebaseDocId)
      //     .update({'promoUsed': visaApplication.promoUsed});

      var url = result.data['paymentInvoiceUrl'];
      return right(url);
    } on DioError catch (e) {
      return left(ErrorHandling().onDioErrorHandle(e));
    } on Exception {
      return left(Failures.serverError());
    }
  }

  @override
  Future<Either<Failures, String>> createPassportInvoice(
      VisaApplicationModel visaApplication,
      {double? discount}) async {
    double finalPrice = visaApplication.price!;
    if (discount != null) {
      finalPrice = finalPrice - discount;
    }
    var requst = {
      "externalID": visaApplication.applicationID,
      "description":
          "${visaApplication.title} - ${visaApplication.subTitle} - ${visaApplication.applicationID}",
      "amount": finalPrice,
      "documentID": visaApplication.firebaseDocId,
      "type": "P"
    };
    try {
      var result = await dio.post('${dotenv.env['BASE_URL']}/createInvoice',
          data: requst);
      //UPDATE PROMO CODE
      // var _collRef = _firebaseFirestore.userApplicationCollection();

      // await _collRef
      //     .doc(visaApplication.firebaseDocId)
      //     .update({'promoUsed': visaApplication.promoUsed});

      var url = result.data['paymentInvoiceUrl'];
      return right(url);
    } on DioError catch (e) {
      return left(ErrorHandling().onDioErrorHandle(e));
    } on Exception {
      return left(Failures.apiExpired());
    }
  }

  // @override
  // Future<Either<String, String>> createInvoicePaypal(
  //     VisaApplication visaApplication) async {
  //
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
