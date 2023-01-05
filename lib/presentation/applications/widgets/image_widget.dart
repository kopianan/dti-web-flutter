import 'dart:io';

import 'package:dti_web/application/document/document_cubit.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget(
      {super.key,
      this.image,
      required this.index,
      required this.addNewImage,
      required this.deleteImage});
  final String? image;
  final int index;
  final Function deleteImage;
  final Function addNewImage;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DocumentCubit, DocumentState>(
      builder: (context, docState) {
        return Stack(
          children: [
            (docState.selectedDocument!.attachment != null)
                ? InkWell(
                    onTap: () async {
                      addNewImage();
                    },
                    child: Card(
                      elevation: 5,
                      clipBehavior: Clip.hardEdge,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      // color: Colors.black,
                      child: ShowPdf(
                        name: image,
                        state: docState,
                      ),
                    ),
                  )
                : InkWell(
                    onTap: () async {
                      addNewImage();
                    },
                    child: Card(
                      elevation: 5,
                      clipBehavior: Clip.hardEdge,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      // color: Colors.black,
                      child: ShowImage(
                        name: image,
                        state: docState,
                      ),
                    ),
                  ),
            (image == null)
                ? const SizedBox()
                : Container(
                    margin: const EdgeInsets.all(10),
                    child: InkWell(
                      onTap: () {
                        deleteImage();
                      },
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
}

class ShowImage extends StatelessWidget {
  const ShowImage({super.key, required this.state, required this.name});
  final DocumentState state;
  final String? name;

  InkWell imageFromFile(String imageUrl) {
    return InkWell(
      onTap: () {},
      child: kIsWeb
          ? Image.memory(
              state.selectedDataCollection![imageUrl],
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            )
          : Image.file(
              File(imageUrl),
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (name == null) {
      return Image.asset(
        'assets/imgs/documentpage/upload.png',
        fit: BoxFit.cover,
        width: double.infinity,
        height: double.infinity,
      );
    } else if (name!.contains('/')) {
      return imageFromFile(name!);
    } else {
      return Image.network(
        state.selectedMasterListData!.firstWhere(
          (element) => element.contains(name!),
        ),
        fit: BoxFit.cover,
        width: double.infinity,
        height: double.infinity,
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) {
            return child;
          }
          return Center(child: CircularProgressIndicator());
        },
      );
    }
  }
}

class ShowPdf extends StatefulWidget {
  const ShowPdf({super.key, required this.state, required this.name});
  final DocumentState state;
  final String? name;

  @override
  State<ShowPdf> createState() => _ShowPdfState();
}

class _ShowPdfState extends State<ShowPdf> {
  InkWell imageFromFile(String imageUrl) {
    return InkWell(
        onTap: () {},
        child: Image.file(
          File(imageUrl),
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.cover,
        ));
  }

  @override
  Widget build(BuildContext context) {
    if (widget.name == null) {
      return Image.asset(
        'assets/imgs/documentpage/upload.png',
        fit: BoxFit.cover,
        width: double.infinity,
        height: double.infinity,
      );
    } else if (widget.name!.contains('/')) {
      //check if image is pdf or image.
      if (widget.name!.contains('pdf')) {
        return Image.asset(
          'assets/imgs/pdf.png',
          width: double.infinity,
          fit: BoxFit.contain,
        );
      } else {
        return imageFromFile(widget.name!);
      }
    } else {
      if (widget.name!.contains('pdf')) {
        return Image.asset(
          'assets/imgs/pdf.png',
          width: double.infinity,
          fit: BoxFit.contain,
        );
      } else {
        return Image.network(
          widget.state.selectedMasterListData!.firstWhere(
            (element) => element.contains(widget.name!),
          ),
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
          loadingBuilder: (context, child, loadingProgress) {
            if (loadingProgress == null) {
              return child;
            }
            return Center(child: CircularProgressIndicator());
          },
        );
      }
    }
  }
} 



// Widget imageFromUrl(String appId, String docId, String name) {
//   return FutureBuilder(
//     future: getimageUrl(appId, docId, name),
//     builder: (_, snp) {
//       if (snp.connectionState == ConnectionState.done) {
//         if (snp.hasData) {
//           return InkWell(
//             onTap: () {},
//             child: Image.network(
//               snp.data!,
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
//         } else {
//           return Image.asset(
//             'assets/imgs/documentpage/upload.png',
//           );
//         }
//       } else if (snp.connectionState == ConnectionState.waiting) {
//         return const Center(child: CircularProgressIndicator());
//       }
//       return Image.asset('assets/imgs/documentpage/upload.png');
//     },
//   );
// }

// Future<String> getimageUrl(
//   String appId,
//   String documentId,
//   String baseName,
// ) async {
//   Storage storage = Storage();
//   final result = await Dio().post('${Constant.baseUrl}/downloadURL',
//       data: {
//         "appId": appId,
//         "docId": documentId,
//         "nameFile": baseName,
//       },
//       options: Options(
//         headers: {'Authorization': 'Bearer ${storage.getToken()}'},
//       ));
//   if (result.data['downloadUrl'] != null) {
//     return result.data['downloadUrl'];
//   } else {
//     throw Exception();
//   }
// }

  // Widget checkImageToBeShown(String appId, String docId, String? image) {
  //   if (image == null) {
  //     return Image.asset('assets/imgs/documentpage/upload.png',
  //         fit: BoxFit.cover, width: double.infinity, height: double.infinity);
  //   } else if (image.contains('/')) {
  //     return imageFromFile(widget.index, image);
  //   } else {
  //     return MyWidget(appId: appId, documentId: docId, baseName: image);
  //   }
  // }
