import 'package:auto_route/auto_route.dart';
import 'package:dti_web/application/application_cubit.dart';
import 'package:dti_web/core/widgets/primary_button.dart';
import 'package:dti_web/domain/core/city.dart';
import 'package:dti_web/domain/core/distict.dart';
import 'package:dti_web/domain/core/province.dart';
import 'package:dti_web/domain/questionnaire/questionnaire_model.dart';
import 'package:dti_web/presentation/questionnaire/widget/custom_second_header.dart';
import 'package:dti_web/routes/app_router.dart';
import 'package:dti_web/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_material_pickers/flutter_material_pickers.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

import '../../application/startup/startup_cubit.dart';

class PersonalInformation3Page extends StatefulWidget {
  const PersonalInformation3Page({super.key, this.question});
  static const String routeName = '/personal-information3';

  final List<QuestionnaireModel>? question;

  @override
  State<PersonalInformation3Page> createState() =>
      _PersonalInformation3PageState();
}

class _PersonalInformation3PageState extends State<PersonalInformation3Page> {
  List<City>? citiesByProvince;
  List<District>? districtsByProvinceAndCity;
  // Province? selectedProvince;
  String initialProvince = "DKI Jakarta";
  String? initialCity;
  String? initialDistrict;

  bool firstFlag = true;

  final _formKey = GlobalKey<FormBuilderState>();
  City? selectedCity;

