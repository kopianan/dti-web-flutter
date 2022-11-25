import 'dart:io';

import 'package:dti_web/domain/core/visa_application_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:syncfusion_flutter_pdf/pdf.dart';

class PdfApi {
  static Future<File> generatePdf(
      {required ByteData signature,
      required VisaApplicationModel visaApplication,
      required String documentType}) async {
    final documentPdf = PdfDocument();
    final page = documentPdf.pages.add();
    drawSignature(page, signature);
    drawText(page, documentType, visaApplication);
    return saveFile(documentPdf);
  }

  static Future<File> generatePdfWithoutSignature(
      {required VisaApplicationModel visaApplication,
      required String documentType}) async {
    final documentPdf = PdfDocument();
    final page = documentPdf.pages.add();
    drawText(page, documentType, visaApplication);
    return saveFile(documentPdf);
  }

  static Future<File> loadPdfNetwork(String url) async {
    final response = await http.get(Uri.parse(url));
    final bytes = response.bodyBytes;
    return _storeFile(url, bytes);
  }

  static Future<File> saveFile(PdfDocument document) async {
    final path = await getApplicationDocumentsDirectory();
    final fileName = '${path.path}/${DateTime.now().toIso8601String()}.pdf';
    final file = File(fileName);

    file.writeAsBytes(await document.save());
    document.dispose();
    return file;
  }

  static void drawSignature(PdfPage page, ByteData signatureImage) {
    final pageSize = page.getClientSize();
    final PdfBitmap image = PdfBitmap(signatureImage.buffer.asUint8List());

    page.graphics.drawImage(
        image,
        Rect.fromLTWH(
          pageSize.width - 500,
          pageSize.height - 190,
          100,
          40,
        ));
  }
}

Future<File> _storeFile(String url, List<int> bytes) async {
  final fileName = basename(url);
  final dir = await getApplicationDocumentsDirectory();
  final file = File('${dir.path}/$fileName');
  await file.writeAsBytes(bytes);
  return file;
}

