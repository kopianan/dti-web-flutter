import 'package:auto_route/auto_route.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:dti_web/application/questionnaire_cubit.dart';
import 'package:dti_web/core/widgets/primary_button.dart';
import 'package:dti_web/domain/core/country_nationality.dart';
import 'package:dti_web/domain/questionnaire/questionnaire_model.dart';
import 'package:dti_web/routes/app_router.dart';
import 'package:dti_web/utils/app_color.dart';
import 'package:dti_web/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_material_pickers/flutter_material_pickers.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:group_radio_button/group_radio_button.dart';

class PersonalInformation2Page extends StatefulWidget {
  const PersonalInformation2Page({super.key, this.question});
  static const String routeName = '/personal-information2';

  final List<QuestionnaireModel>? question;

  @override
  State<PersonalInformation2Page> createState() =>
      _PersonalInformation2PageState();
}

class _PersonalInformation2PageState extends State<PersonalInformation2Page> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
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
            padding: REdgeInsets.symmetric(horizontal: 50.w, vertical: 20.h),
            margin: EdgeInsets.symmetric(vertical: 40.h),
            decoration: BoxDecoration(
              color: Colors.white.withAlpha(180),
              borderRadius: BorderRadius.horizontal(right: Radius.circular(10)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Passport  Information",
                  style: TextStyle(
                      fontSize: 30.sp,
                      color: AppColor.primaryColor,
                      fontWeight: FontWeight.bold),
                ),
                20.verticalSpace,
                FormBuilder(
                  child: Column(
                    children: [
                      //Passport Number
                      FormBuilderTextField(
                        name: 'passportNumber',
                        enableSuggestions: false,
                        autocorrect: false,
                        validator: FormBuilderValidators.required(),
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        enabled: true,
                        decoration: InputDecoration(
                          labelText: "Passport Number",
                          hintStyle: const TextStyle(
                            color: Colors.grey,
                          ),
                          hintText: "Passport Number",
                        ),
                      ),
                      20.verticalSpace,

                      //Date of Issue
                      FormBuilderTextField(
                        onTap: () async {
                          final nowDate = DateTime.now();
                          await showDatePicker(
                              context: context,
                              initialDate: DateTime(nowDate.year - 10),
                              firstDate: DateTime(1800),
                              lastDate: nowDate);
                        },
                        readOnly: true,
                        name: 'dateOfIssue',
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        decoration: InputDecoration(
                          labelText: "Date Of Issue",
                          hintStyle: const TextStyle(color: Colors.grey),
                          hintText: "Date Of Issue",
                        ),
                      ),
                      20.verticalSpace,
                      //Date of Expiration
                      FormBuilderTextField(
                        onTap: () async {
                          final nowDate = DateTime.now();
                          await showDatePicker(
                              context: context,
                              initialDate: DateTime(nowDate.year - 10),
                              firstDate: DateTime(1800),
                              lastDate: nowDate);
                        },
                        readOnly: true,
                        name: 'dateOfExpire',
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        decoration: InputDecoration(
                          labelText: "Date Of Expire",
                          hintStyle: const TextStyle(color: Colors.grey),
                          hintText: "Date Of Expire",
                        ),
                      ),
                      20.verticalSpace,
                      //Issuing Country
                      FormBuilderTextField(
                        onTap: () =>
                            showMaterialScrollPicker<CountryNationality>(
                          context: context,
                          title: "Nationality",
                          showDivider: false,
                          items: Constant.getCountries(),
                          selectedItem: Constant.getCountries().first,
                          onChanged: (value) {
                            //   _formKey.currentState!.fields['NationalityField']!
                            //       .didChange(value.name);
                          },
                        ),
                        readOnly: true,
                        name: 'nationality',
                        validator: FormBuilderValidators.required(),
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        decoration: InputDecoration(
                          labelText: "Nationality",
                          hintText: "Nationality",
                          fillColor: Colors.white70,
                        ),
                      ),
                      20.verticalSpace,
                      //validate button
                      SizedBox(
                        width: double.infinity,
                        child: PrimaryButton(
                            label: "Submit",
                            onClick: () {
                              AutoRouter.of(context)
                                  .push(PersonalInformation3Route());
                            }),
                      )
                    ],
                  ),
                  onChanged: () => {},
                  initialValue: const {'textfield': ''},
                  skipDisabled: true,
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
                      crossAxisAlignment: CrossAxisAlignment.start,
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
                        Text(
                          "At least 12 months for Single Entry Visa At least 6 months for Multiple Entry Visa",
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ))
      ],
    ));
  }
}
