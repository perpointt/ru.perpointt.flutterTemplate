import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_template/src/app.dart';

import 'src/utils/app_config.dart';

Future<void> main() async {
  try {
    WidgetsFlutterBinding.ensureInitialized();

    await AppConfig().load();

    runApp(App());
  } catch (e) {
    log("$e");
  }
}
