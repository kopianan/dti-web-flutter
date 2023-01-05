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
    return BlocBuilder<DocumentCubit, DocumentState>(
      bloc: documentCubit,
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
                            decoration: const BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(color: Colors.grey))),
                            child: Theme(
                              data: ThemeData(
                                disabledColor: AppColor.primaryColor,
                                focusColor: AppColor.primaryColor,
                                unselectedWidgetColor: AppColor.primaryColor,
                              ),
                              child: CheckboxListTile(
                                contentPadding:
                                    const EdgeInsets.symmetric(vertical: 5),
                                value: docState.docs!
                                    .firstWhere((element) => element.id == e.id)
                                    .isSubmited,
                                controlAffinity:
                                    ListTileControlAffinity.leading,
                                onChanged: (e) {},
                                enabled: false,
                                tileColor: docState.selectedIndex ==
                                        docState.docs!.indexOf(e)
                                    ? AppColor.primaryColor.withAlpha(200)
                                    : Colors.transparent,
                                title: Text(
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
                            ),
                            // child: Row(children: [
                            //   Expanded(
                            //     child: Text(
                            //       e.header!,
                            //       style: TextStyle(
                            //         fontSize: 16.sp,
                            //         color: docState.selectedIndex ==
                            //                 docState.docs!.indexOf(e)
                            //             ? Colors.white
                            //             : Colors.black,
                            //       ),
                            //     ),
                            //   ),
                            //   e.isSubmited == true
                            //       ? Icon(
                            //           Icons.check_box,
                            //           color: docState.selectedIndex ==
                            //                   docState.docs!.indexOf(e)
                            //               ? Colors.white
                            //               : AppColor.primaryColor,
                            //         )
                            //       : SizedBox()
                            // ]),
                          ),
                        ))
                    .toList(),
              ),
              40.verticalSpace,
              Container(
                  width: double.infinity,
                  height: 45,
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
    );
  }
}
