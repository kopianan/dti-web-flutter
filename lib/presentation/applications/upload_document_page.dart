import 'package:auto_route/auto_route.dart';
import 'package:dti_web/application/application_cubit.dart';
import 'package:dti_web/application/document/document_cubit.dart';
import 'package:dti_web/application/other/other_cubit.dart';
import 'package:dti_web/application/update_application/update_application_cubit.dart';
import 'package:dti_web/domain/core/visa_application_model.dart';
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
@RoutePage()
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
    final tempVisaApps = getIt<ApplicationCubit>().state.visaApplicationModel!;
    if (tempVisaApps.subTitle!.toLowerCase().contains('passport')) {
      updateAppsCubit.getUserPassportWithImages(tempVisaApps.firebaseDocId!);
    } else {
      updateAppsCubit.getUserApplicationWithImages(tempVisaApps.firebaseDocId!);
    }
    // initData();
  }

  void cleanState() {
    getIt<DocumentCubit>().cleanState();
  }

  void initData(
      VisaApplicationModel visa, List<Map<String, dynamic>> masterData) {
    //get data from state

    final visa = context.read<ApplicationCubit>().state.visaApplicationModel;
    final masterData = context.read<ApplicationCubit>().state.masterListData;
    getIt<DocumentCubit>().setupApplication(visa!);
    getIt<DocumentCubit>().updateMasterImageData(masterData!);
  }

  final updateAppsCubit = getIt<UpdateApplicationCubit>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => updateAppsCubit,
        child: BlocBuilder<ApplicationCubit, ApplicationState>(
          builder: (context, state) {
            return BlocListener<UpdateApplicationCubit, UpdateApplicationState>(
              bloc: updateAppsCubit,
              listener: (context, updateAppState) {
                updateAppState.maybeMap(
                  onLoading: (e) {
                    EasyLoading.show();
                  },
                  orElse: () {
                    EasyLoading.dismiss();
                  },
                  onGetSinglePassportWithImage: (value) {
                    EasyLoading.dismiss();
                    getIt<ApplicationCubit>().setupApplication(
                        value.singleResponse.visaApplicationModel!);
                    getIt<ApplicationCubit>().setupDocumentsMasterData(
                      value.singleResponse.documentUserApplicationUrl!,
                    );

                    initData(
                      getIt<ApplicationCubit>().state.visaApplicationModel!,
                      getIt<ApplicationCubit>().state.masterListData!,
                    );
                  },
                  onGetSingleApplicationWithImage: (value) {
                    EasyLoading.dismiss();
                    getIt<ApplicationCubit>().setupApplication(
                        value.singleResponse.visaApplicationModel!);
                    getIt<ApplicationCubit>().setupDocumentsMasterData(
                      value.singleResponse.documentUserApplicationUrl!,
                    );

                    initData(
                      getIt<ApplicationCubit>().state.visaApplicationModel!,
                      getIt<ApplicationCubit>().state.masterListData!,
                    );
                  },
                );
              },
              child:
                  BlocBuilder<UpdateApplicationCubit, UpdateApplicationState>(
                bloc: updateAppsCubit,
                builder: (context, state) {
                  return state.maybeMap(
                    orElse: () {
                      return Container();
                    },
                    onGetSinglePassportWithImage: (e) {
                      return const UploadDocumentCheckPage();
                    },
                    onGetSingleApplicationWithImage: (e) {
                      return const UploadDocumentCheckPage();
                    },
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}

class UploadDocumentCheckPage extends StatelessWidget {
  const UploadDocumentCheckPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DocumentCubit, DocumentState>(
      builder: (context, docState) {
        return Row(
          children: [
            Expanded(
                flex: 2,
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
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
                        const LeftSide()
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
                      child: const RighSide(),
                    ),
                  )
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
