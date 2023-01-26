import 'package:dti_web/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialButtonWidget extends StatelessWidget {
  const SocialButtonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
            onTap: () {
              launch('https://www.facebook.com/doortoindonesia');
            },
            child: CircleAvatar(
                backgroundColor: AppColor.primaryColor,
                child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Image.asset(
                      'assets/icons/facebook.png',
                      color: Colors.white,
                    )))),
        10.horizontalSpace,
        InkWell(
            onTap: () {
              launch('https://www.instagram.com/doortoid/');
            },
            child: CircleAvatar(
                backgroundColor: AppColor.primaryColor,
                child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Image.asset(
                      'assets/icons/instagram.png',
                      color: Colors.white,
                    )))),
        10.horizontalSpace,
        InkWell(
            onTap: () {
              launch('https://t.me/DoorToIDBot');
            },
            child: CircleAvatar(
                backgroundColor: AppColor.primaryColor,
                child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Image.asset(
                      'assets/icons/telegram.png',
                      color: Colors.white,
                    )))),
      ],
    );
  }
}
