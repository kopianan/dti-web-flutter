import 'dart:html' as html;
import 'dart:io';
import 'package:dti_web/application/application_cubit.dart';
import 'package:dti_web/injection.dart';
import 'package:dti_web/utils/app_color.dart';
import 'package:dti_web/utils/image_function.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker_web/image_picker_web.dart';

class UploadDocumentPage extends StatefulWidget {
  static const String routeName = '/upload-document';
  const UploadDocumentPage({super.key});

  @override
  State<UploadDocumentPage> createState() => _UploadDocumentPageState();
}

class _UploadDocumentPageState extends State<UploadDocumentPage> {
  MediaInfo? selectedImage;
  int? selectedIndex;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ApplicationCubit, ApplicationState>(
      builder: (context, state) {
        return Scaffold(
          floatingActionButton: FloatingActionButton(onPressed: () {
            print(state.documnets);
          }),
          body: BlocConsumer<ApplicationCubit, ApplicationState>(
            listener: (context, state) {
              // TODO: implement listener
            },
            builder: (context, state) {
              return Container(
                padding: REdgeInsets.symmetric(horizontal: 60.w),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Multiple Entry Duration',
                        style: TextStyle(
                            fontSize: 30.sp,
                            color: AppColor.primaryColor,
                            fontWeight: FontWeight.bold),
                      ),
                      30.verticalSpace,
                      Expanded(
                          child: Container(
                        child: Row(
                          children: [
                            Expanded(
                                child: Container(
                              child: Column(
                                children: state.documnets!
                                    .map((e) => InkWell(
                                          onTap: () {
                                            setState(() {
                                              selectedIndex =
                                                  state.documnets!.indexOf(e);
                                            });
                                          },
                                          child: Container(
                                              margin: REdgeInsets.symmetric(
                                                  vertical: 5, horizontal: 20),
                                              width: double.infinity,
                                              padding: REdgeInsets.symmetric(
                                                  horizontal: 20, vertical: 10),
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color: Colors.grey),
                                                  color: selectedIndex ==
                                                          state.documnets!
                                                              .indexOf(e)
                                                      ? Colors.grey[800]
                                                      : Colors.grey[300],
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                              child: Text(
                                                e.header!,
                                                style: TextStyle(
                                                  fontSize: 16.sp,
                                                  color: selectedIndex ==
                                                          state.documnets!
                                                              .indexOf(e)
                                                      ? Colors.white
                                                      : Colors.black,
                                                ),
                                              )),
                                        ))
                                    .toList(),
                              ),
                            )),
                            Expanded(
                                child: Container(
                              color: Color(0xff15247C).withAlpha(100),
                              child: (selectedIndex == null)
                                  ? Container()
                                  : Column(
                                      children: [
                                        Text("TES"),
                                        Expanded(
                                          child: ListView.builder(
                                            shrinkWrap: true,
                                            itemCount: state
                                                .documnets![selectedIndex!]
                                                .numberOfDocs,
                                            itemBuilder: (context, index) {
                                              final docs = state
                                                  .documnets![selectedIndex!];

                                              return Column(
                                                children: [
                                                  PhotoImageWidget(
                                                    shownImage: selectedImage ==
                                                            null
                                                        ? null
                                                        : selectedImage!.data,
                                                    onAddPhoto: (p0) {
                                                      setState(() {
                                                        selectedImage = p0;
                                                      });
                                                    },
                                                  ),
                                                  20.verticalSpace
                                                ],
                                              );
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                            ))
                          ],
                        ),
                      ))
                    ]),
              );
            },
          ),
        );
      },
    );
  }
}

class PhotoImageWidget extends StatelessWidget {
  const PhotoImageWidget(
      {super.key, required this.onAddPhoto, this.shownImage});

  final Function(MediaInfo?) onAddPhoto;
  final Uint8List? shownImage;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        var file = await ImageFunction.pickImageFile();

        if (file != null) {
          return onAddPhoto(file);
        }
        return onAddPhoto(null);
      },
      child: Container(
        width: ScreenUtil().screenWidth / 4,
        child: (shownImage == null)
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
                  Image.memory(shownImage!),
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
}
