import 'package:dti_web/utils/app_color.dart';
import 'package:flutter/material.dart';

Widget dateTimThemeChild(BuildContext context, Widget? child) {
  return Theme(
    data: Theme.of(context).copyWith(
      colorScheme: const ColorScheme.light(
          primary: AppColor.primaryColor,
          onPrimary: Colors.white,
          onSurface: Colors.black),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          primary: Colors.red, // button text color
        ),
      ),
    ),
    child: child!,
  );
}
