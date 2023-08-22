
import 'package:auto_route/auto_route.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:dti_web/application/auth/auth_cubit.dart';
import 'package:dti_web/core/widgets/auth_footer_widget.dart';
import 'package:dti_web/core/widgets/primary_button.dart';
import 'package:dti_web/injection.dart';
import 'package:dti_web/presentation/auth/widgets/email_text_field.dart';
import 'package:dti_web/presentation/auth/widgets/password_text_field.dart';
import 'package:dti_web/routes/app_router.dart';
import 'package:dti_web/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class SignUpPage extends StatefulWidget {
  static const String routeName = '/register';
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final email = TextEditingController();
  final name = TextEditingController();
  final password = TextEditingController();

  final confirmPassword = TextEditingController();

  final formKey = GlobalKey<FormState>();

  bool obsecurePassword = true;
  bool obsecureConfirm = true;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AuthCubit>(),
      child: BlocListener<AuthCubit, AuthState>(
        listener: (context, state) {
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
              String message = "Something wrong";
              e.error.maybeMap(
                orElse: () {},
                generalError: (e) {
                  message = e.err;
                },
              );
              AwesomeDialog(
                      width: ScreenUtil().screenWidth / 3,
                      padding: REdgeInsets.symmetric(horizontal: 20),
                      context: context,
                      dialogType: DialogType.error,
                      title: "Error",
                      desc: message,
                      btnOkOnPress: () {},
                      btnOkText: "Try Again")
                  .show();
            },
            onLoginSuccess: (e) {
              EasyLoading.dismiss();
              context.router.replace(const DashboardRoute());
            },
            onRegisterSuccess: (e) {
              EasyLoading.dismiss();

              //loginuser

              AutoRouter.of(context).replaceAll([const NumberRegistrationRoute()]);
              // context
              //     .read<AuthCubit>()
              //     .loginWithEmailAndPassword(email.text, password.text);

              // AwesomeDialog(
              //         width: ScreenUtil().screenWidth / 3,
              //         padding: REdgeInsets.symmetric(horizontal: 20),
              //         context: context,
              //         dialogType: DialogType.success,
              //         title: "User Created",
              //         desc:
              //             "Successful Register user. Please Login Using Your Email",
              //         btnOkOnPress: () {
              //           AutoRouter.of(context).pop();
              //         },
              //         btnOkText: "OK")
              //     .show();
            },
          );
        },
        child: BlocBuilder<AuthCubit, AuthState>(
          builder: (context, state) {
            return Scaffold(
              body: SingleChildScrollView(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 0.1.sw),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
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
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Sign Up",
                                      style: TextStyle(
                                          fontSize: 30.sp,
                                          fontWeight: FontWeight.bold,
                                          color: AppColor.primaryColor),
                                    ),
                                    30.verticalSpace,
                                    TextFormField(
                                        controller: name,
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return "Fullname can not be empty";
                                          }
                                          return null;
                                        },
                                        decoration: const InputDecoration(
                                            hintText: "Fullname",
                                            prefixIcon: Icon(
                                              Icons.person,
                                            ))),
                                    30.verticalSpace,
                                    EmailTextField(email: email),
                                    30.verticalSpace,
                                    PasswordTextField(
                                        controller: password,
                                        obSecure: obsecurePassword,
                                        onObsecure: (e) {
                                          setState(() {
                                            obsecurePassword = e;
                                          });
                                        }),
                                    30.verticalSpace,
                                    PasswordTextField(
                                        controller: confirmPassword,
                                        obSecure: obsecureConfirm,
                                        hint: "Password Confirmation",
                                        onObsecure: (e) {
                                          setState(() {
                                            obsecureConfirm = e;
                                          });
                                        }),
                                    30.verticalSpace,
                                    const Text(
                                      "Creating an account means you agree to all terms and conditions of our services",
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 17,
                                      ),
                                    ),
                                    20.verticalSpace,
                                    Row(
                                      children: [
                                        const Text(
                                          "Already a member ?",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 17,
                                          ),
                                        ),
                                        5.horizontalSpace,
                                        InkWell(
                                          onTap: () {
                                            AutoRouter.of(context).popAndPush(
                                                const SignInRoute());
                                          },
                                          child: const Text(
                                            "Login",
                                            style: TextStyle(
                                                fontSize: 17,
                                                color: AppColor.primaryColor,
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
                                                      name.text);
                                            }
                                          },
                                          labelStyle:
                                              TextStyle(fontSize: 16.sp),
                                          label: 'Register',
                                        )),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      30.verticalSpace,
                      const AuthFooterWidget()
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
