import 'package:flutter/material.dart';

import '../../utils/app_colors.dart';

class CustomButton extends    StatelessWidget {
  const CustomButton({Key? key, required this.buttonText}) : super(key: key);
final String buttonText;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return  Padding(
      padding: const EdgeInsets.only(left: 100, right: 100),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
          color: AppColor.primaryColor,
        ),
        height: height / 14,
        width: width / 1,
        child: Center(
          child: Text(
            buttonText,
            style: Theme.of(context).textTheme.bodyText2,
          ),
        ),
      ),
    );

  }
}



class CustomTransparentButton extends    StatelessWidget {
  const CustomTransparentButton({Key? key, required this.buttonText}) : super(key: key);
  final String buttonText;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return  Padding(
      padding: const EdgeInsets.only(left: 50, right: 50, top: 30),
      child: Container(
        height: height/15,
        width: width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            border: Border.all(color: Colors.white, width: 1)
        ),
        child: Center(child: Text(buttonText)),
      ),
    );

  }
}
