import 'dart:convert';

import 'package:auto_route/auto_route.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:dti_web/application/create_edit_application/create_edit_application_cubit.dart';
import 'package:dti_web/application/questionnaire_cubit.dart';
import 'package:dti_web/core/widgets/primary_button.dart';
import 'package:dti_web/domain/core/country_nationality.dart';
import 'package:dti_web/domain/questionnaire/questionnaire_model.dart';
import 'package:dti_web/injection.dart';
import 'package:dti_web/routes/app_router.dart';
import 'package:dti_web/utils/app_color.dart';
import 'package:dti_web/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_material_pickers/flutter_material_pickers.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:group_radio_button/group_radio_button.dart';
import 'package:intl/intl.dart';

class PersonalInformation1Page extends StatefulWidget {
  const PersonalInformation1Page({super.key, this.question});
  static const String routeName = '/personal-information1';

  final List<QuestionnaireModel>? question;

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

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateEditApplicationCubit, CreateEditApplicationState>(
      builder: (context, state) {
        return Scaffold(
            body: Stack(
          children: [
            Container(
                width: ScreenUtil().screenWidth,
                height: ScreenUtil().screenHeight,
                child: Image.network(
                  'https://picsum.photos/200/300',
                  fit: BoxFit.cover,
                )),
            Container(
                width: ScreenUtil().screenWidth / 2.2,
                // height: ScreenUtil().screenHeight,
                padding:
                    REdgeInsets.symmetric(horizontal: 50.w, vertical: 20.h),
                margin: EdgeInsets.symmetric(vertical: 40.h),
                decoration: BoxDecoration(
                  color: Colors.white.withAlpha(180),
                  borderRadius:
                      BorderRadius.horizontal(right: Radius.circular(10)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Personal Information",
                      style: TextStyle(
                          fontSize: 30.sp,
                          color: AppColor.primaryColor,
                          fontWeight: FontWeight.bold),
                    ),
                    20.verticalSpace,
                    Expanded(
                      child: SingleChildScrollView(
                        child: FormBuilder(
                          key: _formKey,
                          onChanged: () => {
                            //print("Form has been changed")
                          },
                          initialValue: const {'textfield': ''},
                          skipDisabled: true,
                          child: Column(
                            children: [
                              //First Name
                              Row(children: [
                                Expanded(
                                  child: FormBuilderTextField(
                                    name: 'firstName',
                                    initialValue: "",
                                    enableSuggestions: false,
                                    decoration: InputDecoration(
                                        hintText: "First Name",
                                        labelText: "First Name"),
                                    autocorrect: false,
                                    validator: FormBuilderValidators.required(
                                        errorText:
                                            "First name can not be empty"),
                                    autovalidateMode:
                                        AutovalidateMode.onUserInteraction,
                                    enabled: true,
                                  ),
                                ),
                                20.horizontalSpace,
                                Expanded(
                                  child: FormBuilderTextField(
                                    name: 'lastName',
                                    initialValue: "",
                                    enableSuggestions: false,
                                    decoration: InputDecoration(
                                        hintText: "Last Name",
                                        labelText: "Last Name"),
                                    autocorrect: false,
                                    validator: FormBuilderValidators.required(
                                        errorText:
                                            "Last name can not be empty"),
                                    autovalidateMode:
                                        AutovalidateMode.onUserInteraction,
                                    enabled: true,
                                  ),
                                ),
                              ]),
                              20.verticalSpace,

                              FormBuilderTextField(
                                name: 'placeBirthDate',
                                initialValue: "",
                                enableSuggestions: false,
                                decoration: InputDecoration(
                                    hintText: "Place Of Birth Date",
                                    labelText: "Place Of Birth Date"),
                                autocorrect: false,
                                validator: FormBuilderValidators.required(
                                    errorText:
                                        "Place of birth can not be empty"),
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                enabled: true,
                              ),
                              20.verticalSpace,
                              FormBuilderTextField(
                                onTap: () async {
                                  final nowDate = DateTime.now();
                                  final selectedDate = await showDatePicker(
                                      context: context,
                                      initialDate: DateTime(nowDate.year - 10),
                                      firstDate: DateTime(1800),
                                      lastDate: nowDate);

                                  _formKey
                                      .currentState!.fields['dateOfBirthDate']!
                                      .didChange(DateFormat('dd MMM yyyy')
                                          .format(selectedDate!));
                                },
                                readOnly: true,
                                name: 'dateOfBirthDate',
                                initialValue: initialDateOfBirth,
                                validator: FormBuilderValidators.required(
                                    errorText: "Date can not be empty"),
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                decoration: InputDecoration(
                                  labelText: "Date Of Birth Date",
                                  hintText: "Date Of Birth Date",
                                ),
                              ),
                              // //Date of Birth
                              20.verticalSpace,
                              FormBuilderRadioGroup(
                                  initialValue: 'male',
                                  decoration: InputDecoration(
                                      labelText: "Gender",
                                      border: UnderlineInputBorder(
                                          borderSide: BorderSide.none)),
                                  name: 'gender',
                                  validator: FormBuilderValidators.required(),
                                  autovalidateMode:
                                      AutovalidateMode.onUserInteraction,
                                  options: [
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
                                onTap: () => showMaterialScrollPicker<
                                    CountryNationality>(
                                  context: context,
                                  title: "Nationality",
                                  showDivider: false,
                                  items: Constant.getCountries(),
                                  selectedItem: Constant.getCountries().first,
                                  onChanged: (value) {
                                    _formKey
                                        .currentState!.fields['nationality']!
                                        .didChange(value.name.toString());
                                  },
                                ),
                                readOnly: true,
                                name: 'nationality',
                                validator: FormBuilderValidators.required(),
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                decoration: InputDecoration(
                                  labelText: "Nationality",
                                  hintText: "Nationality",
                                  fillColor: Colors.white70,
                                ),
                              ),
                              20.verticalSpace,
                              //Relationship Status
                              FormBuilderDropdown(
                                name: 'relation',
                                validator: FormBuilderValidators.required(),
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                items:
                                    ['Single', 'Married', 'Divorced', 'Widowed']
                                        .map(
                                          (relationship) => DropdownMenuItem(
                                            value: relationship,
                                            child: Text(relationship),
                                          ),
                                        )
                                        .toList(),
                                decoration: InputDecoration(
                                    labelText: "Relation",
                                    hintStyle:
                                        const TextStyle(color: Colors.grey),
                                    hintText: "Relation"),
                              ),
                              20.verticalSpace,

                              //Mobile Number
                              FormBuilderTextField(
                                name: 'MobileNumberField',
                                enableSuggestions: false,
                                autocorrect: false,
                                enabled: true,
                                validator: FormBuilderValidators.compose(
                                    [FormBuilderValidators.numeric()]),
                                // autovalidateMode:
                                //     AutovalidateMode.onUserInteraction,
                                decoration: InputDecoration(
                                  prefixIcon: CountryCodePicker(
                                    onChanged: (value) {},
                                    boxDecoration: BoxDecoration(
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
                              // //Deported
                              20.verticalSpace,

                              FormBuilderRadioGroup(
                                initialValue: false,
                                decoration: InputDecoration(
                                    labelText:
                                        "Have you been deported from Indonesia before ?"),
                                name: 'deported',
                                validator: FormBuilderValidators.required(),
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                separator: 10.horizontalSpace,
                                options: [
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
                                decoration: InputDecoration(
                                  labelText:
                                      "Have you been overstayed in Indonesia before ?",
                                ),
                                name: 'overstay',
                                validator: FormBuilderValidators.required(),
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                initialValue: false,
                                separator: 10.verticalSpace,
                                options: [
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
                                child: PrimaryButton(
                                  onClick: () async {
                                    await updateData(context);
                                    print(state.visa);
                                  },
                                  label: "SUBMIT",
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                  // Expanded(
                  //     child: Column(
                  //   crossAxisAlignment: CrossAxisAlignment.start,
                  //   children: [
                  //     Row(
                  //       children: [
                  //         Expanded(
                  //           child: TextFormField(
                  //             decoration: InputDecoration(
                  //                 hintText: "First Name", labelText: "First Name"),
                  //           ),
                  //         ),
                  //         20.horizontalSpace,
                  //         Expanded(
                  //           child: TextFormField(
                  //             decoration: InputDecoration(
                  //                 hintText: "Last Name", labelText: "Last Name"),
                  //           ),
                  //         ),
                  //       ],
                  //     ),
                  //     10.verticalSpace,
                  //     TextFormField(
                  //       decoration: InputDecoration(
                  //           hintText: "Place Of Birth",
                  //           labelText: "Place Of Birth"),
                  //     ),
                  //     10.verticalSpace,
                  //     TextFormField(
                  //       readOnly: true,
                  //       onTap: () async {
                  //         final nowDate = DateTime.now();
                  //         await showDatePicker(
                  //             context: context,
                  //             initialDate: DateTime(nowDate.year - 10),
                  //             firstDate: DateTime(1800),
                  //             lastDate: nowDate);
                  //       },
                  //       decoration: InputDecoration(
                  //           hintText: "Date Of Birth", labelText: "Date Of Birth"),
                  //     ),
                  //     10.verticalSpace,
                  //     Text(
                  //       "Gender",
                  //       style: TextStyle(fontSize: 13.sp),
                  //     ),
                  //     5.verticalSpace,
                  //     RadioGroup<String>.builder(
                  //       groupValue: 'test',
                  //       onChanged: (value) => setState(() {}),
                  //       items: ["Female", "Male"],
                  //       spacebetween: 20.w,
                  //       direction: Axis.horizontal,
                  //       horizontalAlignment: MainAxisAlignment.start,
                  //       itemBuilder: (item) => RadioButtonBuilder(
                  //         item,
                  //       ),
                  //     ),
                  //   ],
                  // )),
                  // ],
                  // ),
                ))
          ],
        ));
      },
    );
  }

  Future<void> updateData(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      final formData = _formKey.currentState!.value;
      context.read<CreateEditApplicationCubit>().updatePersonalInformation1(
          firstName: formData['firstName'],
          lastName: formData['lastName'],
          placeOfBirth: formData['placeBirthDate'],
          dateOfBirth: formData['dateOfBirthDate'],
          gender: formData['gender'],
          nationality: formData['nationality'],
          relation: formData['relation'],
          phoneNumber: formData['MobileNumberField'],
          haveDeported: formData['deported'],
          haveOverstayed: formData['overstay']);

      AutoRouter.of(context).push(PersonalInformation2Route());
    }
  }
}
