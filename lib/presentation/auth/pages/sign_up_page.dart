import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:dti_web/application/auth/auth_cubit.dart';
import 'package:dti_web/core/widgets/auth_footer_widget.dart';
import 'package:dti_web/core/widgets/auth_header_widget.dart';
import 'package:dti_web/core/widgets/primary_button.dart';
import 'package:dti_web/injection.dart';
import 'package:dti_web/presentation/auth/pages/sign_in_page.dart';
import 'package:dti_web/presentation/widgets/loading_dialog.dart';
import 'package:dti_web/routes/app_router.dart';
import 'package:dti_web/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpPage extends StatelessWidget {
  static const String routeName = '/register';
  SignUpPage({super.key});

  final email = TextEditingController();
  final password = TextEditingController();
  final confirmPassword = TextEditingController();
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AuthCubit>(),
      child: BlocListener<AuthCubit, AuthState>(
        listener: (context, state) {
          print(state);
          state.maybeMap(
            orElse: () {},
            loading: (e) {
              EasyLoading.show(
                maskType: EasyLoadingMaskType.black,
                dismissOnTap: false,
              );
            },
            onError: (e) {
              EasyLoading.dismiss();
              AwesomeDialog(
                      width: ScreenUtil().screenWidth / 3,
                      padding: REdgeInsets.symmetric(horizontal: 20),
                      context: context,
                      dialogType: DialogType.error,
                      title: "Error",
                      desc: e.toString(),
                      btnOkOnPress: () {},
                      btnOkText: "Try Again")
                  .show();
            },
            onRegisterSuccess: (e) {
              EasyLoading.dismiss();

              AwesomeDialog(
                      width: ScreenUtil().screenWidth / 3,
                      padding: REdgeInsets.symmetric(horizontal: 20),
                      context: context,
                      dialogType: DialogType.success,
                      title: "User Created",
                      desc:
                          "Successful Register user. Please Login Using Your Email",
                      btnOkOnPress: () {
                        AutoRouter.of(context).pop();
                      },
                      btnOkText: "OK")
                  .show();
            },
          );
        },
        child: BlocBuilder<AuthCubit, AuthState>(
          builder: (context, state) {
            return Scaffold(
              body: Container(
                margin: EdgeInsets.symmetric(horizontal: 0.1.sw),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AuthHeaderWidget(label: "Register"),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            child: Image.asset('assets/images/img_auth.png'),
                          ),
                        ),
                        100.horizontalSpace,
                        Expanded(
                          child: Container(
                            alignment: Alignment.center,
                            padding: REdgeInsets.symmetric(horizontal: 40),
                            child: Form(
                              key: formKey,
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Sign Up",
                                    style: TextStyle(
                                        fontSize: 30.sp,
                                        fontWeight: FontWeight.bold,
                                        color: AppColor.primaryColor),
                                  ),
                                  20.verticalSpace,
                                  TextFormField(
                                    controller: email,
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return "Email can not be empty";
                                      } else {
                                        return null;
                                      }
                                    },
                                    decoration: InputDecoration(
                                      hintText: "Email",
                                      border: OutlineInputBorder(),
                                    ),
                                  ),
                                  20.verticalSpace,
                                  TextFormField(
                                    controller: password,
                                    obscureText: true,
                                    validator: ((value) {
                                      if (value!.isEmpty) {
                                        return "Password can not be empty";
                                      } else {
                                        return null;
                                      }
                                    }),
                                    decoration: InputDecoration(
                                      hintText: "Password",
                                      border: OutlineInputBorder(),
                                    ),
                                  ),
                                  20.verticalSpace,
                                  TextFormField(
                                    controller: confirmPassword,
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return "Password can not be empty";
                                      } else if (confirmPassword.text !=
                                          password.text) {
                                        return "Password doesn't match";
                                      } else {
                                        return null;
                                      }
                                    },
                                    obscureText: true,
                                    decoration: InputDecoration(
                                      hintText: "Password",
                                      border: OutlineInputBorder(),
                                    ),
                                  ),
                                  20.verticalSpace,
                                  Text(
                                    "Creating an account means you agree to all terms and conditions of our services",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  20.verticalSpace,
                                  Row(
                                    children: [
                                      Text(
                                        "Already a member?",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      5.horizontalSpace,
                                      InkWell(
                                        onTap: () {
                                          AutoRouter.of(context)
                                              .popAndPush(SignInRoute());
                                        },
                                        child: Text(
                                          "Login",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ],
                                  ),
                                  20.verticalSpace,
                                  SizedBox(
                                      height: 45.h,
                                      child: PrimaryButton(
                                        onClick: () {
                                          if (formKey.currentState!
                                              .validate()) {
                                            context
                                                .read<AuthCubit>()
                                                .registerWithEmailAndPassword(
                                                  email.text,
                                                  password.text,
                                                  confirmPassword.text,
                                                );
                                          }
                                        },
                                        labelStyle: TextStyle(fontSize: 16.sp),
                                        label: 'Register',
                                      )),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    AuthFooterWidget()
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
