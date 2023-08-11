import 'dart:io';
import 'package:auto_route/auto_route.dart';
import 'package:camera/camera.dart';
import 'package:dti_web/application/document/document_cubit.dart';
import 'package:dti_web/application/update_application/update_application_cubit.dart';
import 'package:dti_web/core/widgets/primary_button.dart';
import 'package:dti_web/domain/core/visa_application_model.dart';
import 'package:dti_web/injection.dart';
import 'package:dti_web/presentation/questionnaire/widget/custom_second_header.dart';
import 'package:dti_web/routes/app_router.dart';
import 'package:dti_web/utils/app_color.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class SelfiePage extends StatefulWidget {
  static const String routeName = '/selfie-page';
  const SelfiePage({super.key});

  @override
  State<SelfiePage> createState() => _SelfiePageState();
}

class _SelfiePageState extends State<SelfiePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => getIt<UpdateApplicationCubit>(),
        child: BlocListener<UpdateApplicationCubit, UpdateApplicationState>(
          listener: (context, state) {
            state.maybeMap(
              orElse: () {},
              onLoading: (e) {
                EasyLoading.show(
                  maskType: EasyLoadingMaskType.black,
                );
              },
              onError: (e) {
                EasyLoading.dismiss();
              },
              onSelfieImageComplete: (e) {
                EasyLoading.dismiss();
                //TODO show flash deleted here
                // showFlash(
                //   context: context,
                //   duration: Duration(seconds: 4),
                //   builder: (context, controller) {
                //     return Flash(
                //       controller: controller,
                //       position: FlashPosition.top,
                //       backgroundColor: Colors.green,
                //       boxShadows: kElevationToShadow[4],
                //       horizontalDismissDirection:
                //           HorizontalDismissDirection.horizontal,
                //       child: FlashBar(
                //         indicatorColor: AppColor.primaryColor,
                //         content: const Text(
                //           'Document has been updated',
                //           style: TextStyle(
                //               fontSize: 20,
                //               fontWeight: FontWeight.bold,
                //               color: Colors.white),
                //         ),
                //         controller: null,
                //       ),
                //     );
                //   },
                // );
                AutoRouter.of(context).push(PassportDetailRoute(
                    firebaseDocId:
                        getIt<DocumentCubit>().state.visa!.firebaseDocId!));
              },
            );
          },
          child: BlocBuilder<UpdateApplicationCubit, UpdateApplicationState>(
            builder: (context, upState) {
              return Scaffold(
                  body: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: ScreenUtil().screenHeight,
                      padding: REdgeInsets.symmetric(
                          vertical: 10.h, horizontal: 10.w),
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
                                'Pre-selfie Page',
                                style: TextStyle(
                                    fontSize: 22.sp,
                                    color: AppColor.primaryColor,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 50.w, vertical: 20.h),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "SELFIE",
                                    style: TextStyle(
                                        fontSize: 30.sp,
                                        color: AppColor.primaryColor,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  20.verticalSpace,
                                  Expanded(
                                      child: Column(
                                    children: [
                                      const SelfieInformation(),
                                      30.verticalSpace,
                                      const Expanded(child: PhotoView()),
                                      30.verticalSpace,
                                      BlocBuilder<DocumentCubit, DocumentState>(
                                        builder: (context, docState) {
                                          return Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 20),
                                            child: UploadButton(
                                              updateCubit: context.read<
                                                  UpdateApplicationCubit>(),
                                              visa: docState.visa!,
                                            ),
                                          );
                                        },
                                      )
                                    ],
                                  ))
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(100.sp),
                      child: Image.asset(
                        'assets/images/bg/guarantor.webp',
                      ),
                    ),
                  )
                ],
              ));
            },
          ),
        ),
      ),
    );
  }
}

class PhotoView extends StatelessWidget {
  const PhotoView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DocumentCubit, DocumentState>(
      builder: (context, docState) {
        if (docState.selfie == null) {
          if (docState.visa?.selfieImage == null) {
            return Image.asset('assets/imgs/documentpage/selfie_preview.png');
          } else {
            return Image.network(getIt<DocumentCubit>()
                .getSelfiImageUrlByName(docState.visa?.selfieImage ?? ""));
          }
        } else {
          if (kIsWeb) {
            return Image.memory(docState.selfie!.values.single);
          } else {
            return Image.file(File(docState.selfie!.keys.single));
          }
        }
      },
    );
  }
}

