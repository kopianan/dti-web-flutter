import 'dart:io';
import 'dart:ui';

import 'package:auto_route/auto_route.dart';
import 'package:dti_web/application/document/document_cubit.dart';
import 'package:dti_web/core/widgets/primary_button.dart';
import 'package:dti_web/domain/core/document_data_model.dart';
import 'package:dti_web/domain/core/visa_application_model.dart';
import 'package:dti_web/presentation/applications/core/pdf_api.dart';
import 'package:dti_web/routes/app_router.dart';
import 'package:dti_web/utils/app_color.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'package:syncfusion_flutter_signaturepad/signaturepad.dart';

class SignaturePage extends StatefulWidget {
  static const String routeName = '/signature';
  const SignaturePage({
    Key? key,
    required this.visaApplication,
    required this.appDocument,
    required this.index,
  }) : super(key: key);
  final VisaApplicationModel visaApplication;
  final DocumentDataModel appDocument;
  final int index;
  @override
  _SignaturePageState createState() => _SignaturePageState();
}

class _SignaturePageState extends State<SignaturePage> {
  final GlobalKey<SfSignaturePadState> _signaturePadKey = GlobalKey();

  bool isSignatureDrawed = false;
  @override
  void initState() {
    super.initState();
  }

  Future<List<int>> generatePdfIfWeb() async {
    final file = await PdfApi.generatePdfWithoutSignatureBytes(
      visaApplication: widget.visaApplication,
      documentType: widget.appDocument.id!.trim(),
    );
    return file;
  }

