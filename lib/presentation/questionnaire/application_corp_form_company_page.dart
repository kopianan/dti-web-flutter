import 'package:auto_route/auto_route.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:dti_web/application/startup/startup_cubit.dart';
import 'package:dti_web/application/update_application/update_application_cubit.dart';
import 'package:dti_web/core/widgets/primary_button.dart';
import 'package:dti_web/domain/core/province.dart';
import 'package:dti_web/injection.dart';
import 'package:dti_web/presentation/questionnaire/widget/custom_second_header.dart';
import 'package:dti_web/presentation/widgets/loading_page.dart';
import 'package:dti_web/routes/app_router.dart';
import 'package:dti_web/utils/app_color.dart';
import 'package:dti_web/utils/constant.dart';
import 'package:dti_web/utils/date_converter.dart';
import 'package:dti_web/utils/date_time_child.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_material_pickers/helpers/show_scroll_picker.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:intl/intl.dart';

@RoutePage()
class ApplicationCorpFormCompanyPage extends StatefulWidget {
  const ApplicationCorpFormCompanyPage({
    super.key,
    required this.firebaseDocId,
  });
  static const String routeName = '/applicatoin-corp-form-company';
  final String firebaseDocId;

  @override
  State<ApplicationCorpFormCompanyPage> createState() =>
      _ApplicationCorpFormCompanyPageState();
}

