import 'dart:convert';
import 'package:flutter/services.dart';

abstract class AppConfig {
  static Map<String, dynamic> _config;

  static Future<void> initialize() async {
    final configString = await rootBundle.loadString('config/app_config.json');
    _config = json.decode(configString) as Map<String, dynamic>;
  }

  static String get environment => _config['environment'];

  static bool get isProduction => _config['environment'] == "prod";
}
