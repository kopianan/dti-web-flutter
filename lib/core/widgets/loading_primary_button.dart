import 'package:dti_web/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoadingPrimaryButton extends StatelessWidget {
  LoadingPrimaryButton({
    super.key,
    this.bgColor = AppColor.primaryColor,
    this.height,
    this.labelStyle,
    this.width,
    this.padding,
  });
  final Color? bgColor;
  final double? height;
  final double? width;
  final EdgeInsetsGeometry? padding;
  final TextStyle? labelStyle;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: width,
        height: height ?? 30.h,
        child: ElevatedButton(
            style: ButtonStyle(
                padding: MaterialStateProperty.all(
                    padding ?? REdgeInsets.symmetric(horizontal: 12)),
                backgroundColor: MaterialStateProperty.all(bgColor),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)))),
            onPressed: () {},
            child: Center(
              child: CircularProgressIndicator(color: Colors.white),
            )));
  }
}
