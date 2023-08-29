import 'package:dti_web/utils/app_color.dart';
import 'package:flutter/material.dart';

class MessageButtonWithIcon extends StatelessWidget {
  const MessageButtonWithIcon({
    Key? key,
    required this.iconPath,
    required this.label,
    required this.onPressed,
  }) : super(key: key);
  final String label;
  final Function onPressed;
  final String iconPath;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: ElevatedButton.icon(
        style: ButtonStyle(
            shape: MaterialStateProperty.all(
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
            backgroundColor: MaterialStateProperty.all(AppColor.primaryColor),
            padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                const EdgeInsets.all(10))),
        label: FittedBox(child: Text(label)),
        onPressed: () {
          onPressed();
        },
        icon: Image.asset(
          iconPath,
          width: 30,
        ),
      ),
    );
  }
}
