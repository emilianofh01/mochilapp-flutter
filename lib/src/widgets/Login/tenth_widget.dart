import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TentWidget extends StatefulWidget {
  TentWidget({Key? key}) : super(key: key);

  @override
  _TentWidgetState createState() => _TentWidgetState();
}

class _TentWidgetState extends State<TentWidget> {
  @override
  Widget build(BuildContext context) {
    print("Casa de camapaña repaint");
    final screenSize = MediaQuery.of(context).size;
    return Align(
      // Casa de campaña
      alignment: Alignment(2.25, -.55),
      child: AnimatedOpacity(
        duration: Duration(milliseconds: 250),
        //curve: Curves.decelerate,
        opacity: _keyboardIsVisible() ? 0 : 1,
        child: Container(
          //decoration: BoxDecoration(border: Border.all(color: Colors.red)),
          width: screenSize.width * (304 / 411),
          height: screenSize.height * (236 / 823),
          child: SvgPicture.asset('assets/svg/tent.svg'), //TentPath(),
        ),
      ),
    );
  }

  bool _keyboardIsVisible() {
    return !(MediaQuery.of(context).viewInsets.bottom == 0.0);
  }
}
