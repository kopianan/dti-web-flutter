import 'package:dti_web/core/storage.dart';
import 'package:dti_web/presentation/questionnaire/widget/custom_second_header.dart';
import 'package:dti_web/utils/date_time_child.dart';

import 'package:auto_route/auto_route.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:dti_web/application/application_cubit.dart';
import 'package:dti_web/application/update_application/update_application_cubit.dart';
import 'package:dti_web/core/widgets/primary_button.dart';
import 'package:dti_web/domain/core/country_nationality.dart';
import 'package:dti_web/injection.dart';
import 'package:dti_web/presentation/widgets/loading_page.dart';
import 'package:dti_web/routes/app_router.dart';
import 'package:dti_web/utils/app_color.dart';
import 'package:dti_web/utils/date_converter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_material_pickers/flutter_material_pickers.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:intl/intl.dart';

@RoutePage()
class PersonalInformation1Page extends StatefulWidget {
  const PersonalInformation1Page({super.key, required this.firebaseDocId});
  static const String routeName = '/personal-information1';
  final String firebaseDocId;

  @override
  State<PersonalInformation1Page> createState() =>
      _PersonalInformation1PageState();
}

class _PersonalInformation1PageState extends State<PersonalInformation1Page> {
  @override
  void initState() {
    super.initState();
  }

  final _formKey = GlobalKey<FormBuilderState>();
  var initialDateOfBirth = "";

