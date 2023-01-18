import 'package:dti_web/core/widgets/primary_button.dart';
import 'package:dti_web/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

class LandingPage extends StatefulWidget {
  static const String routeName = '/landing-page';
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Container(
              height: ScreenUtil().screenHeight,
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'assets/images/dti_bottom_icon.png',
                      width: 80.w,
                    ),
                    Row(
                      children: [
                        PrimaryButton(onClick: () {}, label: "Get App Now"),
                        10.horizontalSpace,
                        PrimaryButton(
                          onClick: () {},
                          label: "Login",
                          bgColor: Color(0xff0F1EAE),
                        ),
                        10.horizontalSpace,
                        DropdownButton(
                          value: 'en',
                          items: [
                            DropdownMenuItem(
                              value: 'en',
                              child: Text("EN"),
                            ),
                            DropdownMenuItem(
                              value: 'ru',
                              child: Text("RU"),
                            ),
                            DropdownMenuItem(
                              value: 'ch',
                              child: Text("CH"),
                            )
                          ],
                          onChanged: (e) {},
                        ),
                      ],
                    )
                  ],
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    child: Text(
                      "Agile and Seamless\n. . .",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 60.sp,
                          fontWeight: FontWeight.bold),
                    ),
                    width: ScreenUtil().screenWidth,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                              'assets/images/img_landing.png',
                            ),
                            fit: BoxFit.contain)),
                  ),
                )
              ]),
            ),
          ),
          SliverPadding(padding: REdgeInsets.symmetric(vertical: 20)),
          SliverToBoxAdapter(
            child: Container(
                margin: REdgeInsets.symmetric(vertical: 10.h),
                padding: REdgeInsets.symmetric(horizontal: 100.w),
                height: ScreenUtil().screenHeight / 3,
                child: Row(
                  children: [
                    Expanded(
                        flex: 2,
                        child: Container(
                          child: Row(children: [
                            Padding(
                              padding: REdgeInsets.symmetric(
                                  horizontal: 10, vertical: 10),
                              child: Image.asset('assets/images/koper.png'),
                            ),
                            15.horizontalSpace,
                            Expanded(
                              child: Text(
                                'Apply Indonesia Visa\nwith just 6 easy steps',
                                style: TextStyle(
                                    fontSize: 40.sp,
                                    color: AppColor.primaryColor,
                                    fontWeight: FontWeight.bold),
                              ),
                            )
                          ]),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 3,
                                  spreadRadius: 4,
                                  color: Colors.grey[200]!,
                                )
                              ],
                              borderRadius: BorderRadius.circular(20)),
                        )),
                    20.horizontalSpace,
                    Expanded(
                      flex: 1,
                      child: Container(
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              PrimaryButton(
                                onClick: () {},
                                label: 'APPLY NOW',
                                labelStyle: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18.sp,
                                ),
                                padding: REdgeInsets.symmetric(horizontal: 20),
                                height: 70.sp,
                              ),
                              Text(
                                "AVAILABLE ON:",
                                style: TextStyle(
                                    color: Colors.grey, fontSize: 16.sp),
                              ),
                              Container(
                                height: 50.h,
                                child: Row(
                                  children: [
                                    Expanded(
                                        child: Container(
                                      color: Colors.green,
                                    )),
                                    10.horizontalSpace,
                                    Expanded(
                                        child: Container(
                                      color: Colors.red,
                                    )),
                                  ],
                                ),
                              )
                            ]),
                      ),
                    )
                  ],
                )),
          ),
          SliverPadding(padding: REdgeInsets.symmetric(vertical: 20)),
          SliverToBoxAdapter(
            child: Container(
              width: double.infinity,
              height: ScreenUtil().screenHeight * 2 / 3,
              child: Image.asset(
                'assets/images/phones.png',
                fit: BoxFit.contain,
              ),
            ),
          ),
          SliverPadding(padding: REdgeInsets.symmetric(vertical: 20)),
          SliverToBoxAdapter(
            child: Container(
              margin: REdgeInsets.symmetric(horizontal: 30.w),
              height: ScreenUtil().screenHeight / 1.5,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      child: Container(
                    alignment: Alignment.topCenter,
                    child: Image.asset(
                      'assets/images/population.png',
                      fit: BoxFit.contain,
                    ),
                  )),
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "ABOUT US",
                        style: TextStyle(color: Colors.grey, fontSize: 17.sp),
                      ),
                      Text(
                        "BE A PART OF\nINDONESIA’S\nGROWING\nECONOMY",
                        softWrap: true,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 50.sp,
                            fontWeight: FontWeight.bold),
                      ),
                      20.verticalSpace,
                      PrimaryButton(
                        onClick: () {},
                        label: "ABOUT US",
                        width: 150.w,
                        height: 60.h,
                        padding:
                            REdgeInsets.symmetric(vertical: 10, horizontal: 10),
                        labelStyle: TextStyle(
                            fontSize: 20.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  )),
                ],
              ),
            ),
          ),
          SliverPadding(padding: REdgeInsets.symmetric(vertical: 20)),
          SliverToBoxAdapter(
            child: Container(
                height: 100.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    'assets/images/sponsor1.png',
                    'assets/images/sponsor2.png',
                    'assets/images/sponsor3.png',
                    'assets/images/sponsor4.png',
                    'assets/images/sponsor5.png',
                  ]
                      .map((e) => Image.asset(
                            e,
                            fit: BoxFit.contain,
                          ))
                      .toList(),
                )),
          ),
          SliverPadding(padding: REdgeInsets.symmetric(vertical: 20)),
          SliverToBoxAdapter(
            child: Container(
              margin: REdgeInsets.symmetric(horizontal: 50),
              height: ScreenUtil().screenHeight / 1.5,
              child: Row(
                children: [
                  Expanded(
                      child: Container(
                    alignment: Alignment.center,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "TESTIMONIAL",
                          style: TextStyle(fontSize: 20.sp, color: Colors.grey),
                        ),
                        20.verticalSpace,
                        Text(
                          "Customers\nLove Our Services",
                          style: TextStyle(
                              fontSize: 60.sp,
                              color: AppColor.primaryColor,
                              fontWeight: FontWeight.bold),
                        ),
                        20.verticalSpace,
                        Text(
                          "It is a paradisematic country, in which roasted parts of sentences fly into your mouth.",
                          style: TextStyle(
                            fontSize: 25.sp,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  )),
                  Expanded(
                      child: Container(
                    margin: REdgeInsets.only(left: 40),
                    padding: REdgeInsets.only(left: 40),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        TestimoniWidget(),
                        TestimoniWidget(),
                        TestimoniWidget(),
                      ],
                    ),
                  )),
                ],
              ),
            ),
          ),
          SliverPadding(padding: REdgeInsets.symmetric(vertical: 40)),
          SliverToBoxAdapter(
            child: Container(
              height: ScreenUtil().screenHeight / 2.5,
              margin: EdgeInsets.symmetric(horizontal: 300),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "DOWNLOAD OUR APP",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                  ),
                  20.verticalSpace,
                  Text(
                    "CONSULT WITH US",
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  20.verticalSpace,
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        height: 40.h,
                        width: 160.w,
                        child: ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.white)),
                          child: Text(
                            "GET APP NOW",
                            style: TextStyle(
                                fontSize: 16,
                                color: AppColor.primaryColor,
                                fontWeight: FontWeight.bold),
                          ),
                          onPressed: () {},
                        ),
                      ),
                      20.horizontalSpace,
                      SizedBox(
                        height: 40.h,
                        width: 160.w,
                        child: ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.white)),
                          child: Text(
                            "CONTACT US",
                            style: TextStyle(
                                fontSize: 16,
                                color: AppColor.primaryColor,
                                fontWeight: FontWeight.bold),
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          SliverPadding(padding: REdgeInsets.symmetric(vertical: 80)),
          SliverToBoxAdapter(
            child: Container(
              margin: REdgeInsets.symmetric(horizontal: 100),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        alignment: Alignment.topCenter,
                        child: Image.asset(
                          'assets/images/dti_bottom_icon.png',
                          width: 100.w,
                          alignment: Alignment.topLeft,
                        ),
                      ),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "MENU",
                              style: TextStyle(
                                  fontSize: 15.sp, color: Colors.grey),
                            ),
                            20.verticalSpace,
                            Text(
                              "Home",
                              style: TextStyle(
                                fontSize: 12.sp,
                                color: Colors.black,
                              ),
                            ),
                            10.verticalSpace,
                            Text(
                              "Immigration Online Submission",
                              style: TextStyle(
                                fontSize: 12.sp,
                                color: Colors.black,
                              ),
                            ),
                            10.verticalSpace,
                            Text(
                              "About Us",
                              style: TextStyle(
                                fontSize: 12.sp,
                                color: Colors.black,
                              ),
                            ),
                            10.verticalSpace,
                            Text(
                              "News",
                              style: TextStyle(
                                fontSize: 12.sp,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "FEATURES",
                              style: TextStyle(
                                  fontSize: 15.sp, color: Colors.grey),
                            ),
                            20.verticalSpace,
                            Text(
                              "Powerful",
                              style: TextStyle(
                                fontSize: 12.sp,
                                color: Colors.black,
                              ),
                            ),
                            10.verticalSpace,
                            Text(
                              "Smart",
                              style: TextStyle(
                                fontSize: 12.sp,
                                color: Colors.black,
                              ),
                            ),
                            10.verticalSpace,
                            Text(
                              "Easy Scale",
                              style: TextStyle(
                                fontSize: 12.sp,
                                color: Colors.black,
                              ),
                            ),
                            10.verticalSpace,
                            Text(
                              "Professional",
                              style: TextStyle(
                                fontSize: 12.sp,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "SOCIAL",
                              style: TextStyle(
                                  fontSize: 15.sp, color: Colors.grey),
                            ),
                            20.verticalSpace,
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
                      ),
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
                              child: Text("Privacy Policy")),
                        ],
                      )
                    ],
                  ),
                  20.verticalSpace
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class TestimoniWidget extends StatelessWidget {
  const TestimoniWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 6,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: REdgeInsets.symmetric(horizontal: 10, vertical: 15),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: CircleAvatar(radius: 50),
              ),
              30.horizontalSpace,
              Expanded(
                child: Padding(
                  padding: REdgeInsets.only(right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Indo Sutech Sejahtera",
                        style: TextStyle(
                            fontSize: 25.sp, fontWeight: FontWeight.bold),
                      ),
                      5.verticalSpace,
                      Text(
                        "Nothing the copy said could convince her and so it didn’t take long until a few insidious",
                        style: TextStyle(fontSize: 13.sp, color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
