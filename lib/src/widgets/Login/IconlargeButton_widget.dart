import 'package:flutter/material.dart';
import 'package:mochilapp/src/widgets/Login/fittedTextLabel.dart';
import 'package:mochilapp/src/widgets/Login/thinButton.dart';

class IconLargeButton extends StatelessWidget {
  final Size? screenSize;
  final Widget? widgetIcon;
  final Color? backgroundColor;
  final Color? color;
  final Color? backgroundColorIcon;
  //final double? fontSize;
  final String? text;
  final double? width;
  final double? height;

  IconLargeButton({
    @required this.screenSize,
    @required this.backgroundColor,
    @required this.color,
    //@required this.fontSize,
    @required this.widgetIcon,
    @required this.text,
    this.width: 25,
    this.height: 25,
    this.backgroundColorIcon: Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 3),
                blurRadius: 6,
                color: Color.fromRGBO(0, 0, 0, .43))
          ]),
      width: screenSize!.width * (319 / 411),
      height: screenSize!.height * (50 / 823),
      child: SizedBox(
        child: TextButton(
          style: ButtonStyle(
              overlayColor:
                  MaterialStateProperty.all(Color.fromRGBO(0, 0, 0, 0.2)),
              shape: MaterialStateProperty.all<OutlinedBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0))),
              padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                  EdgeInsets.all(0))),
          onPressed: () {},
          child: Row(
            children: [
              Container(
                //decoration: BoxDecoration(color: Colors.white),
                width: screenSize!.height * 50 / 823,
                height: screenSize!.height * 50 / 823,
                child: ThinButton(
                  event: null,
                  screenSize: screenSize,
                  widgetIcon: widgetIcon,
                  backgroundColor: backgroundColorIcon,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    //color: Colors.blue,
                    borderRadius: BorderRadius.circular(10.0)),
                width: screenSize!.width * (264.89 / 411),
                child: Center(
                  child: Container(
                      height: screenSize!.height * (19 / 823),
                      child: FittedTextLabel(
                        color: color,
                        text: text,
                        width: width,
                        height: height,
                      )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
