import 'package:dti_web/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
            Row(
              children: [
                InkWell(
                    onTap: () {},
                    child: CircleAvatar(
                        backgroundColor: AppColor.primaryColor,
                        child: Padding(
                            padding: REdgeInsets.all(10),
                            child: Image.asset(
                              'assets/icons/facebook.png',
                              color: Colors.white,
                            )))),
                10.horizontalSpace,
                InkWell(
                    onTap: () {},
                    child: CircleAvatar(
                        backgroundColor: AppColor.primaryColor,
                        child: Padding(
                            padding: REdgeInsets.all(10),
                            child: Image.asset(
                              'assets/icons/instagram.png',
                              color: Colors.white,
                            )))),
                10.horizontalSpace,
                InkWell(
                    onTap: () {},
                    child: CircleAvatar(
                        backgroundColor: AppColor.primaryColor,
                        child: Padding(
                            padding: REdgeInsets.all(10),
                            child: Image.asset(
                              'assets/icons/twitter.png',
                              color: Colors.white,
                            )))),
              ],
            )
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
                InkWell(onTap: () {}, child: Text("Terms of Use")),
                30.horizontalSpace,
                InkWell(onTap: () {}, child: Text("Privacy Policy")),
              ],
            )
          ],
        ),
        20.verticalSpace
      ],
    );
  }
}
