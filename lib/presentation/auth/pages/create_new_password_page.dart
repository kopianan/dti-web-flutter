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

@RoutePage()
class CreateNewPasswordPage extends StatelessWidget {
  static const String routeName = '/create-new-password';
  const CreateNewPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 0.1.sw),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AuthHeaderWidget(label: "Create New Password"),
            Row(
              children: [
                Expanded(
                  child: Container(
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
                          'Your new password must be different from previous used passwords.',
                          style: TextStyle(
                            fontSize: 20.sp,
                          ),
                        ),
                        20.verticalSpace,
                        TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                            suffixIcon: Icon(Icons.remove_red_eye_outlined),
                            label: Text("Password"),
                            helperText: 'Must be at least 8 character.',
                            hintText: '************',
                            border: UnderlineInputBorder(),
                          ),
                        ),
                        20.verticalSpace,
                        TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                            helperText: 'Both password must be match',
                            suffixIcon: Icon(Icons.remove_red_eye_outlined),
                            label: Text("Confirm Password"),
                            hintText: '************',
                            border: UnderlineInputBorder(),
                          ),
                        ),
                        20.verticalSpace,
                        SizedBox(
                            height: 30.h,
                            child: ElevatedButton(
                                onPressed: () {
                                  context.router
                                      .pushNamed(SignUpPage.routeName);
                                },
                                child: Text('RESET PASSWORD'))),
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
