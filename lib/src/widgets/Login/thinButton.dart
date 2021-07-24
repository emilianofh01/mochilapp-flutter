import 'package:flutter/material.dart';

class ThinButton extends StatelessWidget {
  final Widget? widgetIcon;
  final Size? screenSize;
  final Color? backgroundColor;
  final void Function()? event;

  ThinButton({
    this.event,
    @required this.widgetIcon,
    @required this.screenSize,
    this.backgroundColor: Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    double squareSize = screenSize!.width * 50 / 411;
    return Container(
      width: squareSize,
      height: squareSize,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [
            BoxShadow(
                spreadRadius: 0,
                blurRadius: 6,
                color: Color.fromRGBO(0, 0, 0, .16))
          ]),
      child: TextButton(
          style: ButtonStyle(
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0))),
              backgroundColor: MaterialStateProperty.all(backgroundColor)),
          onPressed: event,
          child: widgetIcon!),
    );
  }
}
