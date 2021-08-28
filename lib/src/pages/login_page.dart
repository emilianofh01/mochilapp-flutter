import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mochilapp/src/widgets/Login/LoginFields_widget.dart';
import 'package:mochilapp/src/widgets/Login/tenth_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  Brightness brightness = Brightness.light;
  bool isDarkMode = false;

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    this.brightness = MediaQuery.of(context).platformBrightness;
    this.isDarkMode = brightness == Brightness.dark;

    checkDarkMode(context);

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());
        //SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive, overlays: [SystemUiOverlay.top]);
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: isDarkMode
            ? Color.fromRGBO(36, 36, 36, 1)
            : Color.fromRGBO(242, 242, 242, 1),
        body: Stack(children: [
          TentWidget(),
          LoginFields(),
          Align(
            // Titulo de bienvenida
            alignment: Alignment.topLeft,
            child: Container(
              margin: EdgeInsets.only(
                  top: screenSize.height * .06, left: screenSize.width * .06),
              width: screenSize.width * (290 / 411),
              height: screenSize.height * (150 / 823),
              child: FittedBox(
                fit: BoxFit.fitWidth,
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(
                        color: Color.fromRGBO(51, 50, 50, 1),
                        //fontSize: 44,
                        fontFamily: 'MulishRegular'),
                    children: [
                      TextSpan(
                        text: 'Inicia tu \naventura con \n',
                      ),
                      TextSpan(
                        text: 'Mochilapp',
                        style: TextStyle(
                          fontFamily: 'MulishBold',
                          // Borrar esto despues
                          /*backgroundColor: Color.fromRGBO(51, 50, 50, 1),*/
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }

  void checkDarkMode(BuildContext context) {
    //print(brightness);
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: isDarkMode
            ? Color.fromRGBO(242, 242, 242, 0) // Dark Mode
            : Color.fromRGBO(242, 242, 242, 1),
        statusBarIconBrightness:
            isDarkMode ? Brightness.light : Brightness.dark,
        systemNavigationBarColor: isDarkMode
            ? Color.fromRGBO(36, 36, 36, 1) //Dark Mode
            : Color.fromRGBO(242, 242, 242, 1),
        systemNavigationBarIconBrightness:
            isDarkMode ? Brightness.light : Brightness.dark,
        //systemNavigationBarContrastEnforced: true,
      ),
    );
  }
}
