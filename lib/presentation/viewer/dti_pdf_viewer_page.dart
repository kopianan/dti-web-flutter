import 'package:universal_io/io.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

@RoutePage()
class DTIPdfViewerPage extends StatefulWidget {
  static const String routeName = '/dti-pdf-viewer';
  final String imageUrl;
  final bool isNetwork;

  ///Null if no bytes from web
  final Uint8List? bytesImage;
  const DTIPdfViewerPage(
      {super.key,
      required this.imageUrl,
      this.isNetwork = false,
      this.bytesImage});

  @override
  State<DTIPdfViewerPage> createState() => _DTIPdfViewerPageState();
}

class _DTIPdfViewerPageState extends State<DTIPdfViewerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                AutoRouter.of(context).pop();
              },
              icon: const Icon(Icons.close)),
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
        ),
        body: widget.isNetwork
            ? SfPdfViewer.network(widget.imageUrl)
            : (kIsWeb)
                ? SfPdfViewer.memory(widget.bytesImage!)
                : SfPdfViewer.file(File(widget.imageUrl)));
  }
}
