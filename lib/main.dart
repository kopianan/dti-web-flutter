import 'dart:developer';
import 'dart:io';

import 'package:dti_web/app_widget.dart';
import 'package:dti_web/firebase_options.dart';
import 'package:dti_web/injection.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'package:intl/date_symbol_data_local.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(
    fileName: "dotenv",
  );
  log(dotenv.env['BASE_URL'].toString());

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  if (kIsWeb) {
    // initialiaze the facebook javascript SDK
    await FacebookAuth.i.webAndDesktopInitialize(
      appId: "1224414981412498",
      cookie: true,
      xfbml: true,
      version: "v14.0",
    );
  }
  initializeDateFormatting();

  await GetStorage.init();

  configureDependencies();

  runApp(AppWidget());
}
