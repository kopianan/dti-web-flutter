import 'dart:io';

import 'package:dti_web/application/document/document_cubit.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ImageWidget extends StatefulWidget {
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
            (docState.selectedDocument!.attachment != null)
                ? InkWell(
                    onTap: () async {
                      widget.addNewImage();
                    },
                    child: Card(
                      clipBehavior: Clip.hardEdge,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      // color: Colors.black,
                      child: ShowPdf(
                        name: widget.image,
                        state: docState,
                      ),
                    ),
                  )
                : InkWell(
                    onTap: () async {
                      widget.addNewImage();
                    },
                    child: Card(
                      clipBehavior: Clip.hardEdge,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      // color: Colors.black,
                      child: ShowImage(
                        name: widget.image,
                        state: docState,
                      ),
                    ),
                  ),
            (widget.image == null)
                ? const SizedBox()
                : Container(
                    margin: const EdgeInsets.all(10),
                    child: InkWell(
                      onTap: () {
                        widget.deleteImage();
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

class ShowImage extends StatefulWidget {
  const ShowImage({super.key, required this.state, required this.name});
  final DocumentState state;
  final String? name;

  @override
  State<ShowImage> createState() => _ShowImageState();
}

class _ShowImageState extends State<ShowImage> {
  InkWell imageFromFile(String imageUrl) {
    return InkWell(
      onTap: () {},
      child: kIsWeb
          ? Image.memory(widget.state.selectedDataCollection![imageUrl])
          : Image.file(
              File(imageUrl),
              width: double.infinity,
              fit: BoxFit.cover,
            ),
    );
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
      return imageFromFile(widget.name!);
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