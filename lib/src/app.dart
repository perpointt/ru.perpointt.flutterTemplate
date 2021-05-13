import 'package:flutter/material.dart';
import 'package:flutter_template/src/utils/app_config.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: !AppConfig.IS_PRODUCTION,
      home: Scaffold(
        body: Center(
          child: Text('App runing in ${AppConfig.ENVIRONMENT}'),
        ),
      ),
    );
  }
}
