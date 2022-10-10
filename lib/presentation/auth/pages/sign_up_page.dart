import 'package:dti_web/core/widgets/auth_footer_widget.dart';
import 'package:dti_web/core/widgets/auth_header_widget.dart';
import 'package:dti_web/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpPage extends StatelessWidget {
  static const String routeName = '/register';
  const SignUpPage({super.key});

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
                    child: Image.asset('assets/images/img_auth.png'),
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
                          "Sign Up",
                          style: TextStyle(
                              fontSize: 30.sp,
                              fontWeight: FontWeight.bold,
                              color: AppColor.primaryColor),
                        ),
                        20.verticalSpace,
                        TextFormField(
                          decoration: InputDecoration(
                            hintText: "Username",
                            border: OutlineInputBorder(),
                          ),
                        ),
                        20.verticalSpace,
                        TextFormField(
                          decoration: InputDecoration(
                            hintText: "Email",
                            border: OutlineInputBorder(),
                          ),
                        ),
                        20.verticalSpace,
                        TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: "Password",
                            border: OutlineInputBorder(),
                          ),
                        ),
                        20.verticalSpace,
                        Text(
                          "Creating an account means you agree to all terms and conditions of our services",
                          style: TextStyle(color: Colors.grey),
                        ),
                        20.verticalSpace,
                        Row(
                          children: [
                            Text(
                              "Already a member?",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            InkWell(
                              onTap: () {},
                              child: Text(
                                "20.verticalSpace,Login",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                        20.verticalSpace,
                        SizedBox(
                            height: 30.h,
                            child: ElevatedButton(
                                onPressed: () {}, child: Text('Register'))),
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
