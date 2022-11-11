import 'package:dti_web/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class QuestionnaireCard extends StatelessWidget {
  const QuestionnaireCard({
    super.key,
    required this.onTap,
    required this.body,
    required this.footer,
    required this.header,
  });
  final Function onTap;
  final String header;
  final String body;
  final String footer;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        onTap();
      },
      child: Container(
          clipBehavior: Clip.hardEdge,
          margin: REdgeInsets.only(bottom: 15),
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                    offset: Offset(2, -2),
                    blurRadius: 10,
                    spreadRadius: 1,
                    color: Colors.grey)
              ]),
          child: Column(
            children: [
              Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  color: AppColor.primaryColor,
                  padding: EdgeInsets.all(10),
                  child: Text(
                    header,
                    style: TextStyle(
                        fontSize: 17.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  )),
              Container(
                  padding:
                      EdgeInsets.symmetric(vertical: 20.h, horizontal: 10.w),
                  child: Text(body)),
              Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  color: Colors.grey[300],
                  padding: EdgeInsets.all(10),
                  child: Text(
                    footer,
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                  )),
            ],
          )),
    );
  }
}
