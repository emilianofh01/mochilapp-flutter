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
    // SystemChrome.setSystemUIOverlayStyle(
    //   SystemUiOverlayStyle(
    //     statusBarColor: Color.fromRGBO(242, 242, 242, 1),
    //     statusBarIconBrightness: Brightness.dark,
    //     systemNavigationBarColor: Color.fromRGBO(242, 242, 242, 1),
    //     systemNavigationBarIconBrightness: Brightness.light,
    //     //systemNavigationBarContrastEnforced: true,
    //   ),
    // );

    //SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    ThemeData _light = ThemeData.light().copyWith(
      scaffoldBackgroundColor: Color.fromRGBO(242, 242, 242, 1),
      textTheme: TextTheme(
        headline1: TextStyle(
          color: Color.fromRGBO(51, 50, 50, 1),
        ),
      ),
      hintColor: Color.fromRGBO(42, 42, 42, 1),
      inputDecorationTheme: InputDecorationTheme(
        fillColor: Colors.white,
        hintStyle: TextStyle(
          color: Color.fromRGBO(181, 181, 181, 1),
        ),
      ),
    );

    ThemeData _dark = ThemeData.dark().copyWith(
      scaffoldBackgroundColor: Color.fromRGBO(29, 29, 29, 1),
      textTheme: TextTheme(
        headline1: TextStyle(
          color: Colors.white,
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        fillColor: Color.fromRGBO(42, 42, 42, 1),
        hintStyle: TextStyle(
          color: Color.fromRGBO(181, 181, 181, 1),
        ),
      ),
      hintColor: Colors.white,
    ); //181

    return MaterialApp(
      // theme: ThemeData(
      //   splashColor: Colors.transparent,
      //   highlightColor: Colors.transparent,
      //   hoverColor: Colors.transparent,
      // ),
      theme: _light,
      darkTheme: _dark,
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      title: 'Mochilapp',
      initialRoute: '/login',
      routes: getApplicationRoutes(),
    );
  }
}
