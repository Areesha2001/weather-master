import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {

  const CustomTextField({Key? key, required this.hintText, this.prefiximage, required this.controller}) : super(key: key);
final String hintText;
final dynamic prefiximage;
final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.all(20.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            border: Border.all(color: Colors.white, width: 1)
        ),
        // padding: EdgeInsets.only(top: 5),
        child: TextField(
          controller: controller,
          // textAlignVertical: TextAlignVertical.center,
          // textAlign: TextAlign.center,

          decoration: InputDecoration(
              hintText: hintText,
              border: InputBorder.none,
              prefixIcon: prefiximage,
          ),

        ),
      ),
    );

  }
}


class PasswordTextField extends StatelessWidget {

  const PasswordTextField({Key? key, required this.hintText, this.prefiximage, required this.controller, this.suffixImage, required this.isHide}) : super(key: key);
  final String hintText;
  final dynamic prefiximage;
  final TextEditingController controller;
  final dynamic suffixImage;
  final bool isHide;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.all(20.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            border: Border.all(color: Colors.white, width: 1)
        ),
        // padding: EdgeInsets.only(top: 5),

        child: TextField(

          controller: controller,
          obscureText: isHide,
          // textAlignVertical: TextAlignVertical.center,
          // textAlign: TextAlign.center,

          decoration: InputDecoration(

            hintText: hintText,
            border: InputBorder.none,
            prefixIcon: prefiximage,
            suffixIcon: suffixImage,
          ),

        ),
      ),
    );

  }
}