  District? selectedDistrict;
  var appCubit = ApplicationCubit();
  var initialStartup = StartupCubit();
  @override
  void initState() {
    super.initState();
    appCubit = context.read<ApplicationCubit>();
    initialStartup = context.read<StartupCubit>();
    final visa = appCubit.state.visaApplicationModel!;
    if (visa.province == null) {
      initialStartup.setUpInitialProvince("DKI Jakarta");
    } else {
      initialStartup.setUpInitialExistProvince(visa.province ?? "DKI Jakarta");
    }

    // selectedProvince =
    //     provincies.firstWhere((element) => element.name == initialProvince);
    // citiesByProvince = cities
    //     .where((element) => element.proviceCode == selectedProvince.proviceCode)
    //     .toList();

    // districtsByProvinceAndCity = districts
    //     .where((element) => element.proviceCode == selectedProvince.proviceCode)
    //     .toList();

    // if (visaApplication!.city != null) {
    //   initialCity = visaApplication!.city!;
    //   selectedCity =
    //       cities.firstWhere((element) => element.name == initialCity);
    // }
    // if (visaApplication!.district != null) {
    //   initialDistrict = visaApplication!.district!;
    //   selectedDistrict =
    //       districts.firstWhere((element) => element.name == initialDistrict);
    // }
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<StartupCubit, StartupState>(
      bloc: initialStartup,
      listenWhen: ((previous, current) =>
          current.isSuccess != current.isSuccess),
      listener: (context, state) {},
      builder: (context, state) {
        if (state.isSuccess) {
          return BlocBuilder<ApplicationCubit, ApplicationState>(
            builder: (context, appState) {
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
                                  '${appState.visaApplicationModel?.title ?? ""} / ${appState.visaApplicationModel?.subTitle ?? ""} / ${appState.visaApplicationModel?.entry ?? ""}',
                                  style: TextStyle(
                                      fontSize: 18.sp,
                                      color: AppColor.primaryColor,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 30),
                              child: Text(
                                'Indonesia\'s Residential',
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
                                      child: Column(
                                        children: [
                                          FormBuilder(
                                            key: _formKey,
                                            onChanged: () => {},
                                            initialValue: const {
                                              'textfield': ''
                                            },
                                            skipDisabled: true,
                                            child: Column(
                                              children: [
                                                //Address
                                                FormBuilderTextField(
                                                  name: 'AddressField',
                                                  enableSuggestions: false,
                                                  autocorrect: false,
                                                  maxLines: 5,
                                                  initialValue: appState
                                                          .visaApplicationModel
                                                          ?.address ??
                                                      '',
                                                  validator:
                                                      FormBuilderValidators
                                                          .required(),
                                                  autovalidateMode:
                                                      AutovalidateMode
                                                          .onUserInteraction,
                                                  enabled: true,
                                                  decoration:
                                                      const InputDecoration(
                                                    labelText: "Address",
                                                    hintStyle: TextStyle(
                                                        color: Colors.grey),
                                                    hintText: "Address",
                                                  ),
                                                ),
                                                20.verticalSpace,

                                                //Province
                                                FormBuilderTextField(
                                                  onTap: () =>
                                                      showMaterialScrollPicker<
                                                              Province>(
                                                          context: context,
                                                          title:
                                                              "Pick Your Province",
                                                          showDivider: false,
                                                          items:
                                                              state.provinces!,
                                                          headerColor: AppColor
                                                              .primaryColor,
                                                          selectedItem: state
                                                              .selectedProvince,
                                                          onChanged: (value) {
                                                            //change selected province
                                                            initialStartup
                                                                .chooseProvince(
                                                                    value);
                                                            //update field data
                                                            _formKey
                                                                .currentState!
                                                                .fields[
                                                                    'ProvinceField']!
                                                                .didChange(
                                                                    value.name);
                                                            _formKey
                                                                .currentState!
                                                                .fields[
                                                                    'cityField']!
                                                                .didChange(
                                                                    null);
                                                          }),
                                                  readOnly: true,
                                                  name: 'ProvinceField',
                                                  initialValue: state
                                                      .selectedProvince.name,
                                                  validator:
                                                      FormBuilderValidators
                                                          .required(),
                                                  autovalidateMode:
                                                      AutovalidateMode
                                                          .onUserInteraction,
                                                  decoration:
                                                      const InputDecoration(
                                                    labelText: "Province",
                                                    hintStyle: TextStyle(
                                                        color: Colors.grey),
                                                    hintText: "Province",
                                                  ),
                                                ),
                                                20.verticalSpace,

                                                //City
                                                FormBuilderTextField(
                                                  onTap: () =>
                                                      showMaterialScrollPicker<
                                                              City>(
                                                          context: context,
                                                          title:
                                                              "Pick Your City",
                                                          showDivider: false,
                                                          items: state
                                                                  .citiesByProvince ??
                                                              [],
                                                          headerColor: AppColor
                                                              .primaryColor,
                                                          selectedItem: state
                                                              .selectedCity!,
                                                          onChanged: (value) {
                                                            _formKey
                                                                .currentState!
                                                                .fields[
                                                                    'cityField']!
                                                                .didChange(
                                                                    value.name);
                                                            initialStartup
                                                                .chooseCity(
                                                                    value);
                                                            //update field data
                                                            _formKey
                                                                .currentState!
                                                                .fields[
                                                                    'cityField']!
                                                                .didChange(
                                                                    value.name);
                                                            _formKey
                                                                .currentState!
                                                                .fields[
                                                                    'districtField']!
                                                                .didChange(
                                                                    null);
                                                          }),
                                                  readOnly: true,
                                                  name: 'cityField',
                                                  initialValue: appState
                                                              .visaApplicationModel ==
                                                          null
                                                      ? ''
                                                      : appState
                                                              .visaApplicationModel!
                                                              .city ??
                                                          '',
                                                  validator:
                                                      FormBuilderValidators
                                                          .required(),
                                                  autovalidateMode:
                                                      AutovalidateMode
                                                          .onUserInteraction,
                                                  decoration:
                                                      const InputDecoration(
                                                    labelText: "City",
                                                    hintStyle: TextStyle(
                                                        color: Colors.grey),
                                                    hintText: "City",
                                                  ),
                                                ),
                                                20.verticalSpace,

                                                //District
                                                FormBuilderTextField(
                                                  onTap: () =>
                                                      showMaterialScrollPicker<
                                                          District?>(
                                                    context: context,
                                                    title: "Pick Your District",
                                                    showDivider: false,
                                                    items:
                                                        state.districtsByCity ??
                                                            [],
                                                    headerColor:
                                                        AppColor.primaryColor,
                                                    selectedItem:
                                                        state.selectedDistrict,
                                                    onChanged: (value) {
                                                      initialStartup
                                                          .chooseDistrict(
                                                              value!);
                                                      _formKey
                                                          .currentState!
                                                          .fields[
                                                              'districtField']!
                                                          .didChange(
                                                              value.name);
                                                    },
                                                  ),
                                                  readOnly: true,
                                                  name: 'districtField',
                                                  initialValue: appState
                                                          .visaApplicationModel!
                                                          .district ??
                                                      '',
                                                  validator:
                                                      FormBuilderValidators
                                                          .required(),
                                                  autovalidateMode:
                                                      AutovalidateMode
                                                          .onUserInteraction,
                                                  decoration:
                                                      const InputDecoration(
                                                    labelText: "District",
                                                    hintStyle: TextStyle(
                                                        color: Colors.grey),
                                                    hintText: "District",
                                                  ),
                                                ),
                                                20.verticalSpace,
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 20,
                                    right: 30,
                                    left: 30,
                                    child: SizedBox(
                                      width: double.infinity,
                                      height: 45.h,
                                      child: PrimaryButton(
                                        labelStyle: TextStyle(fontSize: 15.sp),
                                        onClick: () async {
                                          onSubmit(appState);
                                        },
                                        label: "Continue",
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(100.sp),
                      child: Image.asset(
                        'assets/images/bg/residential.webp',
                      ),
                    ),
                  )
                ],
              ));
            },
          );
        } else {
          return const SizedBox();
        }
      },
    );
  }

  void onSubmit(ApplicationState appState) {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      final formData = _formKey.currentState!.value;

      context.read<ApplicationCubit>().updatePersonalInformation3(
          address: formData['AddressField'],
          province: formData['ProvinceField'],
          city: formData['cityField'],
          district: formData['districtField']);

      if (appState.visaApplicationModel!.entry == "Multiple Entry Visa") {
        AutoRouter.of(context).push(PersonalInformation4Route());
      } else {
        if (appState.visaApplicationModel!.subTitle == "Visa On Arrival") {
          AutoRouter.of(context).push(PersonalInformation4bRoute());
        } else {
          AutoRouter.of(context).push(UserDomicileRoute());
        }
      }
    }
  }
}
