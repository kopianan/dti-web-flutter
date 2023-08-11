import 'package:auto_route/auto_route.dart';
import 'package:dti_web/application/payment/payment_cubit.dart';
import 'package:dti_web/core/mixin/navigate_mixin.dart';
import 'package:dti_web/core/widgets/primary_button.dart';
import 'package:dti_web/domain/core/visa_application_model.dart';
import 'package:dti_web/injection.dart';
import 'package:dti_web/routes/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

@RoutePage()
class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key, required this.visa});
  final VisaApplicationModel visa;

  static const String routeName = '/payment';

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> with NavigateMixin {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      // create: (context) => getIt<PaymentCubit>(),
      create: (context) => getIt<PaymentCubit>()..makePayment(widget.visa),
      child: BlocConsumer<PaymentCubit, PaymentState>(
        listener: (context, state) {
          state.maybeMap(
            orElse: () {},
            onGetPaymentUrl: (e) async {
              EasyLoading.dismiss();
              await launch(e.url);
            },
            onError: (e) {
              EasyLoading.dismiss();
            },
            onLoading: (value) {
              EasyLoading.show(
                  maskType: EasyLoadingMaskType.black, dismissOnTap: false);
            },
          );
        },
        builder: (context, state) {
          return Scaffold(
            body: state.maybeMap(
              orElse: () {
                return null;
              },
              onLoading: (e) {
                return SizedBox(
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const CircularProgressIndicator(),
                      20.verticalSpace,
                      Text(
                        "Preparing your payment\nPlease Wait . . . . .",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 25.sp,
                          color: Colors.grey,
                        ),
                      )
                    ],
                  ),
                );
              },
              onGetPaymentUrl: (e) {
                return Stack(
                  children: [
                    SizedBox(
                      height: ScreenUtil().screenHeight,
                      width: ScreenUtil().screenWidth,
                      child: Image.asset('assets/images/bg/bg_payment.png'),
                    ),
                    Center(
                      child: Container(
                        alignment: Alignment.center,
                        width: ScreenUtil().screenWidth / 2,
                        height: ScreenUtil().screenHeight / 1.7,
                        decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(
                              blurRadius: 1,
                              color: Colors.white,
                            )
                          ],
                          color: Colors.white.withAlpha(200),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset(
                              'assets/icons/payment_logo.png',
                              width: 100.sp,
                            ),
                            20.verticalSpace,
                            Text(
                              "PLEASE FINISH YOUR PAYMENT\nGO TO PAYMENT PAGE ON YOUR BROWSER",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 18.sp, fontWeight: FontWeight.bold),
                            ),
                            30.verticalSpace,
                            SizedBox(
                              width: 400.w,
                              height: 50.h,
                              child: PrimaryButton(
                                onClick: () {
                                  backToDashboard(context);
                                },
                                labelStyle: TextStyle(fontSize: 17.sp),
                                label: "Back to dashboard",
                              ),
                            ),
                            20.verticalSpace,
                            TextButton(
                              onPressed: () {
                                launch(e.url);
                              },
                              child: Text(
                                "Open Payment Page",
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 17.sp),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          );
        },
      ),
    );
  }
}
