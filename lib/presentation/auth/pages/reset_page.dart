import 'package:auto_route/auto_route.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:dti_web/application/auth/auth_cubit.dart';
import 'package:dti_web/core/widgets/auth_footer_widget.dart';
import 'package:dti_web/core/widgets/auth_header_widget.dart';
import 'package:dti_web/core/widgets/primary_button.dart';
import 'package:dti_web/injection.dart';
import 'package:dti_web/routes/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:dti_web/presentation/auth/pages/sign_up_page.dart';

class ResetPage extends StatelessWidget {
  static const String routeName = '/reset';
  ResetPage({super.key});

  final TextEditingController email = TextEditingController();
  final formKey = GlobalKey<FormState>();
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
                  dismissOnTap: false, maskType: EasyLoadingMaskType.black);
            },
            onError: (e) {
              EasyLoading.dismiss();
              String error = '';
              e.error.maybeMap(
                orElse: () => error = "",
                serverError: (e) => error = "Server error",
                generalError: (e) => error = e.err,
                noData: (e) => error = "No Data Found",
                timeOut: (e) => error = e.err,
              );
              AwesomeDialog(
                context: context,
                width: ScreenUtil().screenWidth / 2,
                desc: error,
                dialogType: DialogType.error,
                title: "Error",
                btnCancelText: "Try Again",
                btnCancelOnPress: () {},
              ).show();
            },
            onResetPassword: (e) {
              EasyLoading.dismiss();
              AwesomeDialog(
                context: context,
                width: ScreenUtil().screenWidth / 2,
                desc: e.message,
                dialogType: DialogType.success,
                title: "Reset Password",
                btnOkText: "Ok",
                btnOkOnPress: () {
                  AutoRouter.of(context).popAndPush(SignInRoute());
                },
              ).show();
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
                    AuthHeaderWidget(label: "Reset Password"),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            color: Colors.green,
                            child: Image.asset(
                                'assets/images/dti_auth_register.png'),
                          ),
                        ),
                        100.horizontalSpace,
                        Expanded(
                          child: Container(
                            alignment: Alignment.center,
                            padding: REdgeInsets.symmetric(horizontal: 40),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Enter the email the email associated with your account and we’ll send an email with instructions to reset yout password.',
                                  style: TextStyle(
                                    fontSize: 20.sp,
                                  ),
                                ),
                                20.verticalSpace,
                                Form(
                                  key: formKey,
                                  autovalidateMode:
                                      AutovalidateMode.onUserInteraction,
                                  child: TextFormField(
                                    controller: email,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return "Email can not be empty";
                                      }
                                      final bool emailValid = RegExp(
                                              r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                          .hasMatch(value);
                                      if (!emailValid) {
                                        return "Wrong e-mail format";
                                      }
                                      return null;
                                    },
                                    decoration: InputDecoration(
                                      hintText: 'Input your name or e-mail',
                                      border: OutlineInputBorder(),
                                    ),
                                  ),
                                ),
                                20.verticalSpace,
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Don’t have an account yet ?",
                                      style: TextStyle(fontSize: 14.sp),
                                    ),
                                    InkWell(
                                        onTap: () {
                                          context.router
                                              .popAndPush(SignUpRoute());
                                        },
                                        child: Text(
                                          " Sign Up",
                                          style: TextStyle(fontSize: 14.sp),
                                        )),
                                  ],
                                ),
                                20.verticalSpace,
                                SizedBox(
                                    height: 45.h,
                                    child: PrimaryButton(
                                      onClick: () {
                                        if (formKey.currentState!.validate()) {
                                          print(email.text);
                                          context
                                              .read<AuthCubit>()
                                              .resetPassword(email.text);
                                        }
                                      },
                                      label: 'SEND INSTRUCTION',
                                      labelStyle: TextStyle(fontSize: 16.sp),
                                    )),
                              ],
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
