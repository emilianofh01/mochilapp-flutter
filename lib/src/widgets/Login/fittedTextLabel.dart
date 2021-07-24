// Este widget nos permite crear texto responsivo que depende del tamaño del
// contendor

import 'package:flutter/material.dart';

class FittedTextLabel extends StatelessWidget {
  final Color? color;
  final String? text;
  final double? width;
  final double? height;

  FittedTextLabel({this.color, this.text, this.width, this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      child: FittedBox(
        fit: BoxFit.contain,
        child: Text(
          text!,
          style: TextStyle(
            color: color,
            fontFamily: 'MulishBold',
            //fontSize: fontSize,
          ),
        ),
      ),
    );
  }
}
