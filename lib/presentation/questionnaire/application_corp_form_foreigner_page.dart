import 'package:dti_web/presentation/questionnaire/widget/custom_second_header.dart';
import 'package:auto_route/auto_route.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:dti_web/application/update_application/update_application_cubit.dart';
import 'package:dti_web/core/widgets/primary_button.dart';
import 'package:dti_web/injection.dart';
import 'package:dti_web/presentation/widgets/loading_page.dart';
import 'package:dti_web/routes/app_router.dart';
import 'package:dti_web/utils/app_color.dart';
import 'package:dti_web/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

@RoutePage()
class ApplicationCorpFormForeignerPage extends StatefulWidget {
  const ApplicationCorpFormForeignerPage({
    super.key,
    required this.firebaseDocId,
  });
  static const String routeName = '/applicatoin-corp-form-foreigner';
  final String firebaseDocId;

  @override
  State<ApplicationCorpFormForeignerPage> createState() =>
      _ApplicationCorpFormForeignerPageState();
}

class _ApplicationCorpFormForeignerPageState
    extends State<ApplicationCorpFormForeignerPage> {
  String? countrycode = 'US';
  String? dialCode = "+1";
  final _formKey = GlobalKey<FormBuilderState>();

  final scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => getIt<UpdateApplicationCubit>()
          ..getUserCorporateApplication(widget.firebaseDocId),
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
            onUpdateCorpApplication: (value) {
              EasyLoading.dismiss();

              context.router.push(ApplicationCorpDetailRoute(
                  firebaseDocId: value.firebaseDocId));
            },
            onGetSingleCorpApplication: (e) {
              if (e.corpVisa.mobileCountryCode != null) {
                countrycode = e.corpVisa.mobileCountryCode;
              }
            },
          );
        }, builder: (context, updateState) {
          return updateState.maybeMap(
            orElse: () {
              return const LoadingPage();
            },
            onGetSingleCorpApplication: (e) {
              final visaCorp = e.corpVisa;
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
                                  '${visaCorp.title} / ${visaCorp.subTitle} / ${visaCorp.entry}',
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
                                "Company Particular",
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
                                          initialValue: const {'textfield': ''},
                                          skipDisabled: true,
                                          child: Column(
                                            children: [
                                              //First Name
                                              FormBuilderTextField(
                                                name: 'CompanyNameField',
                                                enableSuggestions: false,
                                                autocorrect: false,
                                                initialValue:
                                                    visaCorp.companyName,
                                                validator: FormBuilderValidators
                                                    .required(),
                                                autovalidateMode:
                                                    AutovalidateMode
                                                        .onUserInteraction,
                                                enabled: true,
                                                decoration:
                                                    const InputDecoration(
                                                  labelText: "Company Name",
                                                  border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                      Radius.circular(10.0),
                                                    ),
                                                  ),
                                                  hintText: "Company Name",
                                                  fillColor: Colors.white70,
                                                ),
                                              ),
                                              20.verticalSpace,
                                              //Last Name
                                              FormBuilderTextField(
                                                name: 'CompanyWebsiteField',
                                                enableSuggestions: false,
                                                autocorrect: false,
                                                initialValue:
                                                    visaCorp.companyWebsite,
                                                autovalidateMode:
                                                    AutovalidateMode
                                                        .onUserInteraction,
                                                enabled: true,
                                                decoration:
                                                    const InputDecoration(
                                                  labelText:
                                                      "Company Website (If applicable)",
                                                  hintText:
                                                      "Company Website (If applicable)",
                                                  fillColor: Colors.white70,
                                                ),
                                              ),

                                              20.verticalSpace,
                                              FormBuilderDropdown(
                                                name: "IndustryTypeField",
                                                initialValue:
                                                    visaCorp.industryType,
                                                validator: FormBuilderValidators
                                                    .required(),
                                                items:
                                                    Constant.getIndustryType()
                                                        .map(
                                                          (e) =>
                                                              DropdownMenuItem(
                                                            value: e,
                                                            child: Text(e),
                                                          ),
                                                        )
                                                        .toList(),
                                                decoration:
                                                    const InputDecoration(
                                                  labelText: 'Industry Type',
                                                  hintStyle: TextStyle(
                                                    color: Colors.grey,
                                                  ),
                                                  hintText: "Industry Type",
                                                  fillColor: Colors.white70,
                                                ),
                                              ),
                                              20.verticalSpace,
                                              FormBuilderTextField(
                                                name: 'CompanyAddressField',
                                                enableSuggestions: false,
                                                autocorrect: false,
                                                initialValue:
                                                    visaCorp.companyAddress,
                                                validator: FormBuilderValidators
                                                    .required(),
                                                autovalidateMode:
                                                    AutovalidateMode
                                                        .onUserInteraction,
                                                enabled: true,
                                                minLines: 4,
                                                maxLines: 4,
                                                decoration:
                                                    const InputDecoration(
                                                  labelText: "Company Address",
                                                  border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                      Radius.circular(10.0),
                                                    ),
                                                  ),
                                                  hintText: "Company Address",
                                                  fillColor: Colors.white70,
                                                ),
                                              ),
                                              20.verticalSpace,
                                              //Last Name
                                              FormBuilderTextField(
                                                name: 'ContactPersonNameField',
                                                enableSuggestions: false,
                                                autocorrect: false,
                                                initialValue: visaCorp.cpName,
                                                validator: FormBuilderValidators
                                                    .required(),
                                                autovalidateMode:
                                                    AutovalidateMode
                                                        .onUserInteraction,
                                                enabled: true,
                                                decoration:
                                                    const InputDecoration(
                                                  labelText:
                                                      "Contact Person Name",
                                                  border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                      Radius.circular(10.0),
                                                    ),
                                                  ),
                                                  hintText:
                                                      "Contact Person Name",
                                                  fillColor: Colors.white70,
                                                ),
                                              ),
                                              20.verticalSpace,
                                              //Last Name
                                              FormBuilderTextField(
                                                name: 'ContactPersonEmailField',
                                                enableSuggestions: false,
                                                autocorrect: false,
                                                initialValue: visaCorp.cpEmail,
                                                validator: (value) {
                                                  if (value!.isEmpty) {
                                                    return 'Please enter an email address';
                                                  }
                                                  if (!RegExp(
                                                          r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                                                      .hasMatch(value)) {
                                                    return 'Please enter a valid email address';
                                                  }
                                                  return null;
                                                },
                                                autovalidateMode:
                                                    AutovalidateMode
                                                        .onUserInteraction,
                                                enabled: true,
                                                decoration:
                                                    const InputDecoration(
                                                  labelText:
                                                      "Contact Person Email",
                                                  border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                      Radius.circular(10.0),
                                                    ),
                                                  ),
                                                  hintText:
                                                      "Contact Person Email",
                                                  fillColor: Colors.white70,
                                                ),
                                              ),
                                              20.verticalSpace,

                                              //Mobile Number
                                              Row(
                                                children: [
                                                  Expanded(
                                                      flex: 1,
                                                      child: Container(
                                                        height: 55,
                                                        decoration:
                                                            BoxDecoration(
                                                                border:
                                                                    Border.all(
                                                                  color: Colors
                                                                      .grey,
                                                                ),
                                                                borderRadius:
                                                                    const BorderRadius
                                                                        .all(
                                                                        Radius.circular(
                                                                            10))),
                                                        child:
                                                            CountryCodePicker(
                                                          onChanged: (value) {
                                                            dialCode =
                                                                value.dialCode;
                                                            countrycode =
                                                                value.code;
                                                          },
                                                          initialSelection:
                                                              countrycode,
                                                          showCountryOnly:
                                                              false,
                                                          showOnlyCountryWhenClosed:
                                                              false,
                                                          alignLeft: false,
                                                        ),
                                                      )),
                                                  const SizedBox(width: 10),
                                                  Expanded(
                                                    flex: 5,
                                                    child: FormBuilderTextField(
                                                      name:
                                                          'ContactPersonPhoneField',
                                                      enableSuggestions: false,
                                                      autocorrect: false,
                                                      initialValue: visaCorp
                                                          .cpPhoneNumber,
                                                      enabled: true,
                                                      validator:
                                                          FormBuilderValidators
                                                              .compose([
                                                        FormBuilderValidators
                                                            .numeric(),
                                                        FormBuilderValidators
                                                            .required()
                                                      ]),
                                                      autovalidateMode:
                                                          AutovalidateMode
                                                              .onUserInteraction,
                                                      decoration:
                                                          const InputDecoration(
                                                        labelText:
                                                            "Contact Person Phone Number",
                                                        border:
                                                            OutlineInputBorder(
                                                          borderRadius:
                                                              BorderRadius.all(
                                                                  Radius
                                                                      .circular(
                                                                          10.0)),
                                                        ),
                                                        hintText:
                                                            "Contact Person Phone Number",
                                                        fillColor:
                                                            Colors.white70,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              20.verticalSpace,
                                              //Last Name
                                              FormBuilderTextField(
                                                name: 'NumberOfForeigner',
                                                enableSuggestions: false,
                                                autocorrect: false,
                                                initialValue: visaCorp
                                                    .numberForeigner
                                                    .toString(),
                                                validator: FormBuilderValidators
                                                    .compose([
                                                  FormBuilderValidators
                                                      .required(),
                                                  FormBuilderValidators
                                                      .numeric(),
                                                ]),
                                                autovalidateMode:
                                                    AutovalidateMode
                                                        .onUserInteraction,
                                                enabled: true,
                                                keyboardType:
                                                    TextInputType.number,
                                                decoration:
                                                    const InputDecoration(
                                                  labelText:
                                                      "Number of Foreign Workers Needed",
                                                  border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                      Radius.circular(10.0),
                                                    ),
                                                  ),
                                                  hintText:
                                                      "Number of Foreign Workers Needed",
                                                  fillColor: Colors.white70,
                                                ),
                                              ),
                                              20.verticalSpace,

                                              SizedBox(
                                                width: double.infinity,
                                                height: 45.h,
                                                child: PrimaryButton(
                                                  labelStyle: TextStyle(
                                                      fontSize: 15.sp),
                                                  onClick: () {
                                                    final validationSuccess =
                                                        _formKey.currentState!
                                                            .validate();
                                                    if (validationSuccess) {
                                                      _formKey.currentState!
                                                          .save();
                                                      final formData = _formKey
                                                          .currentState!.value;
                                                      var curr =
                                                          visaCorp.copyWith(
                                                        companyName: formData[
                                                            "CompanyNameField"],
                                                        industryType: formData[
                                                            "IndustryTypeField"],
                                                        companyWebsite: formData[
                                                            "CompanyWebsiteField"],
                                                        companyAddress: formData[
                                                            "CompanyAddressField"],
                                                        cpName: formData[
                                                            "ContactPersonNameField"],
                                                        cpEmail: formData[
                                                            "ContactPersonEmailField"],
                                                        cpPhoneNumber: formData[
                                                            "ContactPersonPhoneField"],
                                                        mobileCountryCode:
                                                            countrycode,
                                                        province: '',
                                                        numberForeigner:
                                                            int.tryParse(formData[
                                                                    'NumberOfForeigner']) ??
                                                                0,
                                                        mobileDialCode:
                                                            dialCode,
                                                      );
                                                      print(curr);
                                                      // context.router.push(
                                                      //     ApplicationCorpDetailRoute(
                                                      //   firebaseDocId: curr
                                                      //       .firebaseDocId,
                                                      // ));

                                                      context
                                                          .read<
                                                              UpdateApplicationCubit>()
                                                          .updateCorporateApplcation(
                                                              curr);
                                                    }
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
        }));
  }
}
