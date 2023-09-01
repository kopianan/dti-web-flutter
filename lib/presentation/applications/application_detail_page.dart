import 'package:auto_route/auto_route.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:dti_web/application/admin/cubit/admin_cubit.dart';
import 'package:dti_web/application/app_list/app_list_cubit.dart';
import 'package:dti_web/application/customer/cubit/customer_cubit.dart';
import 'package:dti_web/application/document/document_cubit.dart';
import 'package:dti_web/application/global/global_user_cubit.dart';
import 'package:dti_web/application/update_application/update_application_cubit.dart';
import 'package:dti_web/core/mixin/navigate_mixin.dart';
import 'package:dti_web/core/widgets/primary_button.dart';
import 'package:dti_web/domain/core/apps_type.dart';
import 'package:dti_web/domain/core/single_visa_response.dart';
import 'package:dti_web/domain/core/visa_application_model.dart';
import 'package:dti_web/injection.dart';
import 'package:dti_web/presentation/applications/widgets/passport_detail_widget.dart';
import 'package:dti_web/presentation/questionnaire/widget/custom_second_header.dart';
import 'package:dti_web/routes/app_router.dart';
import 'package:dti_web/utils/app_color.dart';
import 'package:dti_web/utils/converter.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

import 'widgets/application_detail_widget.dart';
import 'widgets/confirmation_section.dart';
import 'widgets/message_button_with_icon.dart';

@RoutePage()
class ApplicationDetailPage extends StatelessWidget {
  static const String routeName = '/application-detail/:id';
  const ApplicationDetailPage({
    super.key,
    @PathParam('id') required this.firebaseDocId,
    required this.appsType,
  });

