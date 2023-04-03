import 'package:auto_route/auto_route.dart';
import 'package:dti_web/application/document/document_cubit.dart';
import 'package:dti_web/core/widgets/primary_button.dart';
import 'package:dti_web/routes/app_router.dart';
import 'package:dti_web/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../injection.dart';

class LeftSide extends StatefulWidget {
  const LeftSide({
    Key? key,
  }) : super(key: key);

  @override
  State<LeftSide> createState() => _LeftSideState();
}

class _LeftSideState extends State<LeftSide> {
  var isLoading = false;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DocumentCubit, DocumentState>(
      bloc: getIt<DocumentCubit>(),
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
                            getIt<DocumentCubit>()
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
              BlocBuilder<DocumentCubit, DocumentState>(
                builder: (context, state) {
                  return Container(
                    width: double.infinity,
                    height: 45,
                    margin: const EdgeInsets.symmetric(vertical: 20),
                    child: state.isAllRead
                        ? PrimaryButton(
                            onClick: () {
                              EasyLoading.show(
                                  maskType: EasyLoadingMaskType.black);
                              Future.delayed(Duration(seconds: 4))
                                  .then((value) {
                                EasyLoading.dismiss();
                                //check if the apps type is passport
                                if (docState.visa!.subTitle!
                                    .toLowerCase()
                                    .contains('passport')) {
                                  AutoRouter.of(context).push(SelfieRoute());
                                } else {
                                  AutoRouter.of(context)
                                      .push(ApplicationDetailRoute(
                                    firebaseDocId:
                                        docState.visa!.firebaseDocId!,
                                  ));
                                }
                              });
                            },
                            label: "Continue",
                            labelStyle: const TextStyle(fontSize: 20),
                          )
                        : PrimaryButton(
                            onClick: () {},
                            bgColor: Colors.grey,
                            label: "Continue",
                            labelStyle: const TextStyle(fontSize: 20),
                          ),
                  );
                },
              )
            ],
          ),
        );
      },
    );
  }
}
