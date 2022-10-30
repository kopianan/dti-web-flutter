import 'package:auto_route/auto_route.dart';
import 'package:dti_web/core/widgets/primary_button.dart';
import 'package:dti_web/domain/core/city.dart';
import 'package:dti_web/domain/core/distict.dart';
import 'package:dti_web/domain/core/province.dart';
import 'package:dti_web/domain/questionnaire/questionnaire_model.dart';
import 'package:dti_web/routes/app_router.dart';
import 'package:dti_web/utils/app_color.dart';
import 'package:dti_web/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_material_pickers/flutter_material_pickers.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class PersonalInformation4Page extends StatefulWidget {
  const PersonalInformation4Page({super.key, this.question});
  static const String routeName = '/personal-information4';

  final List<QuestionnaireModel>? question;

  @override
  State<PersonalInformation4Page> createState() =>
      _PersonalInformation4PageState();
}

class _PersonalInformation4PageState extends State<PersonalInformation4Page> {
  final _formKey = GlobalKey<FormBuilderState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
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
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              'Multiple Entry Duration',
              style: TextStyle(
                  fontSize: 30.sp,
                  color: AppColor.primaryColor,
                  fontWeight: FontWeight.bold),
            ),
            20.verticalSpace,
            FormBuilder(
                key: _formKey,
                child: Column(
                  children: [
                    Column(
                      children: [
                        //Multiple Entry Visa Duration
                        FormBuilderDropdown(
                          name: 'MultiVisaDurationField',
                          validator: FormBuilderValidators.required(),
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          items: Constant.getMultipleVisaDuration()
                              .map(
                                (country) => DropdownMenuItem(
                                  value: country,
                                  child: Text(country),
                                ),
                              )
                              .toList(),
                          decoration: InputDecoration(
                            labelText: "Multiple Entry Duration",
                            hintStyle: const TextStyle(color: Colors.grey),
                            hintText: "Multiple Entry Duration",
                            fillColor: Colors.white70,
                          ),
                        ),
                        20.verticalSpace,
                        SizedBox(
                            width: double.infinity,
                            child: PrimaryButton(
                                onClick: () {
                                  AutoRouter.of(context)
                                      .push(UserDomicileRoute());
                                },
                                label: "Submit")),
                        //validate button
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
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Passport is valid for at least",
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
                                      "Months for 6 Months",
                                      style: TextStyle(
                                        color: Colors.grey[600],
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ))
          ]))
    ]));
  }
}
