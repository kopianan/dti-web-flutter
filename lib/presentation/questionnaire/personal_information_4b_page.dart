import 'package:auto_route/auto_route.dart';
import 'package:dti_web/application/application_cubit.dart';
import 'package:dti_web/application/update_application/update_application_cubit.dart';
import 'package:dti_web/core/widgets/primary_button.dart';
import 'package:dti_web/domain/questionnaire/questionnaire_model.dart';
import 'package:dti_web/injection.dart';
import 'package:dti_web/presentation/questionnaire/widget/custom_second_header.dart';
import 'package:dti_web/routes/app_router.dart';
import 'package:dti_web/utils/app_color.dart';
import 'package:dti_web/utils/date_converter.dart';
import 'package:dti_web/utils/date_time_child.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:intl/intl.dart';

class PersonalInformation4bPage extends StatefulWidget {
  const PersonalInformation4bPage({super.key});
  static const String routeName = '/personal-information4b';

  @override
  State<PersonalInformation4bPage> createState() =>
      _PersonalInformation4bPageState();
}

class _PersonalInformation4bPageState extends State<PersonalInformation4bPage> {
  final _formKey = GlobalKey<FormBuilderState>();
  String _current = "";
  var curretDate = DateTime.now();

  @override
  void initState() {
    final tempDate = DateTime.now();
    curretDate = DateTime(tempDate.year, tempDate.month, tempDate.day);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<UpdateApplicationCubit>(),
      child: BlocConsumer<UpdateApplicationCubit, UpdateApplicationState>(
        listener: (context, state) {
          state.maybeMap(orElse: () {
            EasyLoading.dismiss();
          }, onLoading: (e) {
            EasyLoading.show(maskType: EasyLoadingMaskType.black);
          }, onUpdateApplication: (e) {
            EasyLoading.dismiss();
            AutoRouter.of(context).navigate(UploadDocumentRoute());
          });
        },
        builder: (context, state) {
          return BlocBuilder<ApplicationCubit, ApplicationState>(
            builder: (context, state) {
              return Scaffold(
                  body: Row(children: [
                Expanded(
                  child: Container(
                      padding: REdgeInsets.symmetric(
                          horizontal: 10.w, vertical: 20.h),
                      margin: EdgeInsets.symmetric(vertical: 40.h),
                      decoration: const BoxDecoration(
                        borderRadius:
                            BorderRadius.horizontal(right: Radius.circular(10)),
                      ),
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
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 30),
                              child: Text(
                                "Arrival Information",
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
                                      child: FormBuilder(
                                        key: _formKey,
                                        onChanged: () => {},
                                        initialValue: const {'textfield': ''},
                                        skipDisabled: true,
                                        child: Column(
                                          children: [
                                            Column(
                                              children: [
                                                FormBuilderDropdown(
                                                  name: 'ModeOfTransportation',
                                                  initialValue: state
                                                      .visaApplicationModel!
                                                      .modeOfTransportation,
                                                  validator:
                                                      FormBuilderValidators
                                                          .required(),
                                                  autovalidateMode:
                                                      AutovalidateMode
                                                          .onUserInteraction,
                                                  items: ["Air", "Sea", "Land"]
                                                      .map(
                                                        (transport) =>
                                                            DropdownMenuItem(
                                                          value: transport,
                                                          child:
                                                              Text(transport),
                                                        ),
                                                      )
                                                      .toList(),
                                                  decoration:
                                                      const InputDecoration(
                                                    labelText:
                                                        "Mode Of Transportation",
                                                    border: OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.all(
                                                        Radius.circular(10.0),
                                                      ),
                                                    ),
                                                    filled: true,
                                                    hintStyle: TextStyle(
                                                        color: Colors.grey),
                                                    hintText:
                                                        "Mode Of Transportation",
                                                    fillColor: Colors.white70,
                                                  ),
                                                ),
                                                const SizedBox(
                                                  height: 20,
                                                ),
                                                FormBuilderTextField(
                                                  name: 'FligtVesselNumber',
                                                  enableSuggestions: false,
                                                  autocorrect: false,
                                                  initialValue: state
                                                      .visaApplicationModel!
                                                      .flightNumber,
                                                  validator:
                                                      FormBuilderValidators
                                                          .required(),
                                                  autovalidateMode:
                                                      AutovalidateMode
                                                          .onUserInteraction,
                                                  enabled: true,
                                                  decoration:
                                                      const InputDecoration(
                                                    labelText:
                                                        "Fligt / Vessel Number",
                                                    border: OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.all(
                                                        Radius.circular(10.0),
                                                      ),
                                                    ),
                                                    filled: true,
                                                    hintStyle: TextStyle(
                                                      color: Colors.grey,
                                                    ),
                                                    hintText:
                                                        "Fligt / Vessel Number",
                                                    fillColor: Colors.white70,
                                                  ),
                                                ),
                                                const SizedBox(height: 20),
                                                FormBuilderTextField(
                                                  onTap: () async {
                                                    var initial = curretDate;
                                                    if (state
                                                            .visaApplicationModel
                                                            ?.arrivalDate !=
                                                        null) {
                                                      try {
                                                        initial = DateConverter
                                                            .stringToDate(state
                                                                .visaApplicationModel!
                                                                .arrivalDate!);
                                                      } on Exception catch (e) {
                                                        initial =
                                                            DateTime.parse(state
                                                                .visaApplicationModel!
                                                                .arrivalDate!);
                                                      }
                                                    }

                                                    final nowDate =
                                                        DateTime.now();
                                                    final selectedDate =
                                                        await showDatePicker(
                                                            context: context,
                                                            initialDate:
                                                                initial,
                                                            firstDate:
                                                                DateTime(1800),
                                                            builder:
                                                                dateTimThemeChild,
                                                            lastDate: DateTime(
                                                                nowDate.year +
                                                                    100000));
                                                    if (selectedDate != null) {
                                                      _formKey
                                                          .currentState!
                                                          .fields[
                                                              'arrivalDate']!
                                                          .didChange(DateConverter
                                                              .convertDateDefault2(
                                                                  selectedDate));
                                                    }
                                                  },
                                                  readOnly: true,
                                                  initialValue: state
                                                              .visaApplicationModel ==
                                                          null
                                                      ? ''
                                                      : DateConverter
                                                          .convertDateDefault(state
                                                              .visaApplicationModel!
                                                              .arrivalDate),
                                                  name: 'arrivalDate',
                                                  validator:
                                                      FormBuilderValidators
                                                          .compose(
                                                    [
                                                      (value) {
                                                        if (value != "" &&
                                                            value != null) {
                                                          var x = DateFormat(
                                                                  "dd MMM yyyy")
                                                              .parse(value);
                                                          //maximum today
                                                          if (x.isBefore(
                                                              curretDate)) {
                                                            return "Date of Birth cannot be smaller than today";
                                                          }
                                                        }
                                                        return null;
                                                      },
                                                      FormBuilderValidators
                                                          .required()
                                                    ],
                                                  ),
                                                  autovalidateMode:
                                                      AutovalidateMode
                                                          .onUserInteraction,
                                                  decoration:
                                                      const InputDecoration(
                                                    labelText: "Arrival Date",
                                                    prefixIcon:
                                                        Icon(Icons.date_range),
                                                    hintStyle: TextStyle(
                                                        color: Colors.grey),
                                                    hintText: "Arrival Date",
                                                  ),
                                                ),
                                                const SizedBox(height: 20),
                                                //validate button
                                                SizedBox(
                                                    height: 45.h,
                                                    width: double.infinity,
                                                    child: PrimaryButton(
                                                        labelStyle: TextStyle(
                                                            fontSize: 15.sp),
                                                        onClick: () async {
                                                          await updateData(
                                                              context);
                                                        },
                                                        label: "Continue"))
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ])),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(100.sp),
                    child: Image.asset(
                      'assets/images/bg/residential.webp',
                    ),
                  ),
                )
              ]));
            },
          );
        },
      ),
    );
  }

  Future<void> updateData(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      final formData = _formKey.currentState!.value;
      await context.read<ApplicationCubit>().updatePersonalInformation4B(
            modeOfTransportation: formData['ModeOfTransportation'],
            flightNumber: formData['FligtVesselNumber'],
            arrivalDate: formData['arrivalDate'],
          );
      context.read<UpdateApplicationCubit>().updateVOAData(
          context.read<ApplicationCubit>().state.visaApplicationModel!);
//update data to cloud
    }
  }
}
