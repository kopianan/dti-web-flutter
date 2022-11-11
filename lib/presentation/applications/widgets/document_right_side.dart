import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dti_web/application/document/document_cubit.dart';
import 'package:dti_web/application/update_application/update_application_cubit.dart';
import 'package:dti_web/core/storage.dart';
import 'package:dti_web/core/widgets/primary_button.dart';
import 'package:dti_web/domain/core/visa_application_model.dart';
import 'package:dti_web/injection.dart';
import 'package:dti_web/utils/app_color.dart';
import 'package:dti_web/utils/constant.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RighSide extends StatefulWidget {
  const RighSide({
    Key? key,
    required this.documentCubit,
  }) : super(key: key);
  final DocumentCubit documentCubit;

  @override
  State<RighSide> createState() => _RighSideState();
}

class _RighSideState extends State<RighSide> {
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
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    ListView.builder(
                                      shrinkWrap: true,
                                      itemCount: docState
                                          .selectedDocument!.numberOfDocs,
                                      itemBuilder: (context, index) {
                                        return Column(
                                          children: [
                                            PhotoImageWidget(
                                              documentId: docState
                                                  .selectedDocument!.id!,
                                              visa: docState.visa!,
                                              shownImage: docState
                                                              .selectedDocument!
                                                              .imageList ==
                                                          null ||
                                                      docState.selectedDocument!
                                                          .imageList!.isEmpty
                                                  ? null
                                                  : docState.selectedDocument!
                                                      .imageList![index],
                                              onAddPhoto: (p0) {
                                                widget.documentCubit
                                                    .addNewPhotoDocument(
                                                        p0!.files.single.path!,
                                                        index);
                                                setState(() {});
                                              },
                                            ),
                                            20.verticalSpace
                                          ],
                                        );
                                      },
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(40),
                                      child: PrimaryButton(
                                        height: 45,
                                        width: double.infinity,
                                        onClick: () {
                                          final docs =
                                              docState.selectedDocument!;
                                          context
                                              .read<UpdateApplicationCubit>()
                                              .uploadImages(
                                                  docState.visa!, docs);
                                        },
                                        label: "Upload",
                                        labelStyle: TextStyle(fontSize: 20),
                                      ),
                                    )
                                  ],
                                ),
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
  const PhotoImageWidget({
    super.key,
    required this.onAddPhoto,
    this.shownImage,
    required this.visa,
    required this.documentId,
  });

  final Function(FilePickerResult?) onAddPhoto;
  final String? shownImage;
  final VisaApplicationModel visa;
  final String documentId;

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
                      : imageFromUrl(widget.shownImage!),
                  Positioned(
                    right: 0,
                    top: 0,
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.delete),
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

  Widget imageFromUrl(String imagePath) {
    return FutureBuilder<String>(
      future:
          getimageUrl(imagePath, widget.visa.applicationID!, widget.documentId),
      builder: (_, snp) {
        if (snp.connectionState == ConnectionState.done) {
          return InkWell(
            onTap: () {},
            child: Image.network(
              snp.data!,
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
        } else if (snp.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }
        return Image.asset(
          'assets/imgs/documentpage/upload.png',
        );
      },
    );
  }

  Future<String> getimageUrl(
      String baseName, String appId, String documentId) async {
    Storage storage = Storage();
    final result = await Dio().post('${Constant.baseUrl}/downloadURL',
        data: {"appId": appId, "docId": documentId, "nameFile": baseName},
        options: Options(
          headers: {'Authorization': 'Bearer ${storage.getToken()}'},
        ));
    return result.data['downloadUrl'];
  }
}
