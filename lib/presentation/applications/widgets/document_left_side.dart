import 'package:auto_route/auto_route.dart';
import 'package:dti_web/application/application_cubit.dart';
import 'package:dti_web/application/document/document_cubit.dart';
import 'package:dti_web/core/widgets/primary_button.dart';
import 'package:dti_web/routes/app_router.dart';
import 'package:dti_web/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LeftSide extends StatelessWidget {
  const LeftSide({
    Key? key,
    required this.documentCubit,
  }) : super(key: key);
  final DocumentCubit documentCubit;
  @override
  Widget build(BuildContext context) {
    return Expanded(child: BlocBuilder<DocumentCubit, DocumentState>(
      builder: (context, docState) {
        return Container(
          width: double.infinity,
          margin: REdgeInsets.symmetric(vertical: 5, horizontal: 20),
          child: Column(
            children: [
              Column(
                children: docState.docs!
                    .map((e) => InkWell(
                          onTap: () {
                            documentCubit
                                .updateSelectedIndex(docState.docs!.indexOf(e));
                          },
                          child: Container(
                              margin: REdgeInsets.symmetric(vertical: 5),
                              padding: REdgeInsets.symmetric(
                                  horizontal: 20, vertical: 10),
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  color: docState.selectedIndex ==
                                          docState.docs!.indexOf(e)
                                      ? AppColor.primaryColor.withAlpha(200)
                                      : Colors.grey[300],
                                  borderRadius: BorderRadius.circular(10)),
                              child: Row(children: [
                                Expanded(
                                  child: Text(
                                    e.header!,
                                    style: TextStyle(
                                      fontSize: 16.sp,
                                      color: docState.selectedIndex ==
                                              docState.docs!.indexOf(e)
                                          ? Colors.white
                                          : Colors.black,
                                    ),
                                  ),
                                ),
                                e.isSubmited == true
                                    ? Icon(
                                        Icons.check_box,
                                        color: docState.selectedIndex ==
                                                docState.docs!.indexOf(e)
                                            ? Colors.white
                                            : AppColor.primaryColor,
                                      )
                                    : SizedBox()
                              ])),
                        ))
                    .toList(),
              ),
              Container(
                  width: double.infinity,
                  height: 40,
                  margin: EdgeInsets.symmetric(vertical: 20),
                  child: PrimaryButton(
                    onClick: () {
                      AutoRouter.of(context).push(ApplicationDetailRoute(
                        firebaseDocId: docState.visa!.firebaseDocId!,
                      ));
                    },
                    label: "Submit",
                    labelStyle: TextStyle(fontSize: 20),
                  ))
            ],
          ),
        );
      },
    ));
  }
}
