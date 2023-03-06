import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FeedbackCard extends StatelessWidget {
  const FeedbackCard(
      {Key? key,
      required this.imageAsset,
      required this.subtitle,
      required this.title,
      required this.onTap})
      : super(key: key);
  final String title;
  final String subtitle;
  final String imageAsset;
  final Function onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap();
      },
      child: Container(
        padding: const EdgeInsets.all(10),
        height: 100.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color(0xff06186B),
        ),
        width: 300.w,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(imageAsset, width: 50.w),
            SizedBox(width: 30.w),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                Text(
                  subtitle,
                  style: const TextStyle(fontSize: 12, color: Colors.white),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
