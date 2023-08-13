import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AuthHeaderWidget extends StatelessWidget {
  const AuthHeaderWidget({Key? key, required this.label}) : super(key: key);
  final String label;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: REdgeInsets.symmetric(vertical: 20),
      child: Text(
        label,
        style: TextStyle(
          fontSize: 30.sp,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
