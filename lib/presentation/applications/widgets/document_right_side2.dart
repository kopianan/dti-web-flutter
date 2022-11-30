import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:dio/dio.dart';
import 'package:dti_web/application/document/document_cubit.dart';
import 'package:dti_web/application/other/other_cubit.dart';
import 'package:dti_web/application/update_application/update_application_cubit.dart';
import 'package:dti_web/core/storage.dart';
import 'package:dti_web/core/widgets/primary_button.dart';
import 'package:dti_web/domain/core/visa_application_model.dart';
import 'package:dti_web/injection.dart';
import 'package:dti_web/presentation/applications/widgets/image_widget.dart';
import 'package:dti_web/routes/app_router.dart';
import 'package:dti_web/utils/app_color.dart';
import 'package:dti_web/utils/constant.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DocumentRightSide2 extends StatefulWidget {
  const DocumentRightSide2({
    Key? key,
    required this.documentCubit,
  }) : super(key: key);
  final DocumentCubit documentCubit;

  @override
  State<DocumentRightSide2> createState() => _DocumentRightSide2State();
}

class _DocumentRightSide2State extends State<DocumentRightSide2> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocProvider(
        create: (context) => getIt<UpdateApplicationCubit>(),
        child: BlocBuilder<UpdateApplicationCubit, UpdateApplicationState>(
          builder: (context, updateState) {
            return BlocListener<UpdateApplicationCubit, UpdateApplicationState>(
                listener: (context, state) {
              state.maybeMap(
                orElse: () {},
                onLoading: (e) {
                  showDialog(
                    context: context,
                    barrierDismissible: false,
                    builder: (context) => AlertDialog(
                      content: Container(
                          height: 100,
                          width: 100,
                          child: Center(child: CircularProgressIndicator())),
                    ),
                  );
                },
                onUploadImageComplete: (e) {
                  Navigator.pop(context);
                  //UPDATE THE DOCUMENT
                  widget.documentCubit.updateDocumentStatus();
                },
              );
            }, child: BlocBuilder<DocumentCubit, DocumentState>(
              builder: (context, docState) {
                return Container(
                  color: const Color(0xff15247C).withAlpha(100),
                  child: (docState.selectedIndex == null)
                      ? Container()
                      : Column(
                          children: [
                            Container(
                              height: 150,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20.w, vertical: 10.h),
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                        flex: 3,
                                        child: Image.asset(docState
                                            .selectedDocument!.previewImage!)),
                                    Expanded(
                                        flex: 7,
                                        child: Text(
                                          docState.selectedDocument!.body!,
                                          style: TextStyle(fontSize: 15.sp),
                                        ))
                                  ]),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: GridView.builder(
                                      physics: NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      itemCount: docState
                                          .selectedDocument!.numberOfDocs,
                                      gridDelegate:
                                          const SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 2,
                                        childAspectRatio: 2 / 1,
                                        mainAxisSpacing: 10,
                                        crossAxisSpacing: 10,
                                      ),
                                      itemBuilder: (context, index) {
                                        return ImageWidget(
                                          index: index,
                                          image: docState.selectedDocument!
                                              .imageList![index],
                                        );
                                        // return PhotoImageWidget(
                                        //   documentId:
                                        //       docState.selectedDocument!.id!,
                                        //   visa: docState.visa!,
                                        //   deleteImage: (e) {
                                        //     widget.documentCubit
                                        //         .removePhotoDocument(
                                        //             e, docState.selectedIndex!);
                                        //     setState(() {});
                                        //   },
                                        //   shownImage: docState.selectedDocument!
                                        //                   .imageList ==
                                        //               null ||
                                        //           docState.selectedDocument!
                                        //               .imageList!.isEmpty
                                        //       ? null
                                        //       : docState.selectedDocument!
                                        //           .imageList![index],
                                        //   onAddPhoto: (p0) {
                                        //     widget.documentCubit
                                        //         .addNewPhotoDocument(
                                        //             p0!.files.single.path!,
                                        //             index);
                                        //     setState(() {});
                                        //   },
                                        // );
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(40),
                                    child: PrimaryButton(
                                      height: 45,
                                      width: double.infinity,
                                      onClick: () {
                                        final docs = docState.selectedDocument!;
                                        context
                                            .read<UpdateApplicationCubit>()
                                            .uploadImages(docState.visa!, docs,
                                                docState.deletedImagesName!);
                                      },
                                      label: "Update",
                                      labelStyle: TextStyle(fontSize: 20),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                );
              },
            ));
          },
        ),
      ),
    );
  }
}

