import 'package:dti_web/application/application_cubit.dart';
import 'package:dti_web/core/widgets/primary_button.dart';
import 'package:dti_web/domain/questionnaire/questionnaire_model.dart';
import 'package:dti_web/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class UserDomicilePage extends StatefulWidget {
  const UserDomicilePage({super.key, this.question});
  static const String routeName = '/user-domicile';

  final List<QuestionnaireModel>? question;

  @override
  State<UserDomicilePage> createState() => _UserDomicilePageState();
}

class _UserDomicilePageState extends State<UserDomicilePage> {
  final _formKey = GlobalKey<FormBuilderState>();

  @override
  void initState() {
    super.initState();
  }

  var greyTextStyle = TextStyle(
      fontSize: 18, color: Colors.grey[700]!, fontWeight: FontWeight.bold);
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ApplicationCubit, ApplicationState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
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
            child: BlocConsumer<ApplicationCubit, ApplicationState>(
              listener: (context, state) {},
              builder: (context, state) => Container(
                width: double.infinity,
                padding: const EdgeInsets.all(10.0),
                child: FormBuilder(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Text(
                          "Your Current Location",
                          style: TextStyle(
                            color: AppColor.primaryColor,
                            fontSize: 26.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      FormBuilderRadioGroup(
                        initialValue: false,
                        decoration: InputDecoration(
                          labelText: "Are you in Indonesia right now ? ",
                          labelStyle: greyTextStyle.copyWith(fontSize: 24.sp),
                          border: InputBorder.none,
                          enabledBorder: InputBorder.none,
                        ),
                        name: 'inIndonesia',
                        validator: FormBuilderValidators.required(),
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        options: [
                          FormBuilderFieldOption(
                              value: true,
                              child: Text(
                                "Yes",
                                style: greyTextStyle,
                              )),
                          FormBuilderFieldOption(
                              value: false,
                              child: Text(
                                "No",
                                style: greyTextStyle,
                              )),
                        ],
                      ),
                      const SizedBox(height: 20),
                      FormBuilderTextField(
                        name: 'city',
                        enableSuggestions: false,
                        autocorrect: false,
                        validator: FormBuilderValidators.required(),
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        enabled: true,
                        decoration: const InputDecoration(
                          labelText: "City",
                          border: UnderlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                          ),
                          filled: false,
                          hintStyle: const TextStyle(
                            color: Colors.grey,
                          ),
                          hintText: "City",
                          fillColor: Colors.white70,
                        ),
                      ),
                      const SizedBox(height: 20),
                      SizedBox(
                        width: double.infinity,
                        child: PrimaryButton(
                            onClick: () {
                              print("TEST");
                              if (_formKey.currentState!.validate()) {
                                _formKey.currentState!.save();
                                print("TEST");
                                final formData = _formKey.currentState!.value;

                                context
                                    .read<ApplicationCubit>()
                                    .updateUserDomicile(formData["inIndonesia"],
                                        formData["city"]);

                                context
                                    .read<ApplicationCubit>()
                                    .uploadParticularData();
                              }
                            },
                            label: "Continue"),
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ]));
      },
    );
  }
}
