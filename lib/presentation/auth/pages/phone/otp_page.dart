import 'package:auto_route/auto_route.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:dti_web/application/other/other_cubit.dart';
import 'package:dti_web/core/mixin/navigate_mixin.dart';
import 'package:dti_web/core/widgets/auth_footer_widget.dart';
import 'package:dti_web/core/widgets/auth_header_widget.dart';
import 'package:dti_web/core/widgets/primary_button.dart';
import 'package:dti_web/injection.dart';
import 'package:dti_web/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';

@RoutePage()
class OTPPage extends StatelessWidget with NavigateMixin {
  static const String routeName = '/otp-page';
  OTPPage({super.key, required this.code, required this.number});
  final CountryCode code;
  final String number;
  final otpController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<OtherCubit>(),
      child: BlocConsumer<OtherCubit, OtherState>(
        listener: (context, state) {
          state.maybeMap(
            orElse: () {
              EasyLoading.dismiss();
            },
            errorState: (e) {
              EasyLoading.dismiss();
              String message = 'something wrong';
              e.failures.maybeMap(
                orElse: () {},
                serverError: (msg) => message = "Server error",
                generalError: (msg) => message = msg.err,
              );

              AwesomeDialog(
                context: context,
                width: 400,
                descTextStyle: TextStyle(fontSize: 16.sp),
                desc: message,
                dialogType: DialogType.error,
              ).show();
            },
            loading: (e) {
              EasyLoading.show(maskType: EasyLoadingMaskType.black);
            },
            onOTPVerified: (e) {
              EasyLoading.dismiss();
              backToDashboard(context);
            },
          );
        },
        builder: (context, state) {
          return Scaffold(
            body: SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 0.1.sw),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const AuthHeaderWidget(label: "Verify OTP"),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            child: Image.asset(
                                'assets/images/dti_auth_register.png'),
                          ),
                        ),
                        100.horizontalSpace,
                        Expanded(
                          child: Container(
                            alignment: Alignment.center,
                            padding: REdgeInsets.symmetric(horizontal: 40),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Enter 6 digit code sent to your whatsapp / sms',
                                  style: TextStyle(
                                    fontSize: 20.sp,
                                  ),
                                ),
                                20.verticalSpace,
                                Pinput(
                                  controller: otpController,
                                  length: 6,
                                  defaultPinTheme: PinTheme(
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                        color: Colors.blueGrey[200],
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    textStyle: TextStyle(fontSize: 20.sp),
                                  ),
                                  // focusedPinTheme: PinTheme(
                                  //   decoration: BoxDecoration(color: Colors.grey),
                                  //   textStyle: TextStyle(fontSize: 20.sp),
                                  // ),
                                ),
                                20.verticalSpace,
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Didn’t receive a code? ",
                                      style: TextStyle(fontSize: 14.sp),
                                    ),
                                    InkWell(
                                        onTap: () {
                                          AutoRouter.of(context).navigateBack();
                                        },
                                        child: Text(
                                          "Request again",
                                          style: TextStyle(
                                              fontSize: 14.sp,
                                              color: AppColor.primaryColor,
                                              fontWeight: FontWeight.bold),
                                        )),
                                  ],
                                ),
                                20.verticalSpace,
                                SizedBox(
                                    height: 45.h,
                                    child: PrimaryButton(
                                      onClick: () {
                                        if (otpController.text.isNotEmpty) {
                                          context.read<OtherCubit>().verifyOtp(
                                              code, number, otpController.text);
                                        }
                                      },
                                      labelStyle: TextStyle(fontSize: 16.sp),
                                      label: 'Verify OTP',
                                    )),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const AuthFooterWidget()
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
