import 'package:auto_route/auto_route.dart';
import 'package:dti_web/core/widgets/auth_footer_widget.dart';
import 'package:dti_web/core/widgets/auth_header_widget.dart';
import 'package:dti_web/presentation/auth/pages/sign_up_page.dart';
import 'package:dti_web/routes/app_router.dart';
import 'package:dti_web/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';

class OTPPage extends StatelessWidget {
  static const String routeName = '/otp-page';
  const OTPPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 0.1.sw),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AuthHeaderWidget(label: "Register"),
            Row(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.green,
                    child: Image.asset('assets/images/dti_auth_register.png'),
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
                          'An email with a verification code has been sent to your email',
                          style: TextStyle(
                            fontSize: 20.sp,
                          ),
                        ),
                        20.verticalSpace,
                        Pinput(
                          length: 4,
                          defaultPinTheme: PinTheme(
                            width: 60.w,
                            height: 60.h,
                            decoration: BoxDecoration(
                                color: Colors.blueGrey[200],
                                borderRadius: BorderRadius.circular(10)),
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
                                onTap: () {},
                                child: Text(
                                  "Request agains",
                                  style: TextStyle(
                                      fontSize: 14.sp,
                                      color: AppColor.primaryColor,
                                      fontWeight: FontWeight.bold),
                                )),
                          ],
                        ),
                        20.verticalSpace,
                        SizedBox(
                            height: 30.h,
                            child: ElevatedButton(
                                onPressed: () {
                                  context.router
                                      .pushNamed(SignUpPage.routeName);
                                },
                                child: Text('SEND INSTRUCTION'))),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            AuthFooterWidget()
          ],
        ),
      ),
    );
  }
}
