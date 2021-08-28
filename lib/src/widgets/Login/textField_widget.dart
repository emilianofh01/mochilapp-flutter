import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextField extends StatefulWidget {
  final Size? screenSize;
  static int widthScaling = 411;
  static int heightScaling = 823;
  final String? text;
  final Function? keyboardEvent;
  final TextInputType? textInputType;
  final void Function(String)? onChanged;
  final TextEditingController? controller;
  final bool? validation;

  bool error = false;

  CustomTextField({
    @required this.screenSize,
    @required this.text,
    @required this.keyboardEvent,
    @required this.textInputType,
    @required this.onChanged,
    this.controller,
    this.validation: true,
    this.error = false,
  });

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  FocusNode focusNode = new FocusNode();

  @override
  void initState() {
    super.initState();
    focusNode.addListener(onFocus);
  }

  @override
  void dispose() {
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      width: !focusNode.hasFocus
          ? widget.screenSize!.width * 319 / CustomTextField.widthScaling
          : widget.screenSize!.width * 337 / CustomTextField.widthScaling,
      height: !focusNode.hasFocus
          ? widget.screenSize!.height * 48 / CustomTextField.heightScaling
          : widget.screenSize!.height * 51 / CustomTextField.heightScaling,
      decoration: BoxDecoration(
          boxShadow: focusNode.hasFocus
              ? [
                  BoxShadow(
                    color: widget.validation!
                        ? Color.fromRGBO(1, 187, 107, 1)
                        : Color.fromRGBO(255, 0, 0, 1),
                    spreadRadius: 0.0,
                    blurRadius: 6.0,
                  )
                ]
              : null,
          color: Colors.white,
          borderRadius: BorderRadius.circular(5)),
      duration: Duration(milliseconds: 250),
      child: TextField(
        controller: widget.controller,
        style: TextStyle(
            fontFamily: 'MulishBold',
            fontSize: widget.screenSize!.height * (15 / 823)),
        obscureText: widget.textInputType == TextInputType.visiblePassword
            ? true
            : false,
        keyboardType: widget.textInputType,
        //textAlignVertical: TextAlignVertical.center,
        focusNode: focusNode,
        decoration: InputDecoration(
          suffixIcon: widget.error
              ? Icon(
                  Icons.info_outline,
                  color: Colors.red,
                )
              : null,
          suffixStyle: TextStyle(color: Colors.red),
          //suffix: Icon(Icons.remove_red_eye),
          hintStyle: TextStyle(
            fontFamily: 'MulishBold',
            fontSize: 15,
            color: Color.fromRGBO(181, 181, 181, 1),
          ),
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          hintText: '${widget.text}',
        ),
        onChanged: widget.onChanged,
      ),
    );
  }

  void onFocus() {
    this.setState(() {});
  }
}
