import 'package:dti_web/core/widgets/application_card.dart';
import 'package:dti_web/core/widgets/auth_footer_widget.dart';
import 'package:dti_web/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

class DashboardPage extends StatefulWidget {
  static const String routeName = '/dashboard-page';
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80.h,
        leading: Image.asset('assets/images/dti_bottom_icon.png'),
        actions: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Jeffry T"),
              Text("Indonesia"),
            ],
          ),
          10.horizontalSpace,
          Container(
            margin: EdgeInsets.symmetric(vertical: 15.h),
            width: 50.w,
            height: 50.h,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(15),
            ),
          )
        ],
      ),
      body: Container(
        height: ScreenUtil().screenHeight - kToolbarHeight,
        child: Column(
          children: [
            Container(
              width: 400.w,
              // height: 200.h,
              child: VisaApplicationCard(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Container(
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/lock.png',
                          width: 80.w,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  child: Text("Your Data is Safe",
                                      style: TextStyle(
                                          fontSize: 17.sp,
                                          fontWeight: FontWeight.bold,
                                          color: AppColor.primaryColor))),
                              10.verticalSpace,
                              SizedBox(
                                // width: 100.w,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SafetyInfoWidget(
                                      title: "Data Privacy",
                                      subtitle:
                                          "We are in compliance with data\nprotection laws and regulations",
                                    ),
                                    10.horizontalSpace,
                                    SafetyInfoWidget(
                                      title: "Data Security",
                                      subtitle:
                                          "We are protecting your data\nfrom internal and external attackers",
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Row(
                  children: [
                    CircleAvatar(),
                    10.horizontalSpace,
                    CircleAvatar(),
                    10.horizontalSpace,
                    CircleAvatar(),
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
        ),
      ),
    );
  }
}

class SafetyInfoWidget extends StatelessWidget {
  const SafetyInfoWidget(
      {Key? key, required this.title, required this.subtitle})
      : super(key: key);
  final String title;
  final String subtitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
              fontSize: 15.sp,
              fontWeight: FontWeight.bold,
              color: Colors.black),
        ),
        Text(
          subtitle,
          softWrap: true,
        ),
      ],
    );
  }
}
