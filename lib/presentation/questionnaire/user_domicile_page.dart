import 'package:auto_route/auto_route.dart';
import 'package:dti_web/application/application_cubit.dart';
import 'package:dti_web/application/update_application/update_application_cubit.dart';
import 'package:dti_web/core/widgets/primary_button.dart';
import 'package:dti_web/domain/questionnaire/questionnaire_model.dart';
import 'package:dti_web/injection.dart';
import 'package:dti_web/presentation/questionnaire/guarantor_page.dart';
import 'package:dti_web/presentation/questionnaire/widget/custom_second_header.dart';
import 'package:dti_web/routes/app_router.dart';
import 'package:dti_web/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

@RoutePage()
class UserDomicilePage extends StatefulWidget {
  const UserDomicilePage({super.key, this.question});
  static const String routeName = '/user-domicile';

  final List<QuestionnaireModel>? question;

  @override
  State<UserDomicilePage> createState() => _UserDomicilePageState();
}

class _UserDomicilePageState extends State<UserDomicilePage> {
  final _formKey = GlobalKey<FormBuilderState>();

  @override
  void initState() {
    super.initState();
  }

  var greyTextStyle = TextStyle(
      fontSize: 18, color: Colors.grey[700]!, fontWeight: FontWeight.bold);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(children: [
      Container(
        width: ScreenUtil().screenWidth / 2.2,
        // height: ScreenUtil().screenHeight,

        margin: EdgeInsets.symmetric(vertical: 40.h),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.horizontal(right: Radius.circular(10)),
        ),
        child: BlocProvider(
          create: (context) => getIt<UpdateApplicationCubit>(),
          child: BlocListener<UpdateApplicationCubit, UpdateApplicationState>(
            listener: (context, state) {
              print(state);
              state.maybeMap(orElse: () {
                EasyLoading.dismiss();
              }, onUpdateApplication: (e) {
                EasyLoading.dismiss();
                AutoRouter.of(context).push(GuarantorRoute());
              }, onLoading: (e) {
                EasyLoading.show(maskType: EasyLoadingMaskType.black);
              });
            },
            child: BlocConsumer<ApplicationCubit, ApplicationState>(
              listener: (context, state) {},
              builder: (context, appState) => Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomSecondHeader(
                    header: Center(
                      child: Text(
                        '${appState.visaApplicationModel?.title ?? ""} / ${appState.visaApplicationModel?.subTitle ?? ""} / ${appState.visaApplicationModel?.entry ?? ""}',
                        style: TextStyle(
                            fontSize: 18.sp,
                            color: AppColor.primaryColor,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Text(
                      "Your Current Location",
                      style: TextStyle(
                          fontSize: 30.sp,
                          color: AppColor.primaryColor,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Expanded(
                    child: Stack(
                      children: [
                        SingleChildScrollView(
                          child: Container(
                            padding: REdgeInsets.symmetric(
                              horizontal: 30.w,
                              vertical: 20.h,
                            ),
                            child: FormBuilder(
                              key: _formKey,
                              child: Column(
                                children: [
                                  FormBuilderRadioGroup(
                                    initialValue:
                                        appState.visaApplicationModel == null
                                            ? false
                                            : appState.visaApplicationModel!
                                                .inIndonesia,
                                    decoration: InputDecoration(
                                      labelText:
                                          "Are you in Indonesia right now ? ",
                                      labelStyle: greyTextStyle.copyWith(
                                          fontSize: 24.sp),
                                      border: InputBorder.none,
                                      enabledBorder: InputBorder.none,
                                    ),
                                    name: 'inIndonesia',
                                    validator: FormBuilderValidators.required(),
                                    autovalidateMode:
                                        AutovalidateMode.onUserInteraction,
                                    options: [
                                      FormBuilderFieldOption(
                                          value: true,
                                          child: Text(
                                            "Yes",
                                            style: greyTextStyle,
                                          )),
                                      FormBuilderFieldOption(
                                          value: false,
                                          child: Text(
                                            "No",
                                            style: greyTextStyle,
                                          )),
                                    ],
                                  ),
                                  const SizedBox(height: 20),
                                  FormBuilderTextField(
                                    name: 'city',
                                    enableSuggestions: false,
                                    autocorrect: false,
                                    initialValue:
                                        appState.visaApplicationModel == null
                                            ? ""
                                            : appState.visaApplicationModel!
                                                .cityDomicile,
                                    validator: FormBuilderValidators.required(),
                                    autovalidateMode:
                                        AutovalidateMode.onUserInteraction,
                                    enabled: true,
                                    decoration: const InputDecoration(
                                      labelText: "City",
                                      border: UnderlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(10.0),
                                        ),
                                      ),
                                      filled: false,
                                      hintStyle: TextStyle(
                                        color: Colors.grey,
                                      ),
                                      hintText: "City",
                                      fillColor: Colors.white70,
                                    ),
                                  ),
                                  const SizedBox(height: 20),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 20,
                          right: 30,
                          left: 30,
                          child: BlocBuilder<UpdateApplicationCubit,
                              UpdateApplicationState>(
                            builder: (context, state) {
                              return SizedBox(
                                width: double.infinity,
                                height: 45.h,
                                child: PrimaryButton(
                                  labelStyle: TextStyle(fontSize: 15.sp),
                                  onClick: () async {
                                    onSubmit(context, appState);
                                  },
                                  label: "Continue",
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      Expanded(
        child: Container(
          margin: EdgeInsets.all(100.sp),
          child: Image.asset(
            'assets/images/bg/residential.webp',
          ),
        ),
      )
    ]));
  }

  void onSubmit(BuildContext context, ApplicationState appState) async {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      final formData = _formKey.currentState!.value;
      context
          .read<ApplicationCubit>()
          .updateUserDomicile(formData["inIndonesia"], formData["city"]);

      context.read<UpdateApplicationCubit>().uploadParticularData(
          context.read<ApplicationCubit>().state.visaApplicationModel!);
    }
  }
}