class _ApplicationCorpFormCompanyPageState
    extends State<ApplicationCorpFormCompanyPage> {
  String? countrycode = 'US';
  String? dialCode = "+1";
  final _formKey = GlobalKey<FormBuilderState>();

  // List<Province> provincies = Pref().getProvince()!;
  // List<City> cities = Pref().getCity()!;

  String? initialDateTo;
  String? initialDateFrom;
  DateTime? dateTime;
  DateTime? selectedDateTo;
  DateTime? selectedDateFrom;
  var curretDate = DateTime.now();

  // List<City>? citiesByProvince;

  // Province selectedProvince = Constant.getProvince()!
  //     .firstWhere((element) => element.name == "DKI Jakarta");
  String initialProvince = "DKI Jakarta";
  // String? initialCity;
  // City? selectedCity;
  String? initialDistrict;
  bool firstFlag = true;

  // @override
  // void initState() {
  //   dateTime = DateTime.now();

  //   if (visaApplicationCorp.mobileCountryCode != null) {
  //     countrycode = visaApplicationCorp.mobileCountryCode;
  //   }
  //   if (visaApplicationCorp.province != null) {
  //     initialProvince = visaApplicationCorp.province!;
  //   }

  //   //DATE
  //   if (visaApplicationCorp.expectedTimelineFrom != null) {
  //     initialDateFrom = DateFormat('dd MMM yyyy')
  //         .format(visaApplicationCorp.expectedTimelineFrom!);
  //   }
  //   if (visaApplicationCorp.expectedTimelineTo != null) {
  //     initialDateTo = DateFormat('dd MMM yyyy')
  //         .format(visaApplicationCorp.expectedTimelineTo!);
  //   }
  //   if (firstFlag) {
  //     selectedProvince =
  //         provincies.firstWhere((element) => element.name == initialProvince);
  //     // citiesByProvince = cities
  //     //     .where(
  //     //         (element) => element.proviceCode == selectedProvince.proviceCode)
  //     //     .toList();

  //     // if (visaApplicationCorp.city != null) {
  //     //   initialCity = visaApplicationCorp.city!;
  //     //   selectedCity =
  //     //       cities.firstWhere((element) => element.name == initialCity);
  //     // }
  //     if (visaApplicationCorp.district != null) {
  //       initialDistrict = visaApplicationCorp.district!;
  //     }

  //     firstFlag = false;
  //   }
  //   super.initState();
  // }

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
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomSecondHeader(
                                header: Center(
                                  child: Text(
                                    '${visaCorp.title ?? ""} / ${visaCorp.subTitle ?? ""}',
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
                              //First Name
                              Container(
                                padding: REdgeInsets.symmetric(
                                    horizontal: 30.w, vertical: 20.h),
                                child: FormBuilder(
                                  key: _formKey,
                                  onChanged: () => {},
                                  initialValue: const {'textfield': ''},
                                  skipDisabled: true,
                                  child: Column(
                                    children: [
                                      FormBuilderTextField(
                                        name: 'CompanyNameField',
                                        enableSuggestions: false,
                                        autocorrect: false,
                                        initialValue: visaCorp.companyName,
                                        validator:
                                            FormBuilderValidators.required(),
                                        autovalidateMode:
                                            AutovalidateMode.onUserInteraction,
                                        enabled: true,
                                        decoration: const InputDecoration(
                                          labelText: "Company Name",
                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(10.0),
                                            ),
                                          ),
                                          hintStyle:
                                              TextStyle(color: Colors.grey),
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
                                        initialValue: visaCorp.companyWebsite,
                                        autovalidateMode:
                                            AutovalidateMode.onUserInteraction,
                                        enabled: true,
                                        decoration: const InputDecoration(
                                          labelText:
                                              "Company Website (If applicable)",
                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(10.0),
                                            ),
                                          ),
                                          hintStyle: TextStyle(
                                            color: Colors.grey,
                                          ),
                                          hintText:
                                              "Company Website (If applicable)",
                                          fillColor: Colors.white70,
                                        ),
                                      ),
                                      20.verticalSpace,
                                      FormBuilderDropdown(
                                        autovalidateMode:
                                            AutovalidateMode.onUserInteraction,
                                        name: "IndustryTypeField",
                                        initialValue: visaCorp.industryType,
                                        validator:
                                            FormBuilderValidators.required(),
                                        items: Constant.getIndustryType()
                                            .map(
                                              (e) => DropdownMenuItem(
                                                value: e,
                                                child: Text(e),
                                              ),
                                            )
                                            .toList(),
                                        decoration: const InputDecoration(
                                          labelText: 'Industry Type',
                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(10.0),
                                            ),
                                          ),
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
                                        initialValue: visaCorp.companyAddress,
                                        validator:
                                            FormBuilderValidators.required(),
                                        minLines: 4,
                                        maxLines: 4,
                                        autovalidateMode:
                                            AutovalidateMode.onUserInteraction,
                                        enabled: true,
                                        decoration: const InputDecoration(
                                          labelText: "Company Address",
                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(10.0),
                                            ),
                                          ),
                                          hintStyle: TextStyle(
                                            color: Colors.grey,
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
                                        validator:
                                            FormBuilderValidators.required(),
                                        autovalidateMode:
                                            AutovalidateMode.onUserInteraction,
                                        enabled: true,
                                        decoration: const InputDecoration(
                                          labelText: "Contact Person Name",
                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(10.0),
                                            ),
                                          ),
                                          hintStyle: TextStyle(
                                            color: Colors.grey,
                                          ),
                                          hintText: "Contact Person Name",
                                          fillColor: Colors.white70,
                                        ),
                                      ),
                                      20.verticalSpace,
                                      //Last Name
                                      FormBuilderTextField(
                                        name: 'ContactPersonEmailField',
                                        enableSuggestions: false,
                                        autocorrect: false,
                                        initialValue: visaCorp.cpEMail,
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
                                            AutovalidateMode.onUserInteraction,
                                        enabled: true,
                                        decoration: const InputDecoration(
                                          labelText: "Contact Person Email",
                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(10.0),
                                            ),
                                          ),
                                          hintStyle:
                                              TextStyle(color: Colors.grey),
                                          hintText: "Contact Person Email",
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
                                                decoration: BoxDecoration(
                                                    border: Border.all(
                                                      color: Colors.grey,
                                                    ),
                                                    borderRadius:
                                                        const BorderRadius.all(
                                                            Radius.circular(
                                                                10))),
                                                child: CountryCodePicker(
                                                  onChanged: (value) {
                                                    dialCode = value.dialCode;
                                                    countrycode = value.code;
                                                  },
                                                  initialSelection: countrycode,
                                                  showCountryOnly: false,
                                                  showOnlyCountryWhenClosed:
                                                      false,
                                                  alignLeft: false,
                                                ),
                                              )),
                                          const SizedBox(width: 10),
                                          Expanded(
                                            flex: 5,
                                            child: FormBuilderTextField(
                                              name: 'ContactPersonPhoneField',
                                              enableSuggestions: false,
                                              autocorrect: false,
                                              initialValue:
                                                  visaCorp.cpPhoneNumber,
                                              enabled: true,
                                              validator: FormBuilderValidators
                                                  .compose([
                                                FormBuilderValidators.numeric(),
                                                FormBuilderValidators.required()
                                              ]),
                                              autovalidateMode: AutovalidateMode
                                                  .onUserInteraction,
                                              decoration: const InputDecoration(
                                                labelText:
                                                    "Contact Person Phone Number",
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(
                                                              10.0)),
                                                ),
                                                hintStyle: TextStyle(
                                                  color: Colors.grey,
                                                ),
                                                hintText:
                                                    "Contact Person Phone Number",
                                                fillColor: Colors.white70,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      20.verticalSpace,
                                      BlocBuilder<StartupCubit, StartupState>(
                                        builder: (context, state) {
                                          return FormBuilderTextField(
                                            onTap: () =>
                                                showMaterialScrollPicker<
                                                        Province>(
                                                    context: context,
                                                    title: "Pick Your Province",
                                                    showDivider: false,
                                                    items: state.provinces!,
                                                    headerColor:
                                                        AppColor.primaryColor,
                                                    selectedItem:
                                                        state.selectedProvince,
                                                    onChanged: (value) {
                                                      //change selected province
                                                      context
                                                          .read<StartupCubit>()
                                                          .chooseProvince(
                                                              value);
                                                      //update field data
                                                      _formKey
                                                          .currentState!
                                                          .fields[
                                                              'ProvinceField']!
                                                          .didChange(
                                                              value.name);
                                                    }),
                                            readOnly: true,
                                            name: 'ProvinceField',
                                            initialValue:
                                                state.selectedProvince.name,
                                            validator: FormBuilderValidators
                                                .required(),
                                            autovalidateMode: AutovalidateMode
                                                .onUserInteraction,
                                            decoration: const InputDecoration(
                                              labelText: "Province",
                                              hintStyle:
                                                  TextStyle(color: Colors.grey),
                                              hintText: "Province",
                                            ),
                                          );
                                        },
                                      ),

                                      20.verticalSpace,

                                      FormBuilderTextField(
                                        onTap: () async {
                                          var initial = curretDate;
                                          if (visaCorp.expectedTimelineTo !=
                                              null) {
                                            try {
                                              initial =
                                                  DateConverter.stringToDate(
                                                      visaCorp
                                                          .expectedTimelineTo);
                                            } on Exception {
                                              initial = DateTime.parse(
                                                  visaCorp.expectedTimelineTo!);
                                            }
                                          }

                                          final nowDate = DateTime.now();
                                          final selectedDate =
                                              await showDatePicker(
                                                  context: context,
                                                  initialDate: initial,
                                                  firstDate: DateTime(1800),
                                                  builder: dateTimThemeChild,
                                                  lastDate: nowDate);
                                          if (selectedDate != null) {
                                            final date = DateConverter
                                                .convertDateDefault2(
                                                    selectedDate);
                                            _formKey.currentState!
                                                .fields['FromDate']!
                                                .didChange(date);
                                          }
                                        },
                                        readOnly: true,
                                        name: 'FromDate',
                                        initialValue:
                                            DateConverter.convertDateDefault(
                                                visaCorp.expectedTimelineFrom),
                                        validator:
                                            FormBuilderValidators.compose(
                                          [
                                            (value) {
                                              if (value != "" &&
                                                  value != null) {
                                                var x =
                                                    DateFormat("dd MMM yyyy")
                                                        .parse(value);
                                                //maximum today
                                                if (x.isAfter(curretDate)) {
                                                  return "Please specify a date in the future";
                                                }
                                              }
                                              return null;
                                            },
                                            FormBuilderValidators.required()
                                          ],
                                        ),
                                        autovalidateMode:
                                            AutovalidateMode.onUserInteraction,
                                        decoration: const InputDecoration(
                                          labelText: "Expected Timeline From",
                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(10.0),
                                            ),
                                          ),
                                          hintStyle:
                                              TextStyle(color: Colors.grey),
                                          hintText: "Expected Timeline From",
                                          fillColor: Colors.white70,
                                        ),
                                      ),
                                      20.verticalSpace,
                                      //Date of Expiration
                                      FormBuilderTextField(
                                        onTap: () async {
                                          var currToDate =
                                              visaCorp.expectedTimelineTo;
                                          var toDate = curretDate;

                                          final nowDate = DateTime.now();

                                          if (currToDate != null) {
                                            try {
                                              toDate =
                                                  DateConverter.stringToDate(
                                                      currToDate);
                                            } on Exception {
                                              toDate =
                                                  DateTime.parse(currToDate);
                                            }
                                          }
                                          final selectedDate =
                                              await showDatePicker(
                                            context: context,
                                            initialDate: toDate,
                                            firstDate: curretDate,
                                            builder: dateTimThemeChild,
                                            lastDate:
                                                DateTime(nowDate.year + 100000),
                                          );
                                          if (selectedDate != null) {
                                            _formKey
                                                .currentState!.fields['ToDate']!
                                                .didChange(DateConverter
                                                    .convertDateDefault2(
                                              selectedDate,
                                            ));
                                          }
                                        },
                                        readOnly: true,
                                        name: 'ToDate',
                                        initialValue: visaCorp
                                                    .expectedTimelineTo ==
                                                null
                                            ? ''
                                            : DateConverter.convertDateDefault(
                                                visaCorp.expectedTimelineTo),
                                        validator:
                                            FormBuilderValidators.compose(
                                          [
                                            (value) {
                                              if (value != "" &&
                                                  value != null) {
                                                var x =
                                                    DateFormat("dd MMM yyyy")
                                                        .parse(value);
                                                //minimum today
                                                if (x.isBefore(
                                                  curretDate,
                                                )) {
                                                  return "Please specify a date in the future";
                                                }
                                              }
                                              return null;
                                            },
                                            FormBuilderValidators.required()
                                          ],
                                        ),
                                        autovalidateMode:
                                            AutovalidateMode.onUserInteraction,
                                        decoration: const InputDecoration(
                                          labelText: "Expected Timeline To",
                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(10.0),
                                            ),
                                          ),
                                          hintStyle:
                                              TextStyle(color: Colors.grey),
                                          hintText: "Expected Timeline To",
                                          fillColor: Colors.white70,
                                        ),
                                      ),
                                      20.verticalSpace,
                                      //validate button
                                      SizedBox(
                                        width: double.infinity,
                                        height: 50,
                                        child: PrimaryButton(
                                          onClick: () {
                                            final validationSuccess = _formKey
                                                .currentState!
                                                .validate();
                                            if (validationSuccess) {
                                              _formKey.currentState!.save();
                                              final formData =
                                                  _formKey.currentState!.value;
                                              var curr = visaCorp.copyWith(
                                                expectedTimelineTo:
                                                    formData["ToDate"],
                                                expectedTimelineFrom:
                                                    formData["FromDate"],
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
                                                cpEMail: formData[
                                                    "ContactPersonEmailField"],
                                                cpPhoneNumber: formData[
                                                    "ContactPersonPhoneField"],
                                                // city: formData["CityField"],
                                                province:
                                                    formData["ProvinceField"],
                                                mobileCountryCode: countrycode,
                                                mobileDialCode: dialCode,
                                              );
                                              context
                                                  .read<
                                                      UpdateApplicationCubit>()
                                                  .updateCorporateApplcation(
                                                      curr);
                                            }
                                          },
                                          label: "Continue",
                                          labelStyle: TextStyle(
                                            fontSize: 17.sp,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
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