  Future<File> generatePDFPreview() async {
    try {
      File _file = await PdfApi.generatePdfWithoutSignature(
        visaApplication: widget.visaApplication,
        documentType: widget.appDocument.id!.trim(),
      );

      return _file;
    } on PlatformException catch (error) {
      throw Exception(error);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.primaryColor,
        title: Text(widget.appDocument.header ?? ""),
      ),
      floatingActionButton: Align(
        alignment: Alignment.bottomCenter,
        child: FloatingActionButton.extended(
          isExtended: true,
          backgroundColor: AppColor.primaryColor,
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          label: Text("Sign Document"),
          onPressed: () async {
            await showDialog(
              context: context,
              builder: (context) {
                return Container(
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(horizontal: 100, vertical: 100),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    width: ScreenUtil().screenWidth / 2,
                    child: Column(
                      children: [
                        SizedBox(height: 20),
                        const Text(
                          "Draw your signature",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 20),
                        Container(
                          height: 280,
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.black, width: 2)),
                          width: double.infinity,
                          child: SfSignaturePad(
                            onDrawEnd: () {
                              isSignatureDrawed = true;
                            },
                            key: _signaturePadKey,
                            backgroundColor: Colors.white,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Center(
                          child: TextButton(
                            onPressed: () {
                              isSignatureDrawed = false;
                              _signaturePadKey.currentState!.clear();
                            },
                            child: Text("Clear signature"),
                          ),
                        ),
                        SizedBox(height: 20),
                        PrimaryButton(
                          onClick: () async {
                            var image =
                                await _signaturePadKey.currentState!.toImage();
                            final imageSignature = await image.toByteData(
                                format: ImageByteFormat.png);
                            late dynamic file;
                            if (kIsWeb) {
                              file = await PdfApi.generatePdfByte(
                                  signature: imageSignature!,
                                  visaApplication: widget.visaApplication,
                                  documentType: widget.appDocument.id!.trim());
                            } else {
                              file = await PdfApi.generatePdf(
                                  signature: imageSignature!,
                                  visaApplication: widget.visaApplication,
                                  documentType: widget.appDocument.id!.trim());
                            }

                            if (isSignatureDrawed == false) {
                              print(isSignatureDrawed);
                              Get.showSnackbar(
                                const GetSnackBar(
                                  message: "Please draw your signature",
                                  backgroundColor: Colors.red,
                                  borderRadius: 10,
                                  margin: EdgeInsets.all(20),
                                  snackPosition: SnackPosition.BOTTOM,
                                ),
                              );
                            } else {
                              await AutoRouter.of(context).pop();
                              await AutoRouter.of(context).pop(
                                  (kIsWeb) ? file as List<int> : file as File);
                            }
                          },
                          height: 45,
                          width: double.infinity,
                          labelStyle: TextStyle(fontSize: 16.sp),
                          label: "Generate PDF",
                        ),
                        40.verticalSpace
                      ],
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Padding(
                //   padding: const EdgeInsets.symmetric(vertical: 10),
                //   child: Text(
                //     "Statement Preview",
                //     style: const TextStyle(
                //       fontSize: 20,
                //       fontWeight: FontWeight.bold,
                //     ),
                //     textAlign: TextAlign.center,
                //   ),
                // ),
                SizedBox(
                  height: ScreenUtil().screenWidth * 2 / 3,
                  child: kIsWeb
                      ? FutureBuilder<List<int>>(
                          future: generatePdfIfWeb(),
                          builder: (context, snp) {
                            if (snp.connectionState == ConnectionState.done) {
                              return SfPdfViewer.memory(
                                Uint8List.fromList(snp.data!),
                                enableDoubleTapZooming: true,
                                pageLayoutMode: PdfPageLayoutMode.single,
                                scrollDirection: PdfScrollDirection.vertical,
                              );
                            } else if (snp.connectionState ==
                                ConnectionState.waiting) {
                              return const Center(
                                child: CircularProgressIndicator(),
                              );
                            } else {
                              return const SizedBox();
                            }
                          },
                        )
                      : FutureBuilder<File>(
                          future: generatePDFPreview(),
                          builder: (context, snp) {
                            if (snp.connectionState == ConnectionState.done) {
                              return SfPdfViewer.file(
                                snp.data!,
                                enableDoubleTapZooming: true,
                                pageLayoutMode: PdfPageLayoutMode.single,
                                scrollDirection: PdfScrollDirection.vertical,
                              );
                            } else if (snp.connectionState ==
                                ConnectionState.waiting) {
                              return const Center(
                                child: CircularProgressIndicator(),
                              );
                            } else {
                              return const SizedBox();
                            }
                          },
                        ),
                ),
              ],
            ),
            // Container(
            //   width: ScreenUtil().screenWidth / 2,
            //   child: Column(
            //     children: [
            //       SizedBox(height: 20),
            //       const Text(
            //         "Draw your signature",
            //         style: TextStyle(
            //           fontSize: 20,
            //           fontWeight: FontWeight.bold,
            //         ),
            //         textAlign: TextAlign.center,
            //       ),
            //       SizedBox(height: 20),
            //       Container(
            //         height: 280,
            //         decoration: BoxDecoration(
            //             border: Border.all(color: Colors.black, width: 2)),
            //         width: double.infinity,
            //         child: SfSignaturePad(
            //           onDrawEnd: () {
            //             isSignatureDrawed = true;
            //           },
            //           key: _signaturePadKey,
            //           backgroundColor: Colors.white,
            //         ),
            //       ),
            //       const SizedBox(
            //         height: 5,
            //       ),
            //       Center(
            //         child: TextButton(
            //           onPressed: () {
            //             isSignatureDrawed = false;
            //             _signaturePadKey.currentState!.clear();
            //           },
            //           child: Text("Clear signature"),
            //         ),
            //       ),
            //       SizedBox(height: 20),
            //       PrimaryButton(
            //         onClick: () async {
            //           var image =
            //               await _signaturePadKey.currentState!.toImage();
            //           final imageSignature =
            //               await image.toByteData(format: ImageByteFormat.png);

            //           final file = await PdfApi.generatePdf(
            //               signature: imageSignature!,
            //               visaApplication: widget.visaApplication,
            //               documentType: widget.appDocument.id!.trim());
            //           // await OpenFile.open(file.path);
            //           if (isSignatureDrawed == false) {
            //             print(isSignatureDrawed);
            //             Get.showSnackbar(
            //               const GetSnackBar(
            //                 message: "Please draw your signature",
            //                 backgroundColor: Colors.red,
            //                 borderRadius: 10,
            //                 margin: EdgeInsets.all(20),
            //                 snackPosition: SnackPosition.BOTTOM,
            //               ),
            //             );
            //           } else {
            //             await AutoRouter.of(context).pop(file);
            //           }
            //         },
            //         height: 45,
            //         width: double.infinity,
            //         labelStyle: TextStyle(fontSize: 16.sp),
            //         label: "Generate PDF",
            //       ),
            //       40.verticalSpace
            //     ],
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
