import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final Size? screenSize;
  final Color color;
  final double? fontSize;
  final String? text;
  final void Function()? onPressed;

  ButtonWidget({
    @required this.screenSize,
    this.fontSize,
    this.text,
    this.color: Colors.green,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        width: screenSize!.width * 319 / 411,
        height: screenSize!.height * 48 / 823,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [
            BoxShadow(blurRadius: 6.0, color: Color.fromRGBO(0, 0, 0, 0.16))
          ],
        ),
        child: SizedBox(
          child: TextButton(
            style: ButtonStyle(
                overlayColor:
                    MaterialStateProperty.all(Color.fromRGBO(0, 0, 0, 0.07)),
                shape: MaterialStateProperty.all<OutlinedBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0))),
                backgroundColor: MaterialStateProperty.all<Color>(color)),
            child: Container(
              height: screenSize!.height * (17 / 823),
              //decoration: BoxDecoration(border: Border.all(color: Colors.red)),
              child: FittedBox(
                fit: BoxFit.contain,
                child: Text(
                  text!,
                  style: TextStyle(
                    color: Colors.white,
                    //fontSize: fontSize,
                  ),
                ),
              ),
            ),
            onPressed: onPressed,
          ),
        ),
      ),
    );
  }
}