  final String firebaseDocId;
  final AppsType appsType;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => getIt<UpdateApplicationCubit>()
          ..getUserAppsWithImages(firebaseDocId, appsType),
        child: BlocListener<UpdateApplicationCubit, UpdateApplicationState>(
          listener: (context, state) {
            state.maybeMap(
              orElse: () {},
              onLoading: (e) async {
                EasyLoading.show(
                  maskType: EasyLoadingMaskType.black,
                );
              },
              onGetSingleAppsWithImage: (e) {
                getIt<DocumentCubit>()
                    .setupApplication(e.singleResponse.visaApplicationModel!);
              },
            );
          },
          child: BlocBuilder<UpdateApplicationCubit, UpdateApplicationState>(
            builder: (context, state) {
              return state.maybeMap(
                orElse: () {
                  return Container();
                },
                onError: (e) {
                  return const Center(
                    child: SelectableText("Something wrong"),
                  );
                },
                onLoading: (e) {
                  return SizedBox(
                    width: double.infinity,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          const CircularProgressIndicator(),
                          20.verticalSpace,
                          SelectableText(
                            "Getting Data . . .",
                            style: TextStyle(
                                fontSize: 20.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                          )
                        ]),
                  );
                },
                onGetSingleAppsWithImage: (e) {
                  return SuccessBody(
                    appsType: appsType,
                    singleResponse: e.singleResponse,
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}

class SuccessBody extends StatefulWidget {
  const SuccessBody(
      {super.key, required this.singleResponse, required this.appsType});
  final SingleVisaResponse singleResponse;
  final AppsType appsType;

  @override
  State<SuccessBody> createState() => _SuccessBodyState();
}

class _SuccessBodyState extends State<SuccessBody> with NavigateMixin {
  late VisaApplicationModel visa;
  late List<Map<String, dynamic>>? imagesUrl;
  late AppsType appsType;
  @override
  void initState() {
    visa = widget.singleResponse.visaApplicationModel!;
    imagesUrl = widget.singleResponse.documentUserApplicationUrl!;
    appsType = widget.appsType;
    super.initState();
  }

  bool isCheckedA = false;
  bool isCheckedB = false;
  bool isCheckedC = false;

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return AppColor.primaryColor;
      }
      return AppColor.primaryColor;
    }

    return Row(
      children: [
        Expanded(
          child: SingleChildScrollView(
              child: Column(
            children: [
              CustomSecondHeader(
                onBack: () {
                  AutoRouter.of(context).pop();
                },
              ),
              appsType == AppsType.application
                  ? ApplicationDetailWidget(
                      visa: visa,
                      imagesUrl: imagesUrl!,
                    )
                  : PassportDetailWidget(
                      visa: visa,
                      imagesUrl: imagesUrl!,
                    ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Visibility(
                      visible:
                          context.read<GlobalUserCubit>().state.user.isAdmin(),
                      child: Visibility(
                        visible:
                            visa.status == "Completed" || visa.status == "Paid",
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Promo Used",
                              style: TextStyle(
                                color: Colors.grey[700],
                                fontSize: 25.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              visa.promoUsed ?? "No Promo",
                              style: TextStyle(
                                color: AppColor.primaryColor,
                                fontSize: 22.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Visibility(
                      visible: getIt<GlobalUserCubit>().state.user.isAdmin(),
                      child: MultiBlocProvider(
                        providers: [
                          BlocProvider(
                            create: (context) => getIt<CustomerCubit>()
                              ..getUserById(visa.createdBy ?? ""),
                          ),
                          BlocProvider(
                            create: (context) => getIt<AdminCubit>(),
                          ),
                        ],
                        child: BlocBuilder<AdminCubit, AdminState>(
                          builder: (context, state) {
                            return BlocBuilder<CustomerCubit, CustomerState>(
                              builder: (context, state) {
                                return state.maybeMap(orElse: () {
                                  return Container();
                                }, getSingleCustomer: (user) {
                                  return Row(
                                    children: [
                                      Expanded(
                                        child: MessageButtonWithIcon(
                                          iconPath: 'assets/icons/email.png',
                                          label: "Email",
                                          onPressed: () {
                                            context
                                                .read<AdminCubit>()
                                                .sendEmail(visa.title ?? "",
                                                    user.user.email);
                                          },
                                        ),
                                      ),
                                      Expanded(
                                        child: MessageButtonWithIcon(
                                          iconPath: 'assets/icons/whatsapp.png',
                                          label: "Whatsapp",
                                          onPressed: () {
                                            final phone = user.user.countryCode
                                                    .replaceFirst("+", "") +
                                                user.user.mobileNumber;

                                            context
                                                .read<AdminCubit>()
                                                .sendWhatsapp(phone);
                                          },
                                        ),
                                      ),
                                    ],
                                  );
                                });
                              },
                            );
                          },
                        ),
                      ),
                    ),
                    Visibility(
                      visible: visa.status == "Submitted",
                      child: Column(
                        children: [
                          const Divider(),
                          const SizedBox(height: 20),
                          ConfirmationSection(visa: visa),
                          const Divider(height: 40),
                        ],
                      ),
                    ),
                    20.verticalSpace,
                    //ONLY SHOW WHEN USER ONLY
                    Visibility(
                      visible: visa.status?.toLowerCase() == 'draft',
                      child: termAndCondition(getColor),
                    ),
                    // REFERENCE NUMBER
                    20.verticalSpace,
                    Visibility(
                        visible: visa.status!.toLowerCase() == 'completed',
                        child: SizedBox(
                          width: double.infinity,
                          height: 50,
                          child: PrimaryButton(
                            onClick: () {
                              try {
                                final data = imagesUrl!.firstWhere(
                                    (dynamic element) =>
                                        (element as Map<String, dynamic>)
                                            .containsKey('EVISA'));
                                if (data['EVISA'].toString().contains('.pdf')) {
                                  launch(data['EVISA']);

                                  // AutoRouter.of(context).push(
                                  //   DTIPdfViewerRoute(
                                  //     imageUrl: data['EVISA'].toString(),
                                  //     isNetwork: true,
                                  //   ),
                                  // );
                                } else {
                                  AutoRouter.of(context).push(PhotoViewRoute(
                                      images: [data['EVISA'].toString()],
                                      isNetwork: true));
                                }
                              } catch (e) {}
                            },
                            label: "Download EVISA",
                            labelStyle: TextStyle(fontSize: 17.sp),
                          ),
                        )),

                    Visibility(
                      visible: visa.status?.toLowerCase() == 'pending payment',
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SelectableText(
                                    "Total Price (IDR)",
                                    style: TextStyle(
                                      fontSize: 25.sp,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  10.verticalSpace,
                                  SelectableText(
                                    "${visa.currency == 'rp' ? "IDR" : visa.currency ?? "IDR"} ${Converter.convertStringToIDR(visa.price ?? 0)}",
                                    style: TextStyle(
                                      fontSize: 30.sp,
                                      color: AppColor.primaryColor,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  20.verticalSpace,
                                ],
                              ),
                              const Spacer(),
                              Expanded(
                                child: PrimaryButton(
                                  onClick: () {
                                    AutoRouter.of(context)
                                        .push(PaymentRoute(visa: visa));
                                  },
                                  width: 300,
                                  label: "Pay",
                                  labelStyle: TextStyle(fontSize: 20.sp),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 10),
                                  height: 60,
                                ),
                              ),
                            ],
                          ),
                          30.verticalSpace,
                          Image.asset(
                            'assets/images/payment_example.png',
                          ),
                        ],
                      ),
                    ),

                    50.verticalSpace,
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: PrimaryButton(
                        onClick: () {
                          backToDashboard(context);
                        },
                        label: "Back to dashboard",
                        labelStyle: TextStyle(
                          fontSize: 17.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ), 
              const SizedBox(height: 20)
            ],
          )),
        ),
        Expanded(
          child: Container(
            child: Image.asset(
              'assets/images/bg/detail.webp',
            ),
          ),
        )
      ],
    );
  }

  Column termAndCondition(Color Function(Set<MaterialState> states) getColor) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SelectableText(
          "Before you confirm, you understand that:",
          style: TextStyle(
            color: Colors.grey[700],
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 20),
        Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Transform.scale(
                scale: 1.2,
                child: Checkbox(
                  checkColor: Colors.white,
                  fillColor: MaterialStateProperty.resolveWith(getColor),
                  value: isCheckedA,
                  onChanged: (bool? value) {
                    setState(() {
                      isCheckedA = value!;
                    });
                  },
                ),
              ),
              Expanded(
                  child: RichText(
                text: TextSpan(
                  text:
                      "You are understand that, while sponsored, employed or volunteering in any position that requires Door To Indonesia background screening as a condition of guaranteed.",
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )),
            ]),
        const SizedBox(height: 8),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Transform.scale(
                scale: 1.2,
                child: Checkbox(
                  checkColor: Colors.white,
                  fillColor: MaterialStateProperty.resolveWith(getColor),
                  value: isCheckedB,
                  onChanged: (bool? value) {
                    setState(() {
                      isCheckedB = value!;
                    });
                  },
                )),
            Expanded(
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'You attest that You have read ',
                      style: TextStyle(
                        color: Colors.grey[700],
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: 'Moral Character requirements ',
                      style: const TextStyle(
                        color: AppColor.HYPERLINK_COLOR,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          launch(
                              'https://doortoid.com/attestation-of-good-moral-character/');
                        },
                    ),
                    TextSpan(
                      text:
                          'carefully and state that your attestation here is true and correct, and',
                      style: TextStyle(
                        color: Colors.grey[700],
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Transform.scale(
              scale: 1.2,
              child: Checkbox(
                checkColor: Colors.white,
                fillColor: MaterialStateProperty.resolveWith(getColor),
                value: isCheckedC,
                onChanged: (bool? value) {
                  setState(() {
                    isCheckedC = value!;
                  });
                },
              ),
            ),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "I agree to the ",
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: "Term of Use",
                    style: const TextStyle(
                      color: AppColor.HYPERLINK_COLOR,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        launch('https://doortoid.com/term-of-use/');
                      },
                  ),
                  TextSpan(
                    text: ', and ',
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: "Privacy Policy",
                    style: const TextStyle(
                      color: AppColor.HYPERLINK_COLOR,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        launch('https://doortoid.com/privacy-policy/');
                      },
                  ),
                  TextSpan(
                    text: '.',
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        20.verticalSpace,
        BlocProvider(
          create: (context) => getIt<UpdateApplicationCubit>(),
          child: BlocConsumer<UpdateApplicationCubit, UpdateApplicationState>(
            listener: (context, updateState) {
              updateState.maybeMap(
                  orElse: () {},
                  onLoading: (e) {},
                  onSubmitApplication: (e) {
                    AwesomeDialog(
                      context: context,
                      width: ScreenUtil().screenWidth / 4,
                      title: "SUBMIT DOCUMENT",
                      body: const Center(
                        child: SelectableText(
                          "Document Has Been Submitted",
                          textAlign: TextAlign.center,
                        ),
                      ),
                      btnOkText: "Continue",
                      btnOkOnPress: () {
                        context.read<AppListCubit>().getUserApplication();

                        backToDashboard(context);
                      },
                    ).show();
                  });
            },
            builder: (context, updateState) {
              return updateState.maybeMap(orElse: () {
                return PrimaryButton(
                  bgColor: (isCheckedA && isCheckedB && isCheckedC)
                      ? AppColor.primaryColor
                      : Colors.grey,
                  onClick: () {
                    if (isCheckedA && isCheckedB && isCheckedC) {
                      context
                          .read<UpdateApplicationCubit>()
                          .submitVisaApps(visa.firebaseDocId!);
                    }
                  },
                  width: 300,
                  label: "CONFIRM",
                  labelStyle: TextStyle(fontSize: 20.sp),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  height: 60,
                );
              }, onLoading: (e) {
                return PrimaryButton(
                  onClick: () {},
                  width: 300,
                  label: "Loading . . . ",
                  labelStyle: TextStyle(fontSize: 20.sp),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  height: 60,
                );
              });
            },
          ),
        ),
      ],
    );
  }
}

extension StringExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${substring(1).toLowerCase()}";
  }
}

class DetailItemWidget extends StatelessWidget {
  const DetailItemWidget({Key? key, required this.label, required this.value})
      : super(key: key);
  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SelectableText(
          label,
          style: const TextStyle(
              color: AppColor.primaryColor,
              fontStyle: FontStyle.italic,
              fontSize: 17),
        ),
        2.verticalSpace,
        SelectableText(
          value,
          style: const TextStyle(
              color: AppColor.primaryColor,
              fontWeight: FontWeight.bold,
              fontSize: 22),
        ),
      ],
    );
  }
}

class SubtitleWidget extends StatelessWidget {
  const SubtitleWidget({
    Key? key,
    required this.label,
  }) : super(key: key);
  final String label;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          color: AppColor.primaryColor, borderRadius: BorderRadius.circular(5)),
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 8.h),
      child: SelectableText(
        label,
        style: TextStyle(
            fontSize: 23.sp, color: Colors.white, fontWeight: FontWeight.bold),
      ),
    );
  }
}
