import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/pages/home.dart';
import 'package:flutter_application_1/src/pages/login.dart';

class Routes {
  static Map<String, Widget Function(BuildContext context)> routes =<String, WidgetBuilder>{
    "/home": (context) => Home(),
    "/login": (context) => Login()
  };

  static String initialRoute = '/home';
}
