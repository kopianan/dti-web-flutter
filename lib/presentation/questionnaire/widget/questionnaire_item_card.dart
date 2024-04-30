import 'package:dti_web/domain/questionnaire/questionnaire_model.dart';
import 'package:dti_web/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class QuestionnaireItemCard extends StatelessWidget {
  const QuestionnaireItemCard({
    super.key,
    required this.questionnaireModel,
  });

  final QuestionnaireModel questionnaireModel;

  @override
  Widget build(BuildContext context) {
    return Container(
        clipBehavior: Clip.hardEdge,
        margin: REdgeInsets.only(bottom: 15),
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            boxShadow: const [
              BoxShadow(
                  offset: Offset(2, -2),
                  blurRadius: 10,
                  spreadRadius: 1,
                  color: Colors.grey)
            ]),
        child: Column(
          children: [
            Container(
                alignment: Alignment.center,
                width: double.infinity,
                color: AppColor.primaryColor,
                padding: const EdgeInsets.all(10),
                child: Text(
                  questionnaireModel.header ?? "",
                  style: TextStyle(
                      fontSize: 17.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                )),
            Container(
                padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 10.w),
                child: Text(
                  questionnaireModel.body ?? "",
                  style: TextStyle(fontSize: 15.sp),
                )),
            Container(
                alignment: Alignment.center,
                width: double.infinity,
                color: Colors.grey[300],
                padding: const EdgeInsets.all(10),
                child: Text(
                  questionnaireModel.footer ?? "",
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                )),
          ],
        ));
  }
}
