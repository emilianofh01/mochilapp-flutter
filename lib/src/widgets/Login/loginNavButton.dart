import 'package:flutter/material.dart';

class LoginNavButton extends StatelessWidget {
  final Size? screenSize;
  final String? text;
  final bool? focus;
  final void Function()? onPressed;

  LoginNavButton({
    @required this.screenSize,
    @required this.text,
    @required this.focus,
    @required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenSize!.height * (39 / 823),
      child: SizedBox(
          width: screenSize!.width * (125 / 411),
          child: TextButton(
            style: ButtonStyle(
                overlayColor: MaterialStateColor.resolveWith(
                    (states) => Colors.transparent),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)))),
            onPressed: onPressed,
            child: AnimatedDefaultTextStyle(
              duration: Duration(milliseconds: 250),
              style: focus!
                  ? TextStyle(color: Colors.white)
                  : TextStyle(color: Color.fromRGBO(158, 158, 158, 1)),
              child: Container(
                width: screenSize!.width * (81 / 411),
                height: screenSize!.height * (16 / 823),
                child: FittedBox(
                  fit: BoxFit.contain,
                  child: Text(
                    "$text",
                    style: TextStyle(fontFamily: 'MulishBold'),
                  ),
                ),
              ),
            ),
          )),
    );
  }
}
