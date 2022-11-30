import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dti_web/application/document/document_cubit.dart';
import 'package:dti_web/application/other/other_cubit.dart';
import 'package:dti_web/utils/constant.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/storage.dart';
import '../../../injection.dart';

class ImageWidget extends StatefulWidget {
  const ImageWidget({super.key, this.image, required this.index});
  final String? image;
  final int index;

  @override
  State<ImageWidget> createState() => _ImageWidgetState();
}

class _ImageWidgetState extends State<ImageWidget> {
  @override
  void initState() {
    print("INIT STATE");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DocumentCubit, DocumentState>(
      builder: (context, docState) {
        return Stack(
          children: [
            InkWell(
              onTap: () async {
                print("TEST");
                FilePickerResult? result = await FilePicker.platform.pickFiles(
                    allowMultiple: false,
                    type: FileType.image,
                    allowCompression: true);
                if (result != null) {
                  context.read<DocumentCubit>().addNewPhotoDocument(
                        result.files.single.path!,
                        widget.index,
                      );
                  setState(() {});
                }
              },
              child: Card(
                  clipBehavior: Clip.hardEdge,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  color: Colors.black,
                  child: checkImageToBeShown(
                    docState.visa!.applicationID!,
                    docState.selectedDocument!.id!,
                    widget.image,
                  )),
            ),
            (widget.image == null)
                ? const SizedBox()
                : Container(
                    margin: const EdgeInsets.all(10),
                    child: InkWell(
                      onTap: () {},
                      child: const CircleAvatar(
                        radius: 15,
                        backgroundColor: Colors.redAccent,
                        foregroundColor: Colors.white,
                        child: Icon(
                          Icons.delete,
                          size: 20,
                        ),
                      ),
                    ),
                  )
          ],
        );
      },
    );
  }

  Widget checkImageToBeShown(String appId, String docId, String? image) {
    if (image == null) {
      return Image.asset('assets/imgs/documentpage/upload.png',
          fit: BoxFit.cover, width: double.infinity, height: double.infinity);
    } else if (image.contains('/')) {
      return imageFromFile(widget.index, image);
    } else {
      return MyWidget(appId: appId, documentId: docId, baseName: image);
    }

    // return BlocProvider(
    //     create: (context) =>
    //         getIt<OtherCubit>()..getImageUrl(appId, docId, image),
    //     child: BlocBuilder<OtherCubit, OtherState>(
    //       builder: (context, state) {
    //         return state.maybeMap(orElse: () {
    //           return SizedBox();
    //         }, onGetImageUrl: (e) {
    //           return InkWell(
    //             onTap: () {},
    //             child: Image.network(
    //               e.url,
    //               width: double.infinity,
    //               fit: BoxFit.cover,
    //               loadingBuilder: (context, child, loadingProgress) {
    //                 if (loadingProgress == null) return child;
    //                 return const Center(
    //                   child: CircularProgressIndicator(),
    //                 );
    //               },
    //             ),
    //           );
    //         });
    //       },
    //     ));
    // if (image.contains('/')) {
    //   return imageFromFile(index, image);
    // } else {
    //   return imageFromUrl(appId, docId, image);
    // }
  }

  InkWell imageFromFile(int index, String imageUrl) {
    return InkWell(
        onTap: () {},
        child: Image.file(
          File(imageUrl),
          width: double.infinity,
          fit: BoxFit.cover,
        ));
  }
}

Widget imageFromUrl(String appId, String docId, String name) {
  return FutureBuilder(
    future: getimageUrl(appId, docId, name),
    builder: (_, snp) {
      if (snp.connectionState == ConnectionState.done) {
        if (snp.hasData) {
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
        } else {
          return Image.asset(
            'assets/imgs/documentpage/upload.png',
          );
        }
      } else if (snp.connectionState == ConnectionState.waiting) {
        return const Center(child: CircularProgressIndicator());
      }
      return Image.asset('assets/imgs/documentpage/upload.png');
    },
  );
}

Future<String> getimageUrl(
  String appId,
  String documentId,
  String baseName,
) async {
  Storage storage = Storage();
  final result = await Dio().post('${Constant.baseUrl}/downloadURL',
      data: {
        "appId": appId,
        "docId": documentId,
        "nameFile": baseName,
      },
      options: Options(
        headers: {'Authorization': 'Bearer ${storage.getToken()}'},
      ));
  print(result);
  print(appId);
  if (result.data['downloadUrl'] != null) {
    return result.data['downloadUrl'];
  } else {
    throw Exception();
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget(
      {super.key,
      required this.appId,
      required this.documentId,
      required this.baseName});
  final String appId;
  final String documentId;
  final String baseName;
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getimageUrl(appId, documentId, baseName),
      builder: (_, snp) {
        if (snp.connectionState == ConnectionState.done) {
          if (snp.hasData) {
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
          } else {
            return Image.asset(
              'assets/imgs/documentpage/upload.png',
            );
          }
        } else if (snp.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }
        return Image.asset('assets/imgs/documentpage/upload.png');
      },
    );
  }
}
