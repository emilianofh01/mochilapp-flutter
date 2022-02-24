import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rive/rive.dart';

// class TentWidget extends StatefulWidget {
//   @override
//   _TentWidgetState createState() => _TentWidgetState();
// }

class TentWidget extends StatefulWidget {
  final bool? isDarkMode;

  TentWidget({@required this.isDarkMode});

  @override
  State<TentWidget> createState() => _TentWidgetState();
}

class _TentWidgetState extends State<TentWidget> {
  @override
  Widget build(BuildContext context) {
    print("Casa de camapaña repaint");
    final screenSize = MediaQuery.of(context).size;
    final SvgPicture tent = widget.isDarkMode!
        ? SvgPicture.asset('assets/svg/tentDark.svg')
        : SvgPicture.asset('assets/svg/tent.svg');

    return Align(
      // Casa de campaña
      alignment: Alignment(2.25, -.55),
      child: AnimatedOpacity(
        duration: Duration(milliseconds: 250),
        //curve: Curves.decelerate,
        opacity: _keyboardIsVisible(context) ? 0 : 1,
        child: Container(
          //decoration: BoxDecoration(border: Border.all(color: Colors.red)),
          width: screenSize.width * (304 / 411),
          height: screenSize.height * (236 / 823),
          child: RiveAnimation.asset("assets/vehicles.riv"), //TentPath(),
        ),
      ),
    );
  }

  bool _keyboardIsVisible(BuildContext context) {
    return !(MediaQuery.of(context).viewInsets.bottom == 0.0);
  }
}
