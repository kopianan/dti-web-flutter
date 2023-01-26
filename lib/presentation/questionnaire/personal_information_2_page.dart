import 'package:auto_route/auto_route.dart';
import 'package:dti_web/application/application_cubit.dart';
import 'package:dti_web/core/widgets/primary_button.dart';
import 'package:dti_web/domain/core/country_nationality.dart';
import 'package:dti_web/domain/questionnaire/questionnaire_model.dart';
import 'package:dti_web/presentation/questionnaire/widget/custom_second_header.dart';
import 'package:dti_web/routes/app_router.dart';
import 'package:dti_web/utils/app_color.dart';
import 'package:dti_web/utils/constant.dart';
import 'package:dti_web/utils/date_converter.dart';
import 'package:dti_web/utils/date_time_child.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_material_pickers/flutter_material_pickers.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:intl/intl.dart';

class PersonalInformation2Page extends StatefulWidget {
  const PersonalInformation2Page({super.key, this.question});
  static const String routeName = '/personal-information2';

  final List<QuestionnaireModel>? question;

  @override
  State<PersonalInformation2Page> createState() =>
      _PersonalInformation2PageState();
}

class _PersonalInformation2PageState extends State<PersonalInformation2Page> {
  var curretDate = DateTime.now();
  int passportValidationDays = 180;
  String errorNotesExpiration = '';
  @override
  void initState() {
    final tempDate = DateTime.now();
    curretDate = DateTime(tempDate.year, tempDate.month, tempDate.day);
    super.initState();
  }

