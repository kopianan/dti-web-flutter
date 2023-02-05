import 'package:dti_web/application/application_cubit.dart';
import 'package:dti_web/application/document/document_cubit.dart';
import 'package:dti_web/application/other/other_cubit.dart';
import 'package:dti_web/injection.dart';
import 'package:dti_web/presentation/applications/widgets/document_left_side.dart';
import 'package:dti_web/presentation/applications/widgets/document_right_side.dart';
import 'package:dti_web/presentation/questionnaire/widget/custom_second_header.dart';

import 'package:dti_web/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:image_picker_web/image_picker_web.dart';

class UploadDocumentPage extends StatefulWidget {
  static const String routeName = '/upload-document';
  const UploadDocumentPage({super.key});

  @override
  State<UploadDocumentPage> createState() => _UploadDocumentPageState();
}

class _UploadDocumentPageState extends State<UploadDocumentPage> {
  final appCubit = getIt<ApplicationCubit>();
  @override
  void initState() {
    super.initState();
    //clean state first
    cleanState();
    initData();
  }

  void cleanState() {
    getIt<DocumentCubit>().cleanState();
  }

  void initData() {
    //get data from state

    final visa = context.read<ApplicationCubit>().state.visaApplicationModel;
    final masterData = context.read<ApplicationCubit>().state.masterListData;
    getIt<DocumentCubit>().setupApplication(visa!);
    getIt<DocumentCubit>().updateMasterImageData(masterData!);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => getIt<OtherCubit>(),
        child: BlocConsumer<ApplicationCubit, ApplicationState>(
          listener: (context, state) {},
          builder: (context, state) {
            return BlocConsumer<OtherCubit, OtherState>(
              listener: (context, otherState) {
                otherState.maybeMap(
                  orElse: () {
                    EasyLoading.dismiss();
                  },
                  loading: (e) {
                    EasyLoading.show(maskType: EasyLoadingMaskType.black);
                  },
                  getAllDocumentData: (e) {
                    context
                        .read<DocumentCubit>()
                        .setupApplication(state.visaApplicationModel!);
                    EasyLoading.dismiss();
                  },
                );
              },
              builder: (context, state) {
                return BlocBuilder<DocumentCubit, DocumentState>(
                  builder: (context, docState) {
                    return Row(
                      children: [
                        Expanded(
                            flex: 2,
                            child: SingleChildScrollView(
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const CustomSecondHeader(),
                                    Text(
                                      docState.visa?.title ?? "",
                                      style: TextStyle(
                                          fontSize: 30.sp,
                                          color: AppColor.primaryColor,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      docState.visa?.subTitle ?? "",
                                      maxLines: 1,
                                      style: TextStyle(
                                          fontSize: 25.sp,
                                          color: AppColor.primaryColor,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    30.verticalSpace,
                                    LeftSide(
                                        documentCubit: getIt<DocumentCubit>())
                                  ],
                                ),
                              ),
                            )),
                        Expanded(
                          flex: 3,
                          child: Stack(
                            children: [
                              Container(
                                child: Image.asset(
                                  'assets/images/bg/bg_upload.png',
                                  fit: BoxFit.cover,
                                  width: ScreenUtil().screenWidth,
                                ),
                              ),
                              Positioned(
                                right: 100.w,
                                left: 100.w,
                                top: 20,
                                bottom: 20,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white,
                                  ),
                                  // padding: EdgeInsets.symmetric(horizontal: 30.w),
                                  child: RighSide(
                                      documentCubit: getIt<DocumentCubit>()),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    );
                  },
                );
              },
            );
          },
        ),
      ),
    );
  }
}
