import 'package:flutter/material.dart';
import 'package:mochilapp/src/pages/login_page.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    '/login': (context) => LoginPage(),
  };
}
