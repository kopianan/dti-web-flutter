import 'package:auto_route/auto_route.dart';
import 'package:dti_web/application/application_cubit.dart';
import 'package:dti_web/application/update_application/update_application_cubit.dart';
import 'package:dti_web/core/widgets/primary_button.dart';
import 'package:dti_web/domain/core/city.dart';
import 'package:dti_web/domain/core/distict.dart';
import 'package:dti_web/domain/core/province.dart';
import 'package:dti_web/domain/questionnaire/questionnaire_model.dart';
import 'package:dti_web/injection.dart';
import 'package:dti_web/routes/app_router.dart';
import 'package:dti_web/utils/app_color.dart';
import 'package:dti_web/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
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
  String _current = "";
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<UpdateApplicationCubit>(),
      child: BlocConsumer<UpdateApplicationCubit, UpdateApplicationState>(
        listener: (context, state) {
          state.maybeMap(
              orElse: () {},
              onLoading: (e) {
                EasyLoading.show(maskType: EasyLoadingMaskType.black);
              },
              onUpdateMultiVisa: (e) {
                EasyLoading.dismiss();
                context
                    .read<ApplicationCubit>()
                    .updatePersonalInformation4(_current);
                AutoRouter.of(context).push(UserDomicileRoute());
              });
        },
        builder: (context, state) {
          return BlocBuilder<ApplicationCubit, ApplicationState>(
            builder: (context, state) {
              return Scaffold(
                  body: Stack(children: [
                Container(
                    width: ScreenUtil().screenWidth,
                    height: ScreenUtil().screenHeight,
                    child: Image.asset(
                      'assets/images/bg/bg_visa4.png',
                      fit: BoxFit.cover,
                    )),
                Container(
                    width: ScreenUtil().screenWidth / 2.2,
                    // height: ScreenUtil().screenHeight,
                    padding:
                        REdgeInsets.symmetric(horizontal: 50.w, vertical: 20.h),
                    margin: EdgeInsets.symmetric(vertical: 40.h),
                    decoration: BoxDecoration(
                      color: Colors.white.withAlpha(240),
                      borderRadius:
                          BorderRadius.horizontal(right: Radius.circular(10)),
                    ),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
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
                                        initialValue:
                                            state.visaApplicationModel == null
                                                ? ""
                                                : state.visaApplicationModel!
                                                    .multiVisaDuration,
                                        name: 'MultiVisaDurationField',
                                        validator:
                                            FormBuilderValidators.required(),
                                        autovalidateMode:
                                            AutovalidateMode.onUserInteraction,
                                        items:
                                            Constant.getMultipleVisaDuration()
                                                .map(
                                                  (country) => DropdownMenuItem(
                                                    value: country,
                                                    child: Text(country),
                                                  ),
                                                )
                                                .toList(),
                                        decoration: const InputDecoration(
                                          labelText: "Multiple Entry Duration",
                                          hintStyle:
                                              TextStyle(color: Colors.grey),
                                          hintText: "Multiple Entry Duration",
                                          fillColor: Colors.white70,
                                        ),
                                      ),
                                      20.verticalSpace,

                                      SizedBox(
                                        width: double.infinity,
                                        height: 45.h,
                                        child: PrimaryButton(
                                          labelStyle:
                                              TextStyle(fontSize: 15.sp),
                                          onClick: () async {
                                            if (_formKey.currentState!
                                                .validate()) {
                                              _formKey.currentState!.save();
                                              final formData =
                                                  _formKey.currentState!.value;
                                              _current = formData[
                                                      "MultiVisaDurationField"]
                                                  .toString();
                                              context
                                                  .read<
                                                      UpdateApplicationCubit>()
                                                  .updateMultiVisaDuration(
                                                      _current,
                                                      state
                                                          .visaApplicationModel!
                                                          .firebaseDocId!);
                                            }
                                          },
                                          label: "SUBMIT",
                                        ),
                                      ),

                                      //validate button
                                      20.verticalSpace,
                                      Card(
                                        color: Colors.grey[200],
                                        shadowColor: Colors.black,
                                        elevation: 10,
                                        clipBehavior: Clip.antiAlias,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(15),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "Passport is valid for at least",
                                                    style: TextStyle(
                                                      color: Colors.grey[600],
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    height: 10,
                                                  ),
                                                  Text(
                                                    '''18 months for 6 months / 1 year visa duration \n30 months for 2 years visa duration \n42 months for 3 years visa duration \n54 months for 4 years visa duration \n66 months for 5 years visa duration''',
                                                    style: TextStyle(
                                                      color: Colors.grey[600],
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.bold,
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
            },
          );
        },
      ),
    );
  }
}
