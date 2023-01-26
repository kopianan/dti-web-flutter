import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:dti_web/application/auth/auth_cubit.dart';
import 'package:dti_web/core/widgets/auth_footer_widget.dart';
import 'package:dti_web/core/widgets/auth_header_widget.dart';
import 'package:dti_web/core/widgets/loading_primary_button.dart';
import 'package:dti_web/core/widgets/primary_button.dart';
import 'package:dti_web/presentation/auth/widgets/password_text_field.dart';
import 'package:dti_web/routes/app_router.dart';
import 'package:dti_web/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../widgets/email_text_field.dart';
import 'widget/media_social_button.dart';

class SignInPage extends StatefulWidget {
  static const String routeName = '/login';
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  var obsecureText = true;
  final email = TextEditingController();
  final password = TextEditingController();
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<AuthCubit, AuthState>(
        listener: (context, state) {
          state.maybeMap(
            orElse: () {},
            onError: (e) {
              e.error.maybeMap(
                orElse: () {},
                authError: (e) {
                  AwesomeDialog(
                          width: ScreenUtil().screenWidth / 2,
                          padding: REdgeInsets.symmetric(horizontal: 20),
                          context: context,
                          dialogType: DialogType.warning,
                          title: "Warning",
                          desc: e.message,
                          btnCancelOnPress: () {
                            AutoRouter.of(context).pop();
                          },
                          btnCancelText: "Try again")
                      .show();
                },
              );
            },
            error: (e) {
              AwesomeDialog(
                      width: ScreenUtil().screenWidth / 2,
                      padding: REdgeInsets.symmetric(horizontal: 20),
                      context: context,
                      dialogType: DialogType.error,
                      title: "Error",
                      desc: e.error,
                      btnCancelOnPress: () {
                        AutoRouter.of(context).pop();
                      },
                      btnCancelText: "Try again")
                  .show();
            },
            onRegisterSuccess: (e) {
              context.router.replaceAll([NumberRegistrationRoute()]);
            },
            onLoginSuccess: (e) {
              //get user data first.

              context.router.replaceAll([const DashboardRoute()]);
            },
            onLoginSuccessWithoutPhoneNumber: (e) {
              context.router.replaceAll([NumberRegistrationRoute()]);
            },
          );
        },
        builder: (context, state) {
          return SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 0.1.sw),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const AuthHeaderWidget(label: "Login"),
                  Row(
                    children: [
                      Expanded(
                        child: Image.asset('assets/images/img_auth.png'),
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
                                  "Welcome",
                                  style: TextStyle(
                                      fontSize: 30.sp,
                                      fontWeight: FontWeight.bold,
                                      color: AppColor.primaryColor),
                                ),
                                20.verticalSpace,
                                MediaSocialButton(
                                  icon: 'assets/icons/ic_gg.png',
                                  label: "Login with Google",
                                  onTap: () {
                                    context
                                        .read<AuthCubit>()
                                        .loginUsingGoogle();
                                  },
                                ),
                                20.verticalSpace,
                                MediaSocialButton(
                                  icon: 'assets/icons/ic_fb.png',
                                  label: "Login with Facebook",
                                  onTap: () {
                                    context
                                        .read<AuthCubit>()
                                        .loginUsingFacebook();
                                  },
                                ),
                                30.verticalSpace,
                                _loginWithEmail(),
                                20.verticalSpace,
                                EmailTextField(email: email),
                                20.verticalSpace,
                                PasswordTextField(
                                  controller: password,
                                  obSecure: obsecureText,
                                  onFinish: (e) {
                                    loginUser(
                                        context, email.text, password.text);
                                  },
                                  onObsecure: (e) {
                                    setState(() {
                                      obsecureText = e;
                                    });
                                  },
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                    vertical: 20.h,
                                  ),
                                  alignment: Alignment.centerRight,
                                  child: InkWell(
                                      onTap: () {
                                        AutoRouter.of(context)
                                            .push(ResetRoute());
                                      },
                                      child: Text("Forgot Password",
                                          style: TextStyle(
                                            color: AppColor.primaryColor,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16.sp,
                                          ))),
                                ),
                                SizedBox(
                                  height: 45.h,
                                  child: state.maybeMap(
                                    loading: (value) => LoadingPrimaryButton(),
                                    orElse: () => PrimaryButton(
                                      onClick: () {
                                        loginUser(
                                            context, email.text, password.text);
                                      },
                                      label: "LOGIN",
                                      labelStyle: TextStyle(fontSize: 15.sp),
                                    ),
                                  ),
                                ),
                                Divider(
                                  height: 40.h,
                                  thickness: 2,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Don’t have an account yet ?",
                                      style: TextStyle(
                                        fontSize: 16.sp,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    5.horizontalSpace,
                                    InkWell(
                                      onTap: () {
                                        AutoRouter.of(context)
                                            .push(SignUpRoute());
                                      },
                                      child: Text(
                                        "Sign Up",
                                        style: TextStyle(
                                          fontSize: 16.sp,
                                          color: AppColor.primaryColor,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    30.verticalSpace,
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  40.verticalSpace,
                  const AuthFooterWidget()
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Row _loginWithEmail() {
    return Row(
      children: const [
        Expanded(child: Divider()),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            'OR LOGIN WITH EMAIL',
            style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
          ),
        ),
        Expanded(child: Divider()),
      ],
    );
  }

  void loginUser(BuildContext context, String email, String password) {
    if (formKey.currentState!.validate()) {
      // context
      //     .read<AuthCubit>()
      //     .loginWithEmailAndPassword('kopianandev@gmail.com', '123456');
      context.read<AuthCubit>().loginWithEmailAndPassword(email, password);
    }
  }
}
