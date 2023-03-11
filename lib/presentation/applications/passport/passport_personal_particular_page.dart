import 'package:dti_web/core/widgets/primary_button.dart';
import 'package:dti_web/presentation/questionnaire/widget/custom_second_header.dart';
import 'package:auto_route/auto_route.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:dti_web/application/application_cubit.dart';
import 'package:dti_web/application/update_application/update_application_cubit.dart';
import 'package:dti_web/injection.dart';
import 'package:dti_web/presentation/widgets/loading_page.dart';
import 'package:dti_web/routes/app_router.dart';
import 'package:dti_web/utils/app_color.dart';
import 'package:dti_web/utils/date_converter.dart';
import 'package:dti_web/utils/date_time_child.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:intl/intl.dart';

class PassportPersonalParticularPage extends StatefulWidget {
  const PassportPersonalParticularPage(
      {super.key, required this.firebaseDocId});
  static const String routeName = '/passport-personal-particular';
  final String firebaseDocId;

  @override
  State<PassportPersonalParticularPage> createState() =>
      _PassportPersonalParticularPageState();
}

class _PassportPersonalParticularPageState
    extends State<PassportPersonalParticularPage> {
  final _formKey = GlobalKey<FormBuilderState>();
  var initialDateOfBirth = "";

  final scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    final AppRouter router = AppRouter();
    return BlocProvider(
        create: (context) => getIt<UpdateApplicationCubit>()
          ..getUserPassportWithImages(widget.firebaseDocId),
        child: BlocConsumer<UpdateApplicationCubit, UpdateApplicationState>(
            listener: (context, updateState) {
          updateState.maybeMap(
            orElse: () {},
            onLoading: (e) {
              EasyLoading.show(
                dismissOnTap: false,
                maskType: EasyLoadingMaskType.black,
              );
            },
            onError: (e) {
              //close loading dialog
              EasyLoading.dismiss();
            },
            onUpdatePassport: (e) {
              EasyLoading.dismiss();
              AutoRouter.of(context).navigate(UploadDocumentRoute());
            },
            onGetSinglePassportWithImage: (e) {
              //close loading dialog
              EasyLoading.dismiss();
              initialDateOfBirth = DateConverter.convertDateDefault(
                  e.singleResponse.visaApplicationModel!.dateOfBirth!);
              context
                  .read<ApplicationCubit>()
                  .setupApplication(e.singleResponse.visaApplicationModel!);
              context.read<ApplicationCubit>().setupDocumentsMasterData(
                    e.singleResponse.documentUserApplicationUrl!,
                  );
            },
          );
        }, builder: (context, updateState) {
          return updateState.maybeMap(
            orElse: () {
              return const LoadingPage();
            },
            onGetSinglePassportWithImage: (e) {
              return BlocBuilder<ApplicationCubit, ApplicationState>(
                builder: (context, state) {
                  return Scaffold(
                      body: Row(
                    children: [
                      Expanded(
                        child: Container(
                            margin: EdgeInsets.symmetric(vertical: 40.h),
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.horizontal(
                                  right: Radius.circular(10)),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomSecondHeader(
                                  header: Center(
                                    child: Text(
                                      '${state.visaApplicationModel?.title ?? ""} / ${state.visaApplicationModel?.subTitle ?? ""} / ${state.visaApplicationModel?.entry ?? ""}',
                                      style: TextStyle(
                                          fontSize: 18.sp,
                                          color: AppColor.primaryColor,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 30),
                                  child: Text(
                                    "Personal Particular",
                                    style: TextStyle(
                                        fontSize: 30.sp,
                                        color: AppColor.primaryColor,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Expanded(
                                  child: Stack(
                                    children: [
                                      Scrollbar(
                                        controller: scrollController, // Here

                                        thumbVisibility: true,
                                        child: SingleChildScrollView(
                                          controller: scrollController,
                                          child: Container(
                                            padding: REdgeInsets.symmetric(
                                              horizontal: 30.w,
                                              vertical: 20.h,
                                            ),
                                            child: FormBuilder(
                                              key: _formKey,
                                              onChanged: () => {
                                                //print("Form has been changed")
                                              },
                                              initialValue: const {
                                                'textfield': ''
                                              },
                                              skipDisabled: true,
                                              child: Column(
                                                children: [
                                                  //First Name
                                                  FormBuilderTextField(
                                                    name: 'FirstNameField',
                                                    enableSuggestions: false,
                                                    autocorrect: false,
                                                    initialValue: state
                                                        .visaApplicationModel!
                                                        .firstName,
                                                    validator:
                                                        FormBuilderValidators
                                                            .required(),
                                                    autovalidateMode:
                                                        AutovalidateMode
                                                            .onUserInteraction,
                                                    enabled: true,
                                                    decoration:
                                                        const InputDecoration(
                                                      labelText: "First Name",
                                                      border:
                                                          OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius.all(
                                                          Radius.circular(10.0),
                                                        ),
                                                      ),
                                                      filled: true,
                                                      hintStyle: TextStyle(
                                                          color: Colors.grey),
                                                      hintText: "First Name",
                                                      fillColor: Colors.white70,
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    height: 20,
                                                  ),
                                                  // //Last Name
                                                  FormBuilderTextField(
                                                    name: 'LastNameField',
                                                    enableSuggestions: false,
                                                    autocorrect: false,
                                                    initialValue: state
                                                        .visaApplicationModel!
                                                        .lastName,
                                                    validator:
                                                        FormBuilderValidators
                                                            .required(),
                                                    autovalidateMode:
                                                        AutovalidateMode
                                                            .onUserInteraction,
                                                    enabled: true,
                                                    decoration: InputDecoration(
                                                      labelText: "Last Name",
                                                      border:
                                                          OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius.all(
                                                          Radius.circular(10.0),
                                                        ),
                                                      ),
                                                      filled: true,
                                                      hintStyle:
                                                          const TextStyle(
                                                        color: Colors.grey,
                                                      ),
                                                      hintText: "Last Name",
                                                      fillColor: Colors.white70,
                                                    ),
                                                  ),
                                                  const SizedBox(height: 20),
                                                  //Place of Birth

                                                  //Date of Birth
                                                  FormBuilderTextField(
                                                    onTap: () async {
                                                      final nowDate =
                                                          DateTime.now();

                                                      final selectedDate =
                                                          await showDatePicker(
                                                        context: context,
                                                        initialDate:
                                                            DateTime.now(),
                                                        firstDate:
                                                            DateTime(1800),
                                                        lastDate: nowDate,
                                                        builder:
                                                            dateTimThemeChild,
                                                      );

                                                      _formKey
                                                          .currentState!
                                                          .fields[
                                                              'DateOfBirthField']!
                                                          .didChange(DateFormat(
                                                                  'dd MMM yyy')
                                                              .format(
                                                                  selectedDate!));
                                                      // selectedDate =
                                                      //     (initialDateOfBirth !=
                                                      //             null)
                                                      //         ? DateFormat(
                                                      //                 "dd MMM yyyy")
                                                      //             .parse(
                                                      //                 initialDateOfBirth!)
                                                      //         : dateTime;
                                                      // DateTime initial =
                                                      //     selectedDate!;
                                                      // DTIDatePicker.showSheet(
                                                      //     context,
                                                      //     child: SizedBox(
                                                      //       height: 200,
                                                      //       child:
                                                      //           CupertinoDatePicker(
                                                      //         maximumDate:
                                                      //             DateTime
                                                      //                 .now(),
                                                      //         initialDateTime:
                                                      //             initial,
                                                      //         mode:
                                                      //             CupertinoDatePickerMode
                                                      //                 .date,
                                                      //         onDateTimeChanged:
                                                      //             (date) {
                                                      //           selectedDate =
                                                      //               date;
                                                      //         },
                                                      //       ),
                                                      //     ), onClicked: () {
                                                      //   _formKey
                                                      //       .currentState!
                                                      //       .fields[
                                                      //           'DateOfBirthField']!
                                                      //       .didChange(DateFormat(
                                                      //               'dd MMM yyyy')
                                                      //           .format(
                                                      //               selectedDate!));
                                                      //   initialDateOfBirth =
                                                      //       DateFormat(
                                                      //               'dd MMM yyyy')
                                                      //           .format(
                                                      //               selectedDate!);
                                                      //   Get.back();
                                                      // });
                                                    },
                                                    readOnly: true,
                                                    name: 'DateOfBirthField',
                                                    initialValue:
                                                        initialDateOfBirth,
                                                    validator:
                                                        FormBuilderValidators
                                                            .compose(
                                                      [
                                                        (value) {
                                                          if (value != "" &&
                                                              value != null) {
                                                            var x = DateFormat(
                                                                    "dd MMM yyyy")
                                                                .parse(value);
                                                            //maximum today
                                                            if (x.isAfter(
                                                                DateTime
                                                                    .now())) {
                                                              return "Date of Birth cannot be greater than today";
                                                            }
                                                          }
                                                          return null;
                                                        },
                                                        FormBuilderValidators
                                                            .required()
                                                      ],
                                                    ),
                                                    autovalidateMode:
                                                        AutovalidateMode
                                                            .onUserInteraction,
                                                    decoration: InputDecoration(
                                                      labelText:
                                                          "Date of birth",
                                                      border:
                                                          const OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius.all(
                                                          Radius.circular(10.0),
                                                        ),
                                                      ),
                                                      filled: true,
                                                      hintStyle:
                                                          const TextStyle(
                                                        color: Colors.grey,
                                                      ),
                                                      hintText: "Date of birth",
                                                      fillColor: Colors.white70,
                                                    ),
                                                  ),
                                                  //Gender
                                                  FormBuilderRadioGroup(
                                                    initialValue: state
                                                        .visaApplicationModel!
                                                        .gender,
                                                    decoration: InputDecoration(
                                                        labelText: "Gender",
                                                        enabledBorder:
                                                            const UnderlineInputBorder(
                                                                borderSide: BorderSide(
                                                                    color: Colors
                                                                        .white))),
                                                    name: 'GenderField',
                                                    validator:
                                                        FormBuilderValidators
                                                            .required(),
                                                    autovalidateMode:
                                                        AutovalidateMode
                                                            .onUserInteraction,
                                                    options: [
                                                      FormBuilderFieldOption(
                                                          value: "Male",
                                                          child: Text("Male")),
                                                      FormBuilderFieldOption(
                                                          value: "Female",
                                                          child:
                                                              Text("Female")),
                                                    ],
                                                  ),
                                                  FormBuilderTextField(
                                                    name: 'KtpField',
                                                    enableSuggestions: false,
                                                    autocorrect: false,
                                                    initialValue: state
                                                        .visaApplicationModel!
                                                        .identityNumber,
                                                    validator:
                                                        FormBuilderValidators
                                                            .compose([
                                                      FormBuilderValidators
                                                          .required(),
                                                      FormBuilderValidators
                                                          .numeric(),
                                                      FormBuilderValidators
                                                          .minLength(16,
                                                              errorText:
                                                                  "Identity number must be 16 character",
                                                              allowEmpty: false)
                                                    ]),
                                                    autovalidateMode:
                                                        AutovalidateMode
                                                            .onUserInteraction,
                                                    keyboardType:
                                                        TextInputType.number,
                                                    maxLength: 16,
                                                    enabled: true,
                                                    decoration:
                                                        const InputDecoration(
                                                      labelText:
                                                          "Indonesian Identity Card (KTP) Number",
                                                      border:
                                                          OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius.all(
                                                          Radius.circular(10.0),
                                                        ),
                                                      ),
                                                      filled: true,
                                                      hintStyle: TextStyle(
                                                        color: Colors.grey,
                                                      ),
                                                      hintText:
                                                          "Indonesian Identity Card (KTP) Number",
                                                      fillColor: Colors.white70,
                                                    ),
                                                  ),
                                                  SizedBox(height: 40),
                                                  //validate button
                                                  20.verticalSpace,
                                                  SizedBox(
                                                    width: double.infinity,
                                                    height: 45.h,
                                                    child: PrimaryButton(
                                                      labelStyle: TextStyle(
                                                          fontSize: 15.sp),
                                                      onClick: () async {
                                                        await updateData(
                                                            context, state);
                                                      },
                                                      label: "Continue",
                                                    ),
                                                  ),
                                                  20.verticalSpace,
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      // Positioned(
                                      //   bottom: 20,
                                      //   right: 30,
                                      //   left: 30,
                                      //   child: SizedBox(
                                      //     width: double.infinity,
                                      //     height: 45.h,
                                      //     child: PrimaryButton(
                                      //       labelStyle:
                                      //           TextStyle(fontSize: 15.sp),
                                      //       onClick: () async {
                                      //         await updateData(context, state);
                                      //       },
                                      //       label: "Continue",
                                      //     ),
                                      // ),
                                      // ),
                                    ],
                                  ),
                                )
                              ],
                            )),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.all(100.sp),
                          child: Image.asset(
                            'assets/images/bg/bg_visa3.webp',
                          ),
                        ),
                      )
                    ],
                  ));
                },
              );
            },
          );
        }));
  }

  Future<void> updateData(BuildContext context, ApplicationState state) async {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      final formData = _formKey.currentState!.value;
      var visaApplication = state.visaApplicationModel;

      var _curr = visaApplication!.copyWith(
        firstName: formData["FirstNameField"],
        lastName: formData["LastNameField"],
        identityNumber: formData["KtpField"],
        gender: formData["GenderField"],
        dateOfBirth: formData["DateOfBirthField"],
      );
      context.read<ApplicationCubit>().updatePassportPersonalInformation(_curr);
      context
          .read<UpdateApplicationCubit>()
          .updatePassportParticularData(_curr);
    }
  }
}