// "https://firebasestorage.googleapis.com/v0/b/doortoid-mobile.appspot.com/o/applications%2FM2g51a7LATaAqEvzHYSBOvdDgPE2%2FV20221109-EXNC8IT6JIG%2FA2%2F1668006266636?alt=media&token=93278b24-fb34-4836-bda5-f1067666b364"
class PhotoImageWidget extends StatefulWidget {
  const PhotoImageWidget(
      {super.key,
      required this.onAddPhoto,
      this.shownImage,
      required this.visa,
      required this.documentId,
      required this.deleteImage});

  final Function(FilePickerResult?) onAddPhoto;
  final String? shownImage;
  final VisaApplicationModel visa;
  final String documentId;
  final Function(String) deleteImage;

  @override
  State<PhotoImageWidget> createState() => _PhotoImageWidgetState();
}

class _PhotoImageWidgetState extends State<PhotoImageWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        FilePickerResult? result = await FilePicker.platform.pickFiles(
            allowMultiple: false, type: FileType.image, allowCompression: true);
        if (result != null) {
          return widget.onAddPhoto(result);
        }
      },
      child: Container(
        width: ScreenUtil().screenWidth / 4,
        child: (widget.shownImage == null)
            ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/icons/upload_image.png'),
                  10.horizontalSpace,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Upload Passport Cover",
                        style: TextStyle(
                            fontSize: 14.sp,
                            color: AppColor.primaryColor,
                            fontWeight: FontWeight.w600),
                      ),
                      5.verticalSpace,
                      Text(
                        "Drop your file here or browse",
                        style: TextStyle(
                            color: AppColor.primaryColor,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w100),
                      ),
                    ],
                  )
                ],
              )
            : Stack(
                children: [
                  (widget.shownImage!.contains('/'))
                      ? Image.memory(File(widget.shownImage!).readAsBytesSync())
                      : ImageFromUrl(
                          imagePath: widget.shownImage!,
                          appId: widget.visa.applicationID!,
                          docId: widget.documentId),
                  Positioned(
                    right: 0,
                    top: 0,
                    child: IconButton(
                      onPressed: () {
                        widget.deleteImage(widget.shownImage!);
                      },
                      icon: const Icon(
                        Icons.delete,
                        color: Colors.red,
                      ),
                    ),
                  )
                ],
              ),
        decoration: BoxDecoration(
            border: Border.all(color: Color(0xff15247C)),
            borderRadius: BorderRadius.circular(10)),
      ),
    );
  }

  // Widget imageFromUrl(String imagePath) {
  //   return FutureBuilder<String>(
  //     future:
  //         getimageUrl(imagePath, widget.visa.applicationID!, widget.documentId),
  //     builder: (_, snp) {
  //       if (snp.connectionState == ConnectionState.done) {
  //         return InkWell(
  //           onTap: () {},
  //           child: Image.network(
  //             snp.data!,
  //             width: double.infinity,
  //             fit: BoxFit.cover,
  //             loadingBuilder: (context, child, loadingProgress) {
  //               if (loadingProgress == null) return child;
  //               return const Center(
  //                 child: CircularProgressIndicator(),
  //               );
  //             },
  //           ),
  //         );
  //       } else if (snp.connectionState == ConnectionState.waiting) {
  //         return const Center(child: CircularProgressIndicator());
  //       }
  //       return Image.asset(
  //         'assets/imgs/documentpage/upload.png',
  //       );
  //     },
  //   );
  // }

  Future<String> getimageUrl(
    String baseName,
    String appId,
    String documentId,
  ) async {
    Storage storage = Storage();
    final result = await Dio().post('${Constant.baseUrl}/downloadURL',
        data: {"appId": appId, "docId": documentId, "nameFile": baseName},
        options: Options(
          headers: {'Authorization': 'Bearer ${storage.getToken()}'},
        ));
    print(result);
    return result.data['downloadUrl'];
  }
}

