import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class DTIPdfViewerPage extends StatelessWidget {
  static const String routeName = '/dti-pdf-viewer';
  final String imageUrl;
  final bool isNetwork;

  const DTIPdfViewerPage({
    super.key,
    required this.imageUrl,
    this.isNetwork = false,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                AutoRouter.of(context).pop();
              },
              icon: Icon(Icons.close)),
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
        ),
        body: isNetwork
            ? SfPdfViewer.network(
                imageUrl,
              )
            : SfPdfViewer.file(File(imageUrl)));
  }
}
  