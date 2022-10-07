import 'package:flutter/material.dart';

class MediaQueryUse extends StatelessWidget {

  const MediaQueryUse({Key? key}) : super(key: key);

  @override

  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Container(
      height: height,
      width: width,
    );
  }
}
