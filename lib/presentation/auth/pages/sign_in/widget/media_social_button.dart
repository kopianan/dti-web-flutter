import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MediaSocialButton extends StatelessWidget {
  const MediaSocialButton({
    Key? key,
    required this.icon,
    required this.label,
    required this.onTap,
  }) : super(key: key);
  final String icon;
  final String label;
  final Function onTap;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      child: ElevatedButton(
        style: const ButtonStyle(
            elevation: MaterialStatePropertyAll(5),
            backgroundColor: MaterialStatePropertyAll(Colors.white)),
        onPressed: () {
          onTap();
        },
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image.asset(icon),
            ),
            20.horizontalSpace,
            Text(
              label,
              style: const TextStyle(color: Colors.black, fontSize: 16),
            )
          ],
        ),
      ),
    );
  }
}
