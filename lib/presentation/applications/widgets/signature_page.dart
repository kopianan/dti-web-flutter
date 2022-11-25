import 'dart:io';
import 'dart:ui';

import 'package:dti_web/core/widgets/primary_button.dart';
import 'package:dti_web/domain/core/document_data_model.dart';
import 'package:dti_web/domain/core/visa_application_model.dart';
import 'package:dti_web/presentation/applications/core/pdf_api.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'package:syncfusion_flutter_signaturepad/signaturepad.dart';

class SignaturePage extends StatefulWidget {
  static const String routeName = '/signature';
  const SignaturePage({
    Key? key,
    required this.visaApplication,
    required this.appDocument,
  }) : super(key: key);
  final VisaApplicationModel visaApplication;
  final DocumentDataModel appDocument;
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    "Statement PReview",
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: Get.height * 0.6,
                  child: FutureBuilder<File>(
                    future: generatePDFPreview(),
                    builder: (context, snp) {
                      if (snp.connectionState == ConnectionState.done) {
                        return SfPdfViewer.file(
                          snp.data!,
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
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    "Draw your signature",
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  height: 280,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 2)),
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
                    var image = await _signaturePadKey.currentState!.toImage();
                    final imageSignature =
                        await image.toByteData(format: ImageByteFormat.png);

                    final file = await PdfApi.generatePdf(
                        signature: imageSignature!,
                        visaApplication: widget.visaApplication,
                        documentType: widget.appDocument.id!.trim());
                    // await OpenFile.open(file.path);
                    if (isSignatureDrawed == false) {
                      Get.showSnackbar(GetSnackBar(
                        message: "Please draw your signature",
                        backgroundColor: Colors.red,
                        borderRadius: 10,
                        margin: const EdgeInsets.all(20),
                        snackPosition: SnackPosition.BOTTOM,
                      ));
                    } else {
                      Get.back(result: file, closeOverlays: true);
                    }
                  },
                  label: "Generate PDF",
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