  final scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    final AppRouter router = AppRouter();
    return BlocProvider(
        create: (context) => getIt<UpdateApplicationCubit>()
          ..getUserApplicationWithImages(widget.firebaseDocId),
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
            onGetSingleApplicationWithImage: (e) {
              //close loading dialog
              EasyLoading.dismiss();
              context
                  .read<ApplicationCubit>()
                  .setupApplication(e.singleResponse.visaApplicationModel!);
              context.read<ApplicationCubit>().setupDocumentsMasterData(
                    e.singleResponse.documentUserApplicationUrl ?? [],
                  );
            },
          );
        }, builder: (context, updateState) {
          return updateState.maybeMap(
            orElse: () {
              return const LoadingPage();
            },
            onGetSingleApplicationWithImage: (e) {
              return BlocBuilder<ApplicationCubit, ApplicationState>(
                builder: (context, state) {
                  return Scaffold(
                      body: Row(
                    children: [
                      Expanded(
                        child: Container(
                            margin: EdgeInsets.symmetric(vertical: 40.h),
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.horizontal(
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
                                                //log("Form has been changed")
                                              },
                                              initialValue: const {
                                                'textfield': ''
                                              },
                                              skipDisabled: true,
                                              child: Column(
                                                children: [
                                                  //First Name
                                                  Row(children: [
                                                    Expanded(
                                                      child:
                                                          FormBuilderTextField(
                                                        name: 'firstName',
                                                        initialValue: state
                                                                    .visaApplicationModel ==
                                                                null
                                                            ? ''
                                                            : state
                                                                .visaApplicationModel!
                                                                .firstName,
                                                        enableSuggestions:
                                                            false,
                                                        decoration:
                                                            const InputDecoration(
                                                                hintText:
                                                                    "First Name",
                                                                labelText:
                                                                    "First Name"),
                                                        autocorrect: false,
                                                        validator:
                                                            FormBuilderValidators
                                                                .required(
                                                                    errorText:
                                                                        "First name can not be empty"),
                                                        autovalidateMode:
                                                            AutovalidateMode
                                                                .onUserInteraction,
                                                        enabled: true,
                                                      ),
                                                    ),
                                                    20.horizontalSpace,
                                                    Expanded(
                                                      child:
                                                          FormBuilderTextField(
                                                        name: 'lastName',
                                                        initialValue: state
                                                                    .visaApplicationModel ==
                                                                null
                                                            ? ''
                                                            : state
                                                                .visaApplicationModel!
                                                                .lastName,
                                                        enableSuggestions:
                                                            false,
                                                        decoration:
                                                            const InputDecoration(
                                                                hintText:
                                                                    "Last Name",
                                                                labelText:
                                                                    "Last Name"),
                                                        autocorrect: false,
                                                        validator:
                                                            FormBuilderValidators
                                                                .required(
                                                                    errorText:
                                                                        "Last name can not be empty"),
                                                        autovalidateMode:
                                                            AutovalidateMode
                                                                .onUserInteraction,
                                                        enabled: true,
                                                      ),
                                                    ),
                                                  ]),
                                                  20.verticalSpace,

                                                  FormBuilderTextField(
                                                    name: 'placeBirthDate',
                                                    initialValue: state
                                                                .visaApplicationModel ==
                                                            null
                                                        ? ''
                                                        : state
                                                            .visaApplicationModel!
                                                            .placeOfBirth,
                                                    enableSuggestions: false,
                                                    decoration:
                                                        const InputDecoration(
                                                            hintText:
                                                                "Place Of Birth",
                                                            labelText:
                                                                "Place Of Birth"),
                                                    autocorrect: false,
                                                    validator: FormBuilderValidators
                                                        .required(
                                                            errorText:
                                                                "Place of birth can not be empty"),
                                                    autovalidateMode:
                                                        AutovalidateMode
                                                            .onUserInteraction,
                                                    enabled: true,
                                                  ),
                                                  20.verticalSpace,
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
                                                              'dateOfBirthDate']!
                                                          .didChange(DateFormat(
                                                                  'dd MMM yyy')
                                                              .format(
                                                                  selectedDate!));
                                                    },
                                                    readOnly: true,
                                                    name: 'dateOfBirthDate',
                                                    initialValue: state
                                                                .visaApplicationModel ==
                                                            null
                                                        ? ''
                                                        : DateConverter
                                                            .convertDateDefault(state
                                                                .visaApplicationModel!
                                                                .dateOfBirth),
                                                    validator: FormBuilderValidators
                                                        .required(
                                                            errorText:
                                                                "Date can not be empty"),
                                                    autovalidateMode:
                                                        AutovalidateMode
                                                            .onUserInteraction,
                                                    decoration:
                                                        const InputDecoration(
                                                      prefixIcon: Icon(
                                                          Icons.date_range),
                                                      labelText:
                                                          "Date Of Birth",
                                                      hintText: "Date Of Birth",
                                                    ),
                                                  ),
                                                  // //Date of Birth
                                                  20.verticalSpace,
                                                  FormBuilderRadioGroup(
                                                      initialValue: state
                                                                  .visaApplicationModel ==
                                                              null
                                                          ? ''
                                                          : state.visaApplicationModel!
                                                                      .gender ==
                                                                  null
                                                              ? 'male'
                                                              : state
                                                                  .visaApplicationModel!
                                                                  .gender!
                                                                  .toLowerCase(),
                                                      decoration:
                                                          const InputDecoration(
                                                              labelText:
                                                                  "Gender",
                                                              border: UnderlineInputBorder(
                                                                  borderSide:
                                                                      BorderSide
                                                                          .none)),
                                                      name: 'gender',
                                                      validator:
                                                          FormBuilderValidators
                                                              .required(),
                                                      autovalidateMode:
                                                          AutovalidateMode
                                                              .onUserInteraction,
                                                      activeColor:
                                                          AppColor.primaryColor,
                                                      options: const [
                                                        FormBuilderFieldOption(
                                                          value: 'male',
                                                          child: Text("Male"),
                                                        ),
                                                        FormBuilderFieldOption(
                                                          value: 'female',
                                                          child: Text("Female"),
                                                        )
                                                      ]),
                                                  20.verticalSpace,

                                                  // //Nationality
                                                  FormBuilderTextField(
                                                    onTap: () =>
                                                        showMaterialScrollPicker<
                                                            CountryNationality>(
                                                      context: context,
                                                      title: "Nationality",
                                                      showDivider: false,
                                                      items: Storage()
                                                              .getNationality() ??
                                                          [],
                                                      selectedItem: Storage()
                                                              .getNationality()
                                                              ?.first ??
                                                          const CountryNationality(
                                                              code: "1",
                                                              name: "name"),
                                                      onChanged: (value) {
                                                        context
                                                            .read<
                                                                ApplicationCubit>()
                                                            .updateNationality(value
                                                                .name
                                                                .toUpperCase());
                                                        _formKey
                                                            .currentState!
                                                            .fields[
                                                                'nationality']!
                                                            .didChange(value
                                                                .name
                                                                .toString());
                                                      },
                                                    ),
                                                    readOnly: true,
                                                    name: 'nationality',
                                                    initialValue: state
                                                                .visaApplicationModel ==
                                                            null
                                                        ? ''
                                                        : state.visaApplicationModel!
                                                                .nationality ??
                                                            '',
                                                    validator:
                                                        FormBuilderValidators
                                                            .required(),
                                                    autovalidateMode:
                                                        AutovalidateMode
                                                            .onUserInteraction,
                                                    decoration:
                                                        const InputDecoration(
                                                      labelText: "Nationality",
                                                      hintText: "Nationality",
                                                      fillColor: Colors.white70,
                                                    ),
                                                  ),
                                                  20.verticalSpace,
                                                  //Relationship Status
                                                  FormBuilderDropdown(
                                                    name: 'relation',
                                                    validator:
                                                        FormBuilderValidators
                                                            .required(),
                                                    initialValue: state
                                                                .visaApplicationModel ==
                                                            null
                                                        ? ''
                                                        : state
                                                            .visaApplicationModel!
                                                            .relationshipStatus,
                                                    autovalidateMode:
                                                        AutovalidateMode
                                                            .onUserInteraction,
                                                    items: [
                                                      'Single',
                                                      'Married',
                                                      'Maried',
                                                      'Divorced',
                                                      'Widowed'
                                                    ]
                                                        .map(
                                                          (relationship) =>
                                                              DropdownMenuItem(
                                                            value: relationship,
                                                            child: Text(
                                                                relationship),
                                                          ),
                                                        )
                                                        .toList(),
                                                    decoration: const InputDecoration(
                                                        labelText:
                                                            "Relationshop Status",
                                                        hintStyle: TextStyle(
                                                            color: Colors.grey),
                                                        hintText:
                                                            "Relationshop Status"),
                                                  ),
                                                  20.verticalSpace,

                                                  //Mobile Number
                                                  FormBuilderTextField(
                                                    name: 'MobileNumberField',
                                                    initialValue: state
                                                                .visaApplicationModel ==
                                                            null
                                                        ? ''
                                                        : state.visaApplicationModel!
                                                                .mobileNumber ??
                                                            '',
                                                    enableSuggestions: false,
                                                    autocorrect: false,
                                                    enabled: true,
                                                    validator:
                                                        FormBuilderValidators
                                                            .compose([
                                                      FormBuilderValidators
                                                          .numeric()
                                                    ]),
                                                    // autovalidateMode:
                                                    //     AutovalidateMode.onUserInteraction,
                                                    decoration: InputDecoration(
                                                      prefixIcon:
                                                          CountryCodePicker(
                                                        initialSelection: state
                                                                    .visaApplicationModel ==
                                                                null
                                                            ? "US"
                                                            : state.visaApplicationModel!
                                                                    .mobileCountryCode ??
                                                                "US",
                                                        onChanged: (value) {
                                                          context
                                                              .read<
                                                                  ApplicationCubit>()
                                                              .updatePhoneDialCode(
                                                                  value);
                                                        },
                                                        boxDecoration: const BoxDecoration(
                                                            border: Border(
                                                                bottom: BorderSide(
                                                                    width: 1,
                                                                    color: Colors
                                                                        .black))),
                                                        showCountryOnly: false,
                                                        showOnlyCountryWhenClosed:
                                                            false,
                                                        alignLeft: false,
                                                      ),
                                                      labelText:
                                                          "Mobile Number",
                                                      hintStyle:
                                                          const TextStyle(
                                                        color: Colors.grey,
                                                      ),
                                                      hintText: "Mobile Number",
                                                      fillColor: Colors.white70,
                                                    ),
                                                  ),
                                                  // //Deported
                                                  20.verticalSpace,
                                                  FormBuilderTextField(
                                                    name: 'mothersName',
                                                    initialValue: state
                                                                .visaApplicationModel ==
                                                            null
                                                        ? ''
                                                        : state
                                                            .visaApplicationModel!
                                                            .motherName,
                                                    enableSuggestions: false,
                                                    decoration:
                                                        const InputDecoration(
                                                            hintText:
                                                                "Mother's Name",
                                                            labelText:
                                                                "Mother's Name"),
                                                    autocorrect: false,
                                                    validator: FormBuilderValidators
                                                        .required(
                                                            errorText:
                                                                "Mother's name can not be empty"),
                                                    autovalidateMode:
                                                        AutovalidateMode
                                                            .onUserInteraction,
                                                    enabled: true,
                                                  ),
                                                  20.verticalSpace,

                                                  FormBuilderRadioGroup(
                                                    decoration:
                                                        const InputDecoration(
                                                            labelText:
                                                                "Have you been deported from Indonesia before ?"),
                                                    name: 'deported',
                                                    validator:
                                                        FormBuilderValidators
                                                            .required(),
                                                    initialValue: state
                                                                .visaApplicationModel ==
                                                            null
                                                        ? false
                                                        : state.visaApplicationModel!
                                                                .deportedFlag ??
                                                            false,
                                                    autovalidateMode:
                                                        AutovalidateMode
                                                            .onUserInteraction,
                                                    separator:
                                                        10.horizontalSpace,
                                                    activeColor:
                                                        AppColor.primaryColor,
                                                    options: const [
                                                      FormBuilderFieldOption(
                                                        value: false,
                                                        child: Text("NO"),
                                                      ),
                                                      FormBuilderFieldOption(
                                                        value: true,
                                                        child: Text("YES"),
                                                      ),
                                                    ],
                                                  ),
                                                  // //Overstayed
                                                  20.verticalSpace,

                                                  FormBuilderRadioGroup(
                                                    decoration:
                                                        const InputDecoration(
                                                      labelText:
                                                          "Have you been overstayed in Indonesia before ?",
                                                    ),
                                                    name: 'overstay',
                                                    validator:
                                                        FormBuilderValidators
                                                            .required(),
                                                    autovalidateMode:
                                                        AutovalidateMode
                                                            .onUserInteraction,
                                                    initialValue: state
                                                                .visaApplicationModel ==
                                                            null
                                                        ? false
                                                        : state.visaApplicationModel!
                                                                .overstayedFlag ??
                                                            false,
                                                    separator:
                                                        10.horizontalSpace,
                                                    activeColor:
                                                        AppColor.primaryColor,
                                                    options: const [
                                                      FormBuilderFieldOption(
                                                        value: false,
                                                        child: Text('NO'),
                                                      ),
                                                      FormBuilderFieldOption(
                                                        value: true,
                                                        child: Text("YES"),
                                                      ),
                                                    ],
                                                  ),
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
      context
          .read<ApplicationCubit>()
          .updatePhoneDialCode(CountryCode.fromCountryCode('US'));

      context.read<ApplicationCubit>().updatePersonalInformation1(
            firstName: formData['firstName'],
            lastName: formData['lastName'],
            motherName: formData['motherName'],
            placeOfBirth: formData['placeBirthDate'],
            dateOfBirth: formData['dateOfBirthDate'],
            gender: formData['gender'],
            relation: formData['relation'],
            mobileNumber: formData['MobileNumberField'],
            deportedFlag: formData['deported'],
            overstayedFlag: formData['overstay'],
            mobileCountryCode: state.visaApplicationModel!.mobileCountryCode ??
                CountryCode.fromCountryCode('US').code,
            mobileDialCode: state.visaApplicationModel!.mobileDialCode ??
                CountryCode.fromCountryCode('US').dialCode,
          );

      AutoRouter.of(context).push(PersonalInformation2Route());
    }
  }
}
