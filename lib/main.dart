import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mochilapp/routes/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Color.fromRGBO(242, 242, 242, 1),
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: Color.fromRGBO(242, 242, 242, 0),
      ),
    );

    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.top]);
    return MaterialApp(
      theme: ThemeData(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          hoverColor: Colors.transparent),
      debugShowCheckedModeBanner: false,
      title: 'Mochilapp',
      initialRoute: '/login',
      routes: getApplicationRoutes(),
    );
  }
}