class ImageFromUrl extends StatelessWidget {
  const ImageFromUrl(
      {super.key,
      required this.imagePath,
      required this.appId,
      required this.docId});
  final String imagePath;
  final String appId;
  final String docId;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<OtherCubit>()..getImageUrl(appId, docId, imagePath),
      child: BlocBuilder<OtherCubit, OtherState>(
        builder: (context, state) {
          print(state);
          return state.maybeMap(
            orElse: () {
              return SizedBox();
            },
            onGetImageUrl: (value) => Image.network(
              value.url,
              width: double.infinity,
              fit: BoxFit.cover,
              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress == null) return child;
                return const Center(
                  child: CircularProgressIndicator(),
                );
              },
            ),
          );
        },
      ),
    );

    // FutureBuilder<String>(
    //   future: getimageUrl(imagePath, appId, docId),
    //   builder: (_, snp) {
    //     if (snp.connectionState == ConnectionState.done) {
    //     } else if (snp.connectionState == ConnectionState.waiting) {
    //       return const Center(child: CircularProgressIndicator());
    //     }
    //     return Image.asset(
    //       'assets/imgs/documentpage/upload.png',
    //     );
    //   },
    // );
  }
}
   // ListView.builder(
                                  //   shrinkWrap: true,
                                  //   itemCount: docState
                                  //       .selectedDocument!.numberOfDocs,
                                  //   itemBuilder: (context, index) {
                                  //     return Column(
                                  //       children: [
                                  //         (docState.selectedDocument!
                                  //                     .attachment !=
                                  //                 null)
                                  //             ? InkWell(
                                  //                 onTap: () {
                                  //                   AwesomeDialog(
                                  //                     context: context,
                                  //                     title: "Choose Action",
                                  //                     body: Text(
                                  //                         "Select action "),
                                  //                     btnOkText:
                                  //                         "Upload document",
                                  //                     btnCancelText:
                                  //                         "Sign Document",
                                  //                     btnOkOnPress: () {},
                                  //                     btnCancelOnPress: () {
                                  //                       AutoRouter.of(context)
                                  //                           .push(SignatureRoute(
                                  //                               visaApplication:
                                  //                                   docState
                                  //                                       .visa!,
                                  //                               appDocument:
                                  //                                   docState
                                  //                                       .selectedDocument!));
                                  //                     },
                                  //                   ).show();
                                  //                 },
                                  //                 child: Container(
                                  //                   width: 100,
                                  //                   height: 100,
                                  //                   color: Colors.green,
                                  //                 ),
                                  //               )
                                  //             : PhotoImageWidget(
                                  //                 documentId: docState
                                  //                     .selectedDocument!.id!,
                                  //                 visa: docState.visa!,
                                  //                 deleteImage: (e) {
                                  //                   widget.documentCubit
                                  //                       .removePhotoDocument(
                                  //                           e,
                                  //                           docState
                                  //                               .selectedIndex!);
                                  //                   setState(() {});
                                  //                 },
                                  //                 shownImage: docState
                                  //                                 .selectedDocument!
                                  //                                 .imageList ==
                                  //                             null ||
                                  //                         docState
                                  //                             .selectedDocument!
                                  //                             .imageList!
                                  //                             .isEmpty
                                  //                     ? null
                                  //                     : docState
                                  //                         .selectedDocument!
                                  //                         .imageList![index],
                                  //                 onAddPhoto: (p0) {
                                  //                   widget.documentCubit
                                  //                       .addNewPhotoDocument(
                                  //                           p0!.files.single
                                  //                               .path!,
                                  //                           index);
                                  //                   setState(() {});
                                  //                 },
                                  //               ),
                                  //         20.verticalSpace
                                  //       ],
                                  //     );
                                  //   },
                                  // ),