class SelfieInformation extends StatelessWidget {
  const SelfieInformation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "To make sure user provide legitimate identity data and the ownership of corresponding data, we need you to selfie according with our terms.",
            style: TextStyle(fontSize: 18.sp),
          ),
          const SizedBox(height: 10),
          Text(
            '- Holding the ID while taking selfie photo',
            style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            '- ID submitted is eKTP for Indonesian Citizen',
            style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            '- Photo on your ID must be original',
            style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

class UploadButton extends StatelessWidget {
  const UploadButton({
    Key? key,
    required this.updateCubit,
    required this.visa,
  }) : super(key: key);
  final UpdateApplicationCubit updateCubit;
  final VisaApplicationModel visa;
  Future<FilePickerResult?> onPickDocument() async {
    final result = await FilePicker.platform.pickFiles(
      allowMultiple: false,
      type: FileType.image,
      allowCompression: true,
    );
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Row(
        children: [
          Expanded(
            child: PrimaryButton(
              bgColor: Colors.white,
              labelStyle:
                  TextStyle(fontSize: 20.sp, color: AppColor.primaryColor),
              onClick: () async {
                final file = await AutoRouter.of(context)
                    .push(const CameraRoute()) as XFile?;

                if (file != null) {
                  Uint8List? imageByte;
                  String nameOrPath = '';
                  if (kIsWeb) {
                    imageByte = await file.readAsBytes();
                    nameOrPath = file.name;
                  } else {
                    imageByte = null;
                    nameOrPath = file.path;
                  }

                  getIt<DocumentCubit>().updateSelfieImage(
                    //because on web path is always then i add this.
                    kIsWeb ? "/$nameOrPath" : nameOrPath,
                    selfieBytes: imageByte,
                  );

                  if (getIt<DocumentCubit>().state.visa!.selfieImage == null) {
                    getIt<DocumentCubit>().setDeletedSelfiePhoto(
                        getIt<DocumentCubit>().state.visa!.selfieImage);
                  }
                }
              },
              label: "Take Photo",
            ),
          ),
          20.horizontalSpace,
          BlocBuilder<DocumentCubit, DocumentState>(
            builder: (context, docState) {
              return Visibility(
                  visible: docState.selfie != null ||
                      docState.visa?.selfieImage != null,
                  child: Expanded(
                    child: PrimaryButton(
                      labelStyle: TextStyle(fontSize: 20.sp),
                      onClick: () async {
                        //check deleted images
                        if (getIt<DocumentCubit>().state.selfie == null) {
                          AutoRouter.of(context).push(PassportDetailRoute(
                              firebaseDocId: getIt<DocumentCubit>()
                                  .state
                                  .visa!
                                  .firebaseDocId!));
                        } else {
                          updateCubit.uploadSelfie(
                            visa,
                            getIt<DocumentCubit>().state.deletedSelfiePhoto ==
                                    null
                                ? []
                                : [
                                    getIt<DocumentCubit>()
                                        .state
                                        .deletedSelfiePhoto!
                                  ],
                            imageCollection:
                                getIt<DocumentCubit>().state.selfie!,
                          );
                        }
                      },
                      label: getIt<DocumentCubit>().state.deletedSelfiePhoto ==
                              null
                          ? "Next"
                          : "Upload Photo",
                    ),
                  ));
            },
          ),
        ],
      ),
    );
  }
}

// class ShowImage extends StatelessWidget {
//   const ShowImage({super.key, required this.state, this.name});
//   final DocumentState state;
//   final String? name;

//   Image imageFromFile(String imageUrl) {
//     return kIsWeb
//         ? Image.memory(
//             state.selectedDataCollection![imageUrl],
//             fit: BoxFit.cover,
//             width: double.infinity,
//             height: double.infinity,
//           )
//         : Image.file(
//             File(imageUrl),
//             width: double.infinity,
//             height: double.infinity,
//             fit: BoxFit.cover,
//           );
//   }

//   @override
//   Widget build(BuildContext context) {
//     if (name == null) {
//       return Image.asset(
//         'assets/imgs/documentpage/upload.png',
//         fit: BoxFit.cover,
//         width: double.infinity,
//         height: double.infinity,
//       );
//     } else if (name!.contains('/')) {
//       return imageFromFile(name!);
//     } else {
//       return Image.network(
//         state.selectedMasterListData!.firstWhere(
//           (element) => element.contains(name!),
//         ),
//         fit: BoxFit.cover,
//         width: double.infinity,
//         height: double.infinity,
//         loadingBuilder: (context, child, loadingProgress) {
//           if (loadingProgress == null) {
//             return child;
//           }
//           return Center(child: CircularProgressIndicator());
//         },
//       );
//     }
//   }
// }
