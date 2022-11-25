import 'package:dti_web/utils/app_color.dart';
import 'package:flutter/material.dart';

class LoadingDialog {
  static Future<void> showDialogLoading(BuildContext context) async {
    await showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) => AlertDialog(
        content: Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7),
            ),
            child: const Center(
                child: CircularProgressIndicator(
              color: AppColor.primaryColor,
            ))),
      ),
    );
  }
}
