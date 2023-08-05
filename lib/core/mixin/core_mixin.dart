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
      context: context,
      dialogType: DialogType.info,
      animType: AnimType.scale,
      headerAnimationLoop: true,
      title: title,
      desc: desc,
      btnOkOnPress: btnOkOnPress ?? () {},
      btnOkColor: Colors.blue,
      btnOkText: okText ?? "OK",
      btnCancelOnPress: btnCancelOnPress ?? () {},
      btnCancelColor: Colors.red,
      btnCancelText: cancelText ?? "Cancel",
    ).show();
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
      context: context,
      dialogType: DialogType.error,
      animType: AnimType.scale,
      headerAnimationLoop: true,
      title: title,
      desc: desc,
      btnOkOnPress: btnOkOnPress ?? () {},
      btnOkColor: Colors.red,
      btnOkText: okText ?? "OK",
    ).show();
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
      context: context,
      dialogType: DialogType.success,
      animType: AnimType.scale,
      headerAnimationLoop: true,
      title: title,
      desc: desc,
      btnOkOnPress: btnOkOnPress ?? () {},
      btnOkColor: Colors.green,
      btnOkText: okText ?? "OK",
    ).show();
  }
}
