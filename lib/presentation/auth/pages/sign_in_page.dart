import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:dti_web/application/auth/auth_cubit.dart';
import 'package:dti_web/core/widgets/auth_footer_widget.dart';
import 'package:dti_web/core/widgets/auth_header_widget.dart';
import 'package:dti_web/core/widgets/loading_primary_button.dart';
import 'package:dti_web/core/widgets/primary_button.dart';
import 'package:dti_web/injection.dart';
import 'package:dti_web/presentation/auth/pages/reset_page.dart';
import 'package:dti_web/routes/app_router.dart';
import 'package:dti_web/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
            onLoginSuccess: (e) {
              //Save data to shared preferences

              context.router.push(DashboardRoute());
            },
          );
        },
        builder: (context, state) {
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 0.1.sw),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AuthHeaderWidget(label: "Login"),
                Expanded(
                  child: Row(
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
                                  "Welcome",
                                  style: TextStyle(
                                      fontSize: 30.sp,
                                      fontWeight: FontWeight.bold,
                                      color: AppColor.primaryColor),
                                ),
                                20.verticalSpace,
                                SizedBox(
                                  height: 30.h,
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    child: Row(
                                      children: [
                                        Icon(Icons.dangerous),
                                        20.horizontalSpace,
                                        Text("Login with Google")
                                      ],
                                    ),
                                  ),
                                ),
                                20.verticalSpace,
                                SizedBox(
                                  height: 30.h,
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    child: Row(
                                      children: [
                                        Icon(Icons.dangerous),
                                        20.horizontalSpace,
                                        Text("Login with Facebook")
                                      ],
                                    ),
                                  ),
                                ),
                                20.verticalSpace,
                                Row(
                                  children: [
                                    Expanded(child: Divider()),
                                    Text('OR LOGIN WITH EMAIL'),
                                    Expanded(child: Divider()),
                                  ],
                                ),
                                20.verticalSpace,
                                TextFormField(
                                    controller: email,
                                    validator: (e) {
                                      if (e!.isEmpty) {
                                        return 'Email can not be empty';
                                      }
                                      return null;
                                    },
                                    keyboardType: TextInputType.emailAddress,
                                    decoration: InputDecoration(
                                      prefixIcon: Icon(Icons.email),
                                      hintText: 'Input your e-mail',
                                    )),
                                20.verticalSpace,
                                TextFormField(
                                  controller: password,
                                  validator: (e) {
                                    if (e!.isEmpty) {
                                      return "Password can not be empty";
                                    }
                                    if (e.length < 6) {
                                      return "Password must be 8 characters";
                                    }
                                    return null;
                                  },
                                  obscureText: obsecureText,
                                  decoration: InputDecoration(
                                    prefixIcon: Icon(Icons.lock),
                                    suffixIcon: InkWell(
                                      onTap: () {
                                        setState(() {
                                          obsecureText = !obsecureText;
                                        });
                                      },
                                      child: Icon(obsecureText == true
                                          ? Icons.visibility
                                          : Icons.visibility_off),
                                    ),
                                    hintText: 'Password',
                                    border: OutlineInputBorder(),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                    vertical: 10.h,
                                  ),
                                  alignment: Alignment.centerRight,
                                  child: InkWell(
                                      onTap: () {
                                        AutoRouter.of(context)
                                            .push(ResetRoute());
                                      },
                                      child: Text("Forgot Password",
                                          style: TextStyle(
                                            fontSize: 13.sp,
                                          ))),
                                ),
                                20.verticalSpace,
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
                                    Text("Don’t have an account yet ?"),
                                    5.horizontalSpace,
                                    InkWell(
                                        onTap: () {
                                          AutoRouter.of(context)
                                              .push(SignUpRoute());
                                        },
                                        child: Text("Sign Up")),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                AuthFooterWidget()
              ],
            ),
          );
        },
      ),
    );
  }

  void loginUser(BuildContext context, String email, String password) {
    if (formKey.currentState!.validate()) {
      context.read<AuthCubit>().loginWithEmailAndPassword(email, password);
    }
  }
}
