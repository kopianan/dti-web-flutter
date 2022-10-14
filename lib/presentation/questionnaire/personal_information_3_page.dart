import 'package:auto_route/auto_route.dart';
import 'package:dti_web/core/widgets/primary_button.dart';
import 'package:dti_web/domain/core/city.dart';
import 'package:dti_web/domain/core/distict.dart';
import 'package:dti_web/domain/core/province.dart';
import 'package:dti_web/domain/questionnaire/questionnaire_model.dart';
import 'package:dti_web/routes/app_router.dart';
import 'package:dti_web/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_material_pickers/flutter_material_pickers.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class PersonalInformation3Page extends StatefulWidget {
  const PersonalInformation3Page({super.key, this.question});
  static const String routeName = '/personal-information3';

  final List<QuestionnaireModel>? question;

  @override
  State<PersonalInformation3Page> createState() =>
      _PersonalInformation3PageState();
}

class _PersonalInformation3PageState extends State<PersonalInformation3Page> {
  // List<Province> provincies = Pref().getProvince()!;

  // List<City> cities = Pref().getCity()!;

  // List<District> districts = Pref().getDistrict()!;

  // List<City>? citiesByProvince;
  // List<District>? districtsByProvinceAndCity;

  // Province selectedProvince = Pref()
  //     .getProvince()!
  //     .firstWhere((element) => element.name == "DKI Jakarta");
  String initialProvince = "DKI Jakarta";

  String? initialCity;

  String? initialDistrict;

  bool firstFlag = true;

  final _formKey = GlobalKey<FormBuilderState>();
  City? selectedCity;

  District? selectedDistrict;
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
                  'Indonesia\'s Residential',
                  style: TextStyle(
                      fontSize: 30.sp,
                      color: AppColor.primaryColor,
                      fontWeight: FontWeight.bold),
                ),
                20.verticalSpace,
                FormBuilder(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      FormBuilder(
                        key: _formKey,
                        child: Column(
                          children: [
                            //Address
                            FormBuilderTextField(
                              name: 'AddressField',
                              enableSuggestions: false,
                              autocorrect: false,
                              maxLines: 5,
                              validator: FormBuilderValidators.required(),
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              enabled: true,
                              decoration: InputDecoration(
                                labelText: "Address",
                                hintStyle: const TextStyle(color: Colors.grey),
                                hintText: "Address",
                              ),
                            ),
                            20.verticalSpace,

                            //Province
                            FormBuilderTextField(
                              onTap: () => showMaterialScrollPicker<Province>(
                                  context: context,
                                  title: "Pick Your Province",
                                  showDivider: false,
                                  items: [],
                                  headerColor: AppColor.primaryColor,
                                  selectedItem: Province(12, 'name'),
                                  onChanged: (value) {}),
                              readOnly: true,
                              name: 'ProvinceField',
                              initialValue: initialProvince,
                              validator: FormBuilderValidators.required(),
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              decoration: InputDecoration(
                                labelText: "Province",
                                hintStyle: const TextStyle(color: Colors.grey),
                                hintText: "Province",
                              ),
                            ),
                            20.verticalSpace,

                            //City
                            FormBuilderTextField(
                              onTap: () => showMaterialScrollPicker<City>(
                                  context: context,
                                  title: "Pick Your City",
                                  showDivider: false,
                                  items: [],
                                  headerColor: AppColor.primaryColor,
                                  selectedItem: City(12, 12, 'name'),
                                  onChanged: (value) {}),
                              readOnly: true,
                              name: 'cityField',
                              initialValue: initialProvince,
                              validator: FormBuilderValidators.required(),
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              decoration: InputDecoration(
                                labelText: "City",
                                hintStyle: const TextStyle(color: Colors.grey),
                                hintText: "City",
                              ),
                            ),
                            20.verticalSpace,

                            //District
                            FormBuilderTextField(
                              onTap: () => showMaterialScrollPicker<District?>(
                                context: context,
                                title: "Pick Your District",
                                showDivider: false,
                                items: [],
                                headerColor: AppColor.primaryColor,
                                selectedItem: selectedDistrict,
                                onChanged: (value) {},
                              ),
                              readOnly: true,
                              name: 'districtField',
                              initialValue: initialDistrict,
                              validator: FormBuilderValidators.required(),
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              decoration: InputDecoration(
                                labelText: "District",
                                hintStyle: const TextStyle(color: Colors.grey),
                                hintText: "District",
                              ),
                            ),
                            20.verticalSpace,

                            SizedBox(
                              width: double.infinity,
                              child: PrimaryButton(
                                label: "Submit",
                                onClick: () {
                                  AutoRouter.of(context)
                                      .push(PersonalInformation4Route());
                                },
                              ),
                            )
                          ],
                        ),
                        onChanged: () => {},
                        initialValue: const {'textfield': ''},
                        skipDisabled: true,
                      ),
                    ],
                  ),
                ),
              ],
            ))
      ],
    ));
  }
}
