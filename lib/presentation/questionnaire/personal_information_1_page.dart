import 'package:auto_route/auto_route.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:dti_web/application/application_cubit.dart';
import 'package:dti_web/core/widgets/primary_button.dart';
import 'package:dti_web/domain/core/country_nationality.dart';
import 'package:dti_web/domain/questionnaire/questionnaire_model.dart';
import 'package:dti_web/routes/app_router.dart';
import 'package:dti_web/utils/app_color.dart';
import 'package:dti_web/utils/constant.dart';
import 'package:dti_web/utils/date_converter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_material_pickers/flutter_material_pickers.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
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
    return BlocBuilder<ApplicationCubit, ApplicationState>(
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
                                    initialValue: state.visaApplicationModel ==
                                            null
                                        ? ''
                                        : state.visaApplicationModel!.firstName,
                                    enableSuggestions: false,
                                    decoration: const InputDecoration(
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
                                    initialValue: state.visaApplicationModel ==
                                            null
                                        ? ''
                                        : state.visaApplicationModel!.lastName,
                                    enableSuggestions: false,
                                    decoration: const InputDecoration(
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
                                initialValue: state.visaApplicationModel == null
                                    ? ''
                                    : state.visaApplicationModel!.placeOfBirth,
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
                                      .didChange(DateFormat('MM/dd/yyyy')
                                          .format(selectedDate!));
                                },
                                readOnly: true,
                                name: 'dateOfBirthDate',
                                initialValue: state.visaApplicationModel == null
                                    ? ''
                                    : DateConverter.convertDateDefault(state
                                        .visaApplicationModel!.dateOfBirth),
                                validator: FormBuilderValidators.required(
                                    errorText: "Date can not be empty"),
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                decoration: const InputDecoration(
                                  labelText: "Date Of Birth Date",
                                  hintText: "Date Of Birth Date",
                                ),
                              ),
                              // //Date of Birth
                              20.verticalSpace,
                              FormBuilderRadioGroup(
                                  initialValue: state.visaApplicationModel ==
                                          null
                                      ? ''
                                      : state.visaApplicationModel!.gender ==
                                              null
                                          ? 'male'
                                          : state.visaApplicationModel!.gender!
                                              .toLowerCase(),
                                  decoration: const InputDecoration(
                                      labelText: "Gender",
                                      border: UnderlineInputBorder(
                                          borderSide: BorderSide.none)),
                                  name: 'gender',
                                  validator: FormBuilderValidators.required(),
                                  autovalidateMode:
                                      AutovalidateMode.onUserInteraction,
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
                                onTap: () => showMaterialScrollPicker<
                                    CountryNationality>(
                                  context: context,
                                  title: "Nationality",
                                  showDivider: false,
                                  items: Constant.getCountries(),
                                  selectedItem: Constant.getCountries().first,
                                  onChanged: (value) {
                                    context
                                        .read<ApplicationCubit>()
                                        .updateNationality(value.name);
                                    _formKey
                                        .currentState!.fields['nationality']!
                                        .didChange(value.name.toString());
                                  },
                                ),
                                readOnly: true,
                                name: 'nationality',
                                initialValue: state.visaApplicationModel == null
                                    ? ''
                                    : state.visaApplicationModel!.nationality ??
                                        '',
                                validator: FormBuilderValidators.required(),
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                decoration: const InputDecoration(
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
                                initialValue: state.visaApplicationModel == null
                                    ? ''
                                    : state.visaApplicationModel!
                                        .relationshipStatus,
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
                                decoration: const InputDecoration(
                                    labelText: "Relation",
                                    hintStyle:
                                        const TextStyle(color: Colors.grey),
                                    hintText: "Relation"),
                              ),
                              20.verticalSpace,

                              //Mobile Number
                              FormBuilderTextField(
                                name: 'MobileNumberField',
                                initialValue: state.visaApplicationModel == null
                                    ? ''
                                    : state.visaApplicationModel!
                                            .mobileNumber ??
                                        '',
                                enableSuggestions: false,
                                autocorrect: false,
                                enabled: true,
                                validator: FormBuilderValidators.compose(
                                    [FormBuilderValidators.numeric()]),
                                // autovalidateMode:
                                //     AutovalidateMode.onUserInteraction,
                                decoration: InputDecoration(
                                  prefixIcon: CountryCodePicker(
                                    initialSelection:
                                        state.visaApplicationModel == null
                                            ? "US"
                                            : state.visaApplicationModel!
                                                    .mobileCountryCode ??
                                                "US",
                                    onChanged: (value) {
                                      context
                                          .read<ApplicationCubit>()
                                          .updatePhoneDialCode(value);
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
                              // //Deported
                              20.verticalSpace,

                              FormBuilderRadioGroup(
                                decoration: const InputDecoration(
                                    labelText:
                                        "Have you been deported from Indonesia before ?"),
                                name: 'deported',
                                validator: FormBuilderValidators.required(),
                                initialValue: state.visaApplicationModel == null
                                    ? false
                                    : state.visaApplicationModel!
                                            .deportedFlag ??
                                        false,
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                separator: 10.horizontalSpace,
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
                                decoration: const InputDecoration(
                                  labelText:
                                      "Have you been overstayed in Indonesia before ?",
                                ),
                                name: 'overstay',
                                validator: FormBuilderValidators.required(),
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                initialValue: state.visaApplicationModel == null
                                    ? false
                                    : state.visaApplicationModel!
                                            .overstayedFlag ??
                                        false,
                                separator: 10.horizontalSpace,
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
                                child: PrimaryButton(
                                  onClick: () async {
                                    await updateData(context);
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
      context.read<ApplicationCubit>().updatePersonalInformation1(
            firstName: formData['firstName'],
            lastName: formData['lastName'],
            placeOfBirth: formData['placeBirthDate'],
            dateOfBirth: formData['dateOfBirthDate'],
            gender: formData['gender'],
            relation: formData['relation'],
            mobileNumber: formData['MobileNumberField'],
            deportedFlag: formData['deported'],
            overstayedFlag: formData['overstay'],
          );

      AutoRouter.of(context).push(PersonalInformation2Route());
    }
  }
}
