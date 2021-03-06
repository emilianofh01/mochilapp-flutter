import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mochilapp/src/validator/EmailValidator.dart';
import 'package:mochilapp/src/widgets/Login/textField_widget.dart';
import 'package:mochilapp/src/widgets/Login/thinButton.dart';

import 'IconlargeButton_widget.dart';
import 'button_widget.dart';
import 'loginNavButton.dart';

class LoginFields extends StatefulWidget {
  LoginFields({Key? key}) : super(key: key);

  @override
  _LoginFieldsState createState() => _LoginFieldsState();
}

class _LoginFieldsState extends State<LoginFields> {
  bool errorPassword = false;
  bool errorEmail = false;
  bool _isOnFirstOption = true;
  EmailValidator _email = new EmailValidator();
  static int widthScaling = 411;
  static int heightScaling = 823;
  TextEditingController emailController = TextEditingController();

  ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
    emailController.dispose();
  }

  String _password = "";

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Stack(children: [
      AnimatedAlign(
        alignment:
            !_keyboardIsVisible() ? Alignment(0, 0.85) : Alignment(0, 0.25),
        duration: Duration(milliseconds: 250),
        curve: Curves.easeInOutCirc,
        //Contenedor de las paginas del login
        child: Container(
          //decoration: BoxDecoration(border: Border.all(color: Colors.blue)), // Bordes de prueba
          width: 411,
          height: screenSize.height * 350 / heightScaling,
          child: GestureDetector(
            onHorizontalDragEnd: (DragEndDetails details) {
              FocusScope.of(context).requestFocus(new FocusNode());

              setState(() {
                if (!details.primaryVelocity!.isNegative) {
                  changeOptionsPage(goToSecondOption: false);
                  _isOnFirstOption = true;
                } else {
                  changeOptionsPage(goToSecondOption: true);
                  _isOnFirstOption = false;
                }
              });
            },
            child: Container(
              child: ListView(
                physics: NeverScrollableScrollPhysics(),
                scrollDirection: Axis.horizontal,
                controller: _scrollController,
                children: [
                  _firstLoginPage(screenSize),
                  _secondLoginPage(screenSize),
                ],
              ),
            ),
          ),
        ),
      ),
      AnimatedAlign(
        // Botones de navegacion de sesion
        alignment: _keyboardIsVisible() ? Alignment(0, -0.35) : Alignment(0, 0),
        duration: Duration(milliseconds: 250),
        curve: Curves.easeInOutCirc,
        child: Container(
          width: screenSize.width * (275 / 411),
          height: screenSize.height * (39 / 823),
          //decoration: BoxDecoration(border: Border.all(color: Colors.black)),
          child: Stack(
            children: [
              AnimatedAlign(
                // Barra verde del navbar
                alignment:
                    _isOnFirstOption ? Alignment(-1, 0) : Alignment(1, 0),
                duration: Duration(milliseconds: 250),
                curve: Curves.easeInOutCirc,
                child: Container(
                  width: screenSize.width * (125 / 411),
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(1, 187, 107, 1),
                      borderRadius: BorderRadius.circular(20.0)),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  LoginNavButton(
                    screenSize: screenSize,
                    text: "Iniciar sesi??n",
                    focus: _isOnFirstOption,
                    onPressed: () {
                      if (_isOnFirstOption == false) {
                        changeOptionLogin();
                      }
                      changeOptionsPage(goToSecondOption: false);
                    },
                  ),
                  LoginNavButton(
                    screenSize: screenSize,
                    text: "Reg??strate",
                    focus: !_isOnFirstOption,
                    onPressed: () {
                      if (_isOnFirstOption == true) {
                        changeOptionLogin();
                      }
                      changeOptionsPage(goToSecondOption: true);
                    },
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    ]);
  }

  Widget _firstLoginPage(Size screenSize) {
    return _loginOptionContainer(
      screenSize: screenSize,
      widgets: [
        // Botones de iniciar sesion con Google o Facebook
        Align(
          alignment: Alignment(0, 1),
          child: Container(
            //decoration: BoxDecoration(border: Border.all(color: Colors.red)),
            width: screenSize.width * 319 / widthScaling,
            height: screenSize.height * 120 / heightScaling,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: screenSize.width * (187 / 411),
                  height: screenSize.height * (19 / 823),
                  child: FittedBox(
                    fit: BoxFit.contain,
                    child: Text(
                      'Tambien puedes iniciar con',
                      style: TextStyle(
                          fontFamily: 'MulishBold',
                          //fontSize: 15,
                          color: Color.fromRGBO(158, 158, 158, 1)),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ThinButton(
                      event: () {},
                      widgetIcon: SvgPicture.asset('assets/svg/facebook.svg'),
                      screenSize: screenSize,
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    ThinButton(
                      event: () {},
                      widgetIcon: SvgPicture.asset('assets/svg/google.svg'),
                      screenSize: screenSize,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        // Campos de sesion
        Align(
          alignment: Alignment(0, -0.85),
          child: Container(
            width: screenSize.width * 337 / widthScaling,
            height: screenSize.height * 115 / heightScaling,
            //decoration: BoxDecoration(border: Border.all(color: Colors.red)), //Bordes de prueba
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomTextField(
                  onChanged: (w) {
                    setState(() {
                      _email.setValue(w);
                      errorEmail = false;
                    });
                  },
                  screenSize: screenSize,
                  text: 'Correo electronico',
                  //validation: _email.isValid(),
                  keyboardEvent: _keyboardIsVisible,
                  textInputType: TextInputType.emailAddress,
                  error: errorEmail,
                ),
                CustomTextField(
                  onChanged: (String value) {
                    setState(() {
                      _password = value;
                      errorPassword = false;
                    });
                  },
                  screenSize: screenSize,
                  text: 'Contrase??a',
                  keyboardEvent: _keyboardIsVisible,
                  textInputType: TextInputType.visiblePassword,
                  error: errorPassword,
                ),
              ],
            ),
          ),
        ),
        // Boton de iniciar sesion
        Align(
          alignment: Alignment(0, 0),
          child: ButtonWidget(
            screenSize: screenSize,
            color: Color.fromRGBO(1, 187, 107, 1),
            fontSize: 15,
            text: "Iniciar sesi??n",
            onPressed: onPressedLogIn,
          ),
        ),
      ],
    );
  }

  Widget _secondLoginPage(Size screenSize) {
    return _loginOptionContainer(
      screenSize: screenSize,
      widgets: [
        Align(
          alignment: Alignment(0, -0.95),
          child: Container(
            width: screenSize.width * (111 / 411),
            height: screenSize.height * (19 / 823),
            child: FittedBox(
              fit: BoxFit.contain,
              child: Text(
                "Registrarse con",
                style: TextStyle(
                    fontFamily: 'MulishBold',
                    color: Color.fromRGBO(181, 181, 181, 1)),
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment(0, -1),
          child: AnimatedOpacity(
            duration: Duration(milliseconds: 250),
            curve: Curves.easeInOutCirc,
            opacity: _keyboardIsVisible() ? 0 : 1,
            child: Container(
              //decoration: BoxDecoration(color: Colors.red),
              height: screenSize.height * (186 / heightScaling),
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment(0, 1),
                    child: Container(
                      //decoration: BoxDecoration(color: Colors.red),
                      width: screenSize.width * (318 / widthScaling),
                      height: screenSize.height * (19 / heightScaling),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: screenSize.width * (143 / widthScaling),
                            height: 1,
                            color: Color.fromRGBO(181, 181, 181, 1),
                          ),
                          Container(
                            width: screenSize.width * (12 / 411),
                            height: screenSize.height * (19 / 823),
                            child: FittedBox(
                              fit: BoxFit.contain,
                              child: Text(
                                'O',
                                style: TextStyle(
                                  color: Color.fromRGBO(181, 181, 181, 1),
                                  fontSize: 15,
                                  fontFamily: 'MulishBold',
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: screenSize.width * (143 / widthScaling),
                            height: 1,
                            color: Color.fromRGBO(181, 181, 181, 1),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment(0, 0),
                    child: Container(
                      width: screenSize.width * 337 / widthScaling,
                      height: screenSize.height * 115 / heightScaling,
                      //decoration: BoxDecoration(border: Border.all(color: Colors.red)), //Bordes de prueba
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          new IconLargeButton(
                            text: 'Continuar con Google',
                            screenSize: screenSize,
                            backgroundColor: Color.fromRGBO(234, 67, 53, 1),
                            color: Colors.white,
                            width: screenSize.width * (155 / 411),
                            height: screenSize.height * (19 / 823),
                            //fontSize: 15.0,
                            widgetIcon:
                                SvgPicture.asset('assets/svg/google.svg'),
                          ),
                          new IconLargeButton(
                            backgroundColorIcon:
                                Color.fromRGBO(66, 103, 178, 1),
                            text: 'Continuar con Facebook',
                            screenSize: screenSize,
                            width: screenSize.width * (174 / 411),
                            height: screenSize.height * (19 / 823),
                            backgroundColor: Color.fromRGBO(44, 87, 172, 1),
                            color: Colors.white,
                            //fontSize: 15.0,
                            widgetIcon: SvgPicture.asset(
                                'assets/svg/facebookWhite.svg'),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        AnimatedAlign(
          alignment:
              !_keyboardIsVisible() ? Alignment(0, 0.8) : Alignment(0, -0.7),
          duration: Duration(milliseconds: 250),
          curve: Curves.easeInOutCirc,
          child: Container(
            //decoration: BoxDecoration(color: Colors.red),
            width: screenSize.width * (319 / widthScaling),
            height: screenSize.height * (121 / heightScaling),
            child: Stack(
              children: [
                Align(
                  alignment: Alignment(0, 1),
                  child: ButtonWidget(
                    screenSize: screenSize,
                    text: "Continuar con correo",
                    color: Color.fromRGBO(1, 187, 107, 1),
                    fontSize: 15,
                    onPressed: () {},
                  ),
                ),
                Align(
                  alignment: Alignment(0, -1),
                  child: CustomTextField(
                      controller: emailController,
                      onChanged: (String value) {
                        _email.setValue(value);
                        setState(() {});
                      },
                      screenSize: screenSize,
                      validation: _email.isValid(),
                      text: "Correo electronico",
                      keyboardEvent: () {},
                      textInputType: TextInputType.emailAddress),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _loginOptionContainer(
      {@required Size? screenSize, @required List<Widget>? widgets}) {
    return Container(
      width: screenSize!.width,
      child: Container(
        width: screenSize.width * 337 / widthScaling,
        child: Stack(
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: widgets!,
        ),
      ),
    );
  }

  bool _keyboardIsVisible() {
    return !(MediaQuery.of(context).viewInsets.bottom == 0.0);
  }

  void changeOptionLogin() {
    setState(() {
      FocusScope.of(context).requestFocus(new FocusNode());
      _isOnFirstOption = !_isOnFirstOption;
      //print(_isOnFirstOption);
    });
  }

  void changeOptionsPage({bool? goToSecondOption}) {
    double offset = goToSecondOption!
        ? _scrollController.position.maxScrollExtent
        : _scrollController.position.minScrollExtent;
    _scrollController.animateTo(offset,
        duration: Duration(milliseconds: 250), curve: Curves.easeInOutCirc);
  }

  bool accountExist() {
    return true;
  }

  void onPressedLogIn() {
    if (this._password.length == 0) {
      setState(() {
        errorPassword = true;
      });
    }
    if (!_email.isValid()) {
      setState(() {
        errorEmail = true;
      });
    }
    if (accountExist()) {
      // LoginProvider loginProvider = new LoginProvider();
      // loginProvider.emailUserLogIn();
      //print("$_email - $_password");
    } else {
      setState(() {
        FocusScope.of(context).requestFocus(new FocusNode());
        emailController.text = _email.getValue();
        changeOptionLogin();
        changeOptionsPage(goToSecondOption: true);
      });
    }
  }
}