void drawText(PdfPage page, String documentType, VisaApplicationModel visa) {
  final pageSize = page.getClientSize();

  if (documentType == "B3") {
    const _titleText = 'SURAT PERNYATAAN\nSTATEMENT LETTER';
    String _signatureText =
        '${visa.cityDomicile}, ${DateFormat('dd MMMM yyyy').format(DateTime.now())}';
    String _signatureName = '${visa.firstName} ${visa.lastName}';
    String userDetails = '''
  I, the undersigned below

  ${'Name'.padRight(40)}:\t${visa.firstName} ${visa.lastName}

  ${'Place And Date of Birth'.padRight(31)}:\t${visa.placeOfBirth}, ${visa.dateOfBirth}

  ${'Passport Number'.padRight(33)}:\t${visa.passportNumber}

  ${'Citizenship'.padRight(40)}:\t${visa.nationality}
  \n

''';
    const bodyText =
        "I hereby state that I am willing to follow the health monitoring process during the quarantine\nor isolation period and during my stay in Indonesia in accordance with health protocol and\nthe provisions of laws and regulations.\n\nI believe that the facts stated in the witness statement are true.";

    page.graphics.drawString(_titleText,
        PdfStandardFont(PdfFontFamily.helvetica, 10, style: PdfFontStyle.bold),
        format: PdfStringFormat(alignment: PdfTextAlignment.left),
        bounds: Rect.fromLTWH(
          pageSize.width / 3,
          pageSize.height - 700,
          0,
          0,
        ));
    page.graphics.drawString(
        userDetails,
        PdfStandardFont(
          PdfFontFamily.helvetica,
          12,
        ),
        format: PdfStringFormat(alignment: PdfTextAlignment.left),
        bounds: Rect.fromLTWH(
          pageSize.width - 500,
          pageSize.height - 600,
          0,
          0,
        ));
    page.graphics.drawString(
        userDetails,
        PdfStandardFont(
          PdfFontFamily.helvetica,
          12,
        ),
        format: PdfStringFormat(alignment: PdfTextAlignment.left),
        bounds: Rect.fromLTWH(
          pageSize.width - 500,
          pageSize.height - 600,
          0,
          0,
        ));
    page.graphics.drawString(
        bodyText,
        PdfStandardFont(
          PdfFontFamily.helvetica,
          12,
        ),
        format: PdfStringFormat(alignment: PdfTextAlignment.left),
        bounds: Rect.fromLTWH(
          pageSize.width - 500,
          pageSize.height - 450,
          0,
          0,
        ));

    page.graphics.drawString(
        _signatureText,
        PdfStandardFont(
          PdfFontFamily.helvetica,
          12,
        ),
        format: PdfStringFormat(alignment: PdfTextAlignment.left),
        bounds: Rect.fromLTWH(
          pageSize.width - 500,
          pageSize.height - 220,
          0,
          0,
        ));
    page.graphics.drawString(
        _signatureName,
        PdfStandardFont(
          PdfFontFamily.helvetica,
          12,
        ),
        format: PdfStringFormat(alignment: PdfTextAlignment.left),
        bounds: Rect.fromLTWH(
          pageSize.width - 500,
          pageSize.height - 140,
          0,
          0,
        ));
  } else {
    const _titleText = 'STATEMENT LETTER';
    String _signatureText =
        '${visa.cityDomicile}, ${DateFormat('dd MMMM yyyy').format(DateTime.now())}';
    String _signatureName = '${visa.firstName} ${visa.lastName}';
    String userDetails = '''
  I, the undersigned below

  ${'Name'.padRight(40)}:\t${visa.firstName} ${visa.lastName}

  ${'Place And Date of Birth'.padRight(31)}:\t${visa.placeOfBirth}, ${visa.dateOfBirth}

  ${'Passport Number'.padRight(33)}:\t${visa.passportNumber}

  ${'Citizenship'.padRight(40)}:\t${visa.nationality}
  \n

''';
    const bodyText =
        "\n\nI hereby state that I am willing to carry out quarantine and or treatment at my own\nexpense at government designated quarantine facility or health service facility if the PCR\ntest administered by the Indonesian health authorities at the port of entry gives a good\nresult, or there are clinical symptoms of Covid-19 in accordance with the health protocols\nand regulations.\n\nI believe that the facts stated in the witness statement are true.";

    page.graphics.drawString(_titleText,
        PdfStandardFont(PdfFontFamily.helvetica, 14, style: PdfFontStyle.bold),
        format: PdfStringFormat(alignment: PdfTextAlignment.left),
        bounds: Rect.fromLTWH(
          pageSize.width / 3,
          pageSize.height - 700,
          0,
          0,
        ));
    page.graphics.drawString(
        userDetails,
        PdfStandardFont(
          PdfFontFamily.helvetica,
          12,
        ),
        format: PdfStringFormat(alignment: PdfTextAlignment.left),
        bounds: Rect.fromLTWH(
          pageSize.width - 500,
          pageSize.height - 600,
          0,
          0,
        ));
    page.graphics.drawString(
        userDetails,
        PdfStandardFont(
          PdfFontFamily.helvetica,
          12,
        ),
        format: PdfStringFormat(alignment: PdfTextAlignment.left),
        bounds: Rect.fromLTWH(
          pageSize.width - 500,
          pageSize.height - 600,
          0,
          0,
        ));
    page.graphics.drawString(
        bodyText,
        PdfStandardFont(
          PdfFontFamily.helvetica,
          12,
        ),
        format: PdfStringFormat(alignment: PdfTextAlignment.left),
        bounds: Rect.fromLTWH(
          pageSize.width - 500,
          pageSize.height - 450,
          0,
          0,
        ));

    page.graphics.drawString(
        _signatureText,
        PdfStandardFont(
          PdfFontFamily.helvetica,
          12,
        ),
        format: PdfStringFormat(alignment: PdfTextAlignment.left),
        bounds: Rect.fromLTWH(
          pageSize.width - 500,
          pageSize.height - 220,
          0,
          0,
        ));
    page.graphics.drawString(
        _signatureName,
        PdfStandardFont(
          PdfFontFamily.helvetica,
          12,
        ),
        format: PdfStringFormat(alignment: PdfTextAlignment.left),
        bounds: Rect.fromLTWH(
          pageSize.width - 500,
          pageSize.height - 140,
          0,
          0,
        ));
  }
}