  final _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ApplicationCubit, ApplicationState>(
      builder: (context, state) {
        return Scaffold(
            body: Stack(
          children: [
            Container(
                width: ScreenUtil().screenWidth,
                height: ScreenUtil().screenHeight,
                child: Image.asset(
                  'assets/images/bg/bg_visa2.png',
                  fit: BoxFit.cover,
                )),
            Container(
                width: ScreenUtil().screenWidth / 2.2,
                margin: EdgeInsets.symmetric(vertical: 40.h),
                decoration: BoxDecoration(
                  color: Colors.white.withAlpha(250),
                  borderRadius:
                      BorderRadius.horizontal(right: Radius.circular(10)),
                ),
                child: SingleChildScrollView(
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
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Text(
                          "Passport  Information",
                          style: TextStyle(
                              fontSize: 30.sp,
                              color: AppColor.primaryColor,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
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
                              //Passport Number
                              FormBuilderTextField(
                                name: 'passportNumber',
                                initialValue: state.visaApplicationModel == null
                                    ? ''
                                    : state.visaApplicationModel!
                                            .passportNumber ??
                                        '',
                                enableSuggestions: false,
                                autocorrect: false,
                                validator: FormBuilderValidators.required(),
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                enabled: true,
                                decoration: const InputDecoration(
                                  labelText: "Passport Number",
                                  hintStyle: TextStyle(
                                    color: Colors.grey,
                                  ),
                                  hintText: "Passport Number",
                                ),
                              ),
                              20.verticalSpace,

                              //Date of Issue
                              FormBuilderTextField(
                                onTap: () async {
                                  var initial = curretDate;
                                  if (state.visaApplicationModel?.dateOfIssue !=
                                      null) {
                                    try {
                                      initial = DateConverter.stringToDate(state
                                          .visaApplicationModel!.dateOfIssue!);
                                    } on Exception catch (e) {
                                      initial = DateTime.parse(state
                                          .visaApplicationModel!.dateOfIssue!);
                                    }
                                  }

                                  final nowDate = DateTime.now();
                                  final selectedDate = await showDatePicker(
                                      context: context,
                                      initialDate: initial,
                                      firstDate: DateTime(1800),
                                      builder: dateTimThemeChild,
                                      lastDate: nowDate.add(Duration(days: 1)));
                                  if (selectedDate != null) {
                                    _formKey
                                        .currentState!.fields['dateOfIssue']!
                                        .didChange(
                                            DateConverter.convertDateDefault2(
                                                selectedDate));
                                  }
                                },
                                readOnly: true,
                                initialValue: state.visaApplicationModel == null
                                    ? ''
                                    : DateConverter.convertDateDefault(state
                                        .visaApplicationModel!.dateOfIssue),
                                name: 'dateOfIssue',
                                validator: FormBuilderValidators.compose(
                                  [
                                    (value) {
                                      if (value != "" && value != null) {
                                        var x = DateFormat("dd MMM yyyy")
                                            .parse(value);
                                        //maximum today
                                        if (x.isAfter(curretDate)) {
                                          return "Date of Issue cannot be greater than today";
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
                                  labelText: "Date Of Issue",
                                  prefixIcon: Icon(Icons.date_range),
                                  hintStyle: TextStyle(color: Colors.grey),
                                  hintText: "Date Of Issue",
                                ),
                              ),
                              20.verticalSpace,
                              //Date of Expiration
                              FormBuilderTextField(
                                onTap: () async {
                                  if (state.visaApplicationModel!.entry ==
                                      "Single Entry Visa") {
                                    passportValidationDays = 360;
                                    errorNotesExpiration =
                                        "Passport must be at least 12 months to submit visa";
                                  } else {
                                    passportValidationDays = 180;

                                    errorNotesExpiration =
                                        "Passport must be at least 6 months to submit visa";
                                  }

                                  var expirationDate = curretDate;

                                  if (state.visaApplicationModel
                                          ?.dateOfExpiration !=
                                      null) {
                                    try {
                                      expirationDate =
                                          DateConverter.stringToDate(state
                                              .visaApplicationModel!
                                              .dateOfExpiration!);
                                    } on Exception catch (e) {
                                      expirationDate = DateTime.parse(state
                                          .visaApplicationModel!.dateOfExpiration!);
                                    }
                                  }
                                  final nowDate = DateTime.now();
                                  final selectedDate = await showDatePicker(
                                    context: context,
                                    initialDate: expirationDate,
                                    firstDate:
                                        curretDate.subtract(Duration(days: 1)),
                                    builder: dateTimThemeChild,
                                    lastDate: DateTime(nowDate.year + 100000),
                                  );
                                  if (selectedDate != null) {
                                    _formKey
                                        .currentState!.fields['dateOfExpire']!
                                        .didChange(
                                            DateConverter.convertDateDefault2(
                                      selectedDate,
                                    ));
                                  }
                                },
                                readOnly: true,
                                initialValue: state.visaApplicationModel == null
                                    ? ''
                                    : DateConverter.convertDateDefault(state
                                        .visaApplicationModel!
                                        .dateOfExpiration),
                                name: 'dateOfExpire',
                                validator: FormBuilderValidators.compose(
                                  [
                                    (value) {
                                      if (value != "" && value != null) {
                                        var x = DateFormat("dd MMM yyyy")
                                            .parse(value);
                                        //minimum today
                                        if (x.isBefore(
                                          curretDate.add(Duration(
                                              days: passportValidationDays)),
                                        )) {
                                          return errorNotesExpiration;
                                        }
                                      }
                                      return null;
                                    },
                                    FormBuilderValidators.required()
                                  ],
                                ),
                                // validator: FormBuilderValidators.required(
                                //     errorText: "Can not be empty"),
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                decoration: const InputDecoration(
                                  prefixIcon: Icon(Icons.date_range),
                                  labelText: "Date of expiration",
                                  hintStyle: TextStyle(color: Colors.grey),
                                  hintText: "Date of expiration",
                                ),
                              ),
                              20.verticalSpace,
                              //Issuing Country
                              FormBuilderTextField(
                                onTap: () => showMaterialScrollPicker<
                                    CountryNationality>(
                                  context: context,
                                  title: "Issuing Country",
                                  showDivider: false,
                                  items: Constant.getCountries(),
                                  selectedItem: Constant.getCountries().first,
                                  onChanged: (value) {
                                    _formKey
                                        .currentState!.fields['issuingCountry']!
                                        .didChange(value.name.toString());
                                  },
                                ),
                                initialValue: state.visaApplicationModel == null
                                    ? ''
                                    : state.visaApplicationModel!
                                            .issuingCountry ??
                                        '',
                                readOnly: true,
                                name: 'issuingCountry',
                                validator: FormBuilderValidators.required(),
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                decoration: const InputDecoration(
                                  labelText: "Issuing Country",
                                  hintText: "Issuing Country",
                                  fillColor: Colors.white70,
                                ),
                              ),
                              20.verticalSpace,
                              //validate button

                              SizedBox(
                                width: double.infinity,
                                height: 45.h,
                                child: PrimaryButton(
                                  labelStyle: TextStyle(fontSize: 15.sp),
                                  onClick: () async {
                                    updateData(context);
                                  },
                                  label: "Continue",
                                ),
                              ),
                              20.verticalSpace,
                              Card(
                                color: Colors.grey[200],
                                shadowColor: Colors.black,
                                elevation: 10,
                                clipBehavior: Clip.antiAlias,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(15),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Passport Validity Rule",
                                        style: TextStyle(
                                          color: Colors.grey[600],
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Container(
                                        width: double.infinity,
                                        child: Text(
                                          "- At least 6 months for Visa On Arrival \n- At least 12 months for Single Entry Visa \n- At least 6 months for Multiple Entry Visa",
                                          style: TextStyle(
                                            color: Colors.grey[600],
                                            fontSize: 12,
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
                        ),
                      ),
                    ],
                  ),
                ))
          ],
        ));
      },
    );
  }

  void updateData(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      final formData = _formKey.currentState!.value;
      context.read<ApplicationCubit>().updatePersonalInformation2(
          passportNumber: formData['passportNumber'],
          dateOfIssue: formData['dateOfIssue'],
          dateOfExpire: formData['dateOfExpire'],
          issuingCountry: formData['issuingCountry']);

      AutoRouter.of(context).push(PersonalInformation3Route());
    }
  }
}
