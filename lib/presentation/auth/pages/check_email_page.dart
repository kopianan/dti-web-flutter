import 'package:auto_route/auto_route.dart';
import 'package:dti_web/core/widgets/auth_footer_widget.dart';
import 'package:dti_web/core/widgets/auth_header_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CheckEmailPage extends StatelessWidget {
  static const String routeName = '/check_email';
  const CheckEmailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 0.1.sw),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AuthHeaderWidget(label: "Check Your Email"),
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
                          'We have sent a password hyperlink',
                          style: TextStyle(
                            fontSize: 20.sp,
                          ),
                        ),
                        20.verticalSpace,
                        Text(
                          'Didn\'t get receive email ? Check your spam filter,or try another email address',
                          style: TextStyle(
                            fontSize: 20.sp,
                          ),
                        ),
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
