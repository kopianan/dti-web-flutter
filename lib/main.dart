import 'package:dti_web/app_widget.dart';
import 'package:dti_web/injection.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  await GetStorage.init();

  configureDependencies();

  runApp(AppWidget());
}
