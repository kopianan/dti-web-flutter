import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';

mixin CoreMixin {
  void showInfoDialog(
    BuildContext context, {
    required String title,
    required String desc,
    String? okText,
    String? cancelText,
    Function()? btnOkOnPress,
    Function()? btnCancelOnPress,
  }) {
    AwesomeDialog(
            width: 400,
            context: context,
            dialogType: DialogType.info,
            animType: AnimType.scale,
            headerAnimationLoop: true,
            title: title,
            titleTextStyle:
                const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            descTextStyle: const TextStyle(fontSize: 20),
            desc: desc,
            btnOkOnPress: btnOkOnPress ?? () {},
            btnOkColor: Colors.blue,
            btnOkText: okText ?? "OK",
            btnCancelOnPress: btnCancelOnPress ?? () {},
            btnCancelColor: Colors.red,
            btnCancelText: cancelText ?? "Cancel",
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20))
        .show();
  }

  void showErrDialog(
    BuildContext context, {
    required String title,
    required String desc,
    String? okText,
    String? cancelText,
    Function()? btnOkOnPress,
    Function()? btnCancelOnPress,
  }) {
    AwesomeDialog(
            width: 400,
            context: context,
            dialogType: DialogType.error,
            animType: AnimType.scale,
            titleTextStyle:
                const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            descTextStyle: const TextStyle(fontSize: 20),
            headerAnimationLoop: true,
            title: title,
            desc: desc,
            btnOkOnPress: btnOkOnPress ?? () {},
            btnOkColor: Colors.red,
            btnOkText: okText ?? "OK",
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20))
        .show();
  }

  void showSuccessDialog(
    BuildContext context, {
    required String title,
    required String desc,
    String? okText,
    String? cancelText,
    Function()? btnOkOnPress,
    Function()? btnCancelOnPress,
  }) {
    AwesomeDialog(
            width: 400,
            context: context,
            dialogType: DialogType.success,
            animType: AnimType.scale,
            headerAnimationLoop: true,
            title: title,
            titleTextStyle:
                const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            descTextStyle: const TextStyle(fontSize: 20),
            desc: desc,
            btnOkOnPress: btnOkOnPress ?? () {},
            btnOkColor: Colors.green,
            btnOkText: okText ?? "OK",
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20))
        .show();
  }
}
