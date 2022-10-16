import 'dart:html' as html;
import 'dart:io';
import 'dart:typed_data';

import 'package:image_picker_web/image_picker_web.dart';

class ImageFunction {
  static Future<Uint8List?> pickMedia() async {
    // ignore: deprecated_member_use
    final pickedFile = await ImagePickerWeb.getImageAsBytes();

    if (pickedFile == null) return null;

    return pickedFile;
  }

  static Future<MediaInfo?> pickImageFile() async {
    // ignore: deprecated_member_use
    final pickedFile = await ImagePickerWeb.getImageInfo;

    if (pickedFile == null) return null;

    return pickedFile;
  }
}
