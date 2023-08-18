import 'package:auto_route/auto_route.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:dti_web/application/auth/auth_cubit.dart';
import 'package:dti_web/application/global/global_user_cubit.dart';
import 'package:dti_web/application/other/other_cubit.dart';
import 'package:dti_web/core/mixin/core_mixin.dart';
import 'package:dti_web/core/storage.dart';
import 'package:dti_web/core/widgets/auth_footer_widget.dart';
import 'package:dti_web/core/widgets/auth_header_widget.dart';
import 'package:dti_web/core/widgets/primary_button.dart';
import 'package:dti_web/injection.dart';
import 'package:dti_web/routes/app_router.dart';
import 'package:dti_web/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

@RoutePage()
class NumberRegistrationPage extends StatefulWidget {
  static const String routeName = '/number-registration';
  const NumberRegistrationPage({super.key});

  @override
  State<NumberRegistrationPage> createState() => _NumberRegistrationPageState();
}

class _NumberRegistrationPageState extends State<NumberRegistrationPage>
    with CoreMixin {
  final formKey = GlobalKey<FormBuilderState>();
  late CountryCode countryCode;
  String? phoneNumber;
  @override
  void initState() {
    super.initState();
    countryCode = CountryCode.fromDialCode("+1");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => getIt<OtherCubit>(),
          ),
          BlocProvider(
            create: (context) => getIt<AuthCubit>()
              ..getUserData(delay: const Duration(seconds: 8)),
          ),
        ],
        child: BlocConsumer<AuthCubit, AuthState>(
          listener: (context, state) {
            state.maybeMap(
                orElse: () {},
                loading: (e) {
                  EasyLoading.show(status: "Getting User Data . . .");
                },
                onGetUserData: (e) async {
                  EasyLoading.dismiss();
                  final user = e.userData;
                  //set to state management.
                  getIt<GlobalUserCubit>().setUserDatata(user);
                  //save to local storage
                  await Storage().saveUser(user);
                },
                onError: (e) {
                  EasyLoading.dismiss();
                  AwesomeDialog(
                          width: ScreenUtil().screenWidth / 2,
                          padding: REdgeInsets.symmetric(horizontal: 20),
                          context: context,
                          dialogType: DialogType.error,
                          title: "Error",
                          desc: "No User Found",
                          btnCancelOnPress: () {
                            AutoRouter.of(context).pop();
                          },
                          btnCancelText: "Try again")
                      .show();
                });
          },
          builder: (context, state) {
            return BlocConsumer<OtherCubit, OtherState>(
              listener: (context, state) {
                state.maybeMap(
                  orElse: () {
                    EasyLoading.dismiss();
                  },
                  errorState: (e) {
                    String err = "";
                    e.failures.maybeMap(
                      orElse: () {
                        err = "Something wrong";
                      },
                      generalError: (e) {
                        err = e.err;
                      },
                      serverError: (e) {
                        err = "Server Error";
                      },
                    );
                    showErrDialog(
                      context,
                      title: "OTP ERROR",
                      desc: err,
                    );
                  },
                  loading: (e) {
                    EasyLoading.show(maskType: EasyLoadingMaskType.black);
                  },
                  onOTPGenerated: (value) {
                    EasyLoading.dismiss();
                    AutoRouter.of(context).navigate(OTPRoute(
                      code: countryCode,
                      number: phoneNumber!,
                    ));
                  },
                );
              },
              builder: (context, state) {
                return SingleChildScrollView(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 0.1.sw),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const AuthHeaderWidget(
                            label: "Register Your Number Phone"),
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                child: Image.asset(
                                    'assets/images/dti_auth_register.png'),
                              ),
                            ),
                            100.horizontalSpace,
                            Expanded(
                              child: Container(
                                alignment: Alignment.center,
                                padding: REdgeInsets.symmetric(horizontal: 40),
                                child: FormBuilder(
                                  key: formKey,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Your Phone Number',
                                        style: TextStyle(
                                            fontSize: 20.sp,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      10.verticalSpace,
                                      Text(
                                        'Register your mobile number with us, so you are notified of your account activities',
                                        style: TextStyle(
                                          fontSize: 16.sp,
                                        ),
                                      ),
                                      20.verticalSpace,
                                      FormBuilderTextField(
                                        name: 'MobileNumberField',
                                        enableSuggestions: false,
                                        autocorrect: false,
                                        enabled: true,
                                        validator:
                                            FormBuilderValidators.compose([
                                          FormBuilderValidators.required(),
                                          FormBuilderValidators.numeric(),
                                        ]),
                                        autovalidateMode:
                                            AutovalidateMode.onUserInteraction,
                                        decoration: InputDecoration(
                                          prefixIcon: CountryCodePicker(
                                            initialSelection:
                                                countryCode.dialCode,
                                            onChanged: (value) {
                                              countryCode = value;
                                            },
                                            boxDecoration: const BoxDecoration(
                                                border: Border(
                                                    bottom: BorderSide(
                                                        width: 1,
                                                        color: Colors.black))),
                                            showCountryOnly: false,
                                            showOnlyCountryWhenClosed: false,
                                            alignLeft: false,
                                          ),
                                          labelText: "Mobile Number",
                                          hintStyle: const TextStyle(
                                            color: Colors.grey,
                                          ),
                                          hintText: "Mobile Number",
                                          fillColor: Colors.white70,
                                        ),
                                      ),
                                      20.verticalSpace,
                                      FormBuilderRadioGroup(
                                        decoration: InputDecoration(
                                            labelStyle: TextStyle(
                                              fontSize: 20.sp,
                                            ),
                                            labelText:
                                                "Where do you want to receive verification code ?"),
                                        name: 'otpSendTo',
                                        validator:
                                            FormBuilderValidators.required(),
                                        initialValue: false,
                                        autovalidateMode:
                                            AutovalidateMode.onUserInteraction,
                                        separator: 10.horizontalSpace,
                                        activeColor: AppColor.primaryColor,
                                        options: [
                                          FormBuilderFieldOption(
                                            value: false,
                                            child: Text(
                                              "Whatsapp",
                                              style: TextStyle(fontSize: 17.sp),
                                            ),
                                          ),
                                          FormBuilderFieldOption(
                                            value: true,
                                            child: Text(
                                              "SMS",
                                              style: TextStyle(fontSize: 17.sp),
                                            ),
                                          ),
                                        ],
                                      ),
                                      40.verticalSpace,
                                      SizedBox(
                                          height: 45.h,
                                          child: PrimaryButton(
                                            onClick: () {
                                              if (formKey.currentState!
                                                  .validate()) {
                                                formKey.currentState!.save();
                                                final formData =
                                                    formKey.currentState!.value;
                                                late String channel;
                                                if (formData['otpSendTo'] ==
                                                    false) {
                                                  channel = 'whatsapp';
                                                } else {
                                                  channel = 'sms';
                                                }
                                                phoneNumber = formData[
                                                    'MobileNumberField'];
                                                context
                                                    .read<OtherCubit>()
                                                    .generateOtp(
                                                      countryCode,
                                                      phoneNumber!,
                                                      channel,
                                                    );
                                              }
                                            },
                                            labelStyle:
                                                TextStyle(fontSize: 16.sp),
                                            label: 'Generate OTP',
                                          )),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const AuthFooterWidget()
                      ],
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
