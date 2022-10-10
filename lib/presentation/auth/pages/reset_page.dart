import 'package:auto_route/auto_route.dart';
import 'package:dti_web/core/widgets/auth_footer_widget.dart';
import 'package:dti_web/core/widgets/auth_header_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:dti_web/presentation/auth/pages/sign_up_page.dart';

class ResetPage extends StatelessWidget {
  static const String routeName = '/reset';
  const ResetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 0.1.sw),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AuthHeaderWidget(label: "Reset Password"),
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
                          'Enter the email the email associated with your account and we’ll send an email with instructions to reset yout password.',
                          style: TextStyle(
                            fontSize: 20.sp,
                          ),
                        ),
                        20.verticalSpace,
                        TextFormField(
                          decoration: InputDecoration(
                            hintText: 'Input your name or e-mail',
                            border: OutlineInputBorder(),
                          ),
                        ),
                        20.verticalSpace,
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Don’t have an account yet ?",
                              style: TextStyle(fontSize: 14.sp),
                            ),
                            InkWell(
                                onTap: () {},
                                child: Text(
                                  "Sign Up",
                                  style: TextStyle(fontSize: 14.sp),
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
