import 'package:dti_web/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrimaryButton extends StatelessWidget {
  PrimaryButton({
    super.key,
    required this.onClick,
    required this.label,
    this.bgColor = AppColor.primaryColor,
    this.height,
    this.labelStyle,
    this.width,
    this.padding,
  });
  final Function onClick;
  final String label;
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
          child: Text(
            label,
            style:
                labelStyle ?? TextStyle(color: Colors.white, fontSize: 10.sp),
          ),
        ));
  }
}
