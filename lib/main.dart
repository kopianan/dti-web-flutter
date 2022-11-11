import 'package:dti_web/app_widget.dart';
import 'package:dti_web/injection.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

import 'package:intl/date_symbol_data_local.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized(); 
  initializeDateFormatting();

  await GetStorage.init();

  configureDependencies();

  runApp(AppWidget());
}
