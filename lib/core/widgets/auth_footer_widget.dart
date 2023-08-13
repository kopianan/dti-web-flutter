import 'package:dti_web/core/widgets/social_button_widget.dart';
import 'package:dti_web/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

class AuthFooterWidget extends StatelessWidget {
  const AuthFooterWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              'assets/images/dti_bottom_icon.png',
              width: 40.w,
            ),
            SocialButtonWidget()
          ],
        ),
        Divider(
          thickness: 2,
          height: 40.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Copyright © 2022 DoorToID. All Rights Reserved."),
            Row(
              children: [
                InkWell(
                    onTap: () {
                      launch("https://doortoid.com/term-of-use/");
                    },
                    child: Text("Terms of Use")),
                30.horizontalSpace,
                InkWell(
                  onTap: () {
                    launch("https://doortoid.com/privacy-policy/");
                  },
                  child: Text("Privacy Policy"),
                ),
              ],
            )
          ],
        ),
        20.verticalSpace
      ],
    );
  }
}
