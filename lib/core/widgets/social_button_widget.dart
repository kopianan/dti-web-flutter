import 'package:dti_web/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SocialButtonWidget extends StatelessWidget {
  const SocialButtonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
