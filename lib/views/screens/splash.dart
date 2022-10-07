import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather/controllers/splash_controller.dart';

import '../../models/utils/app_colors.dart';

class SplashScreen extends GetView<SplashController> {
  SplashScreen({Key? key}) : super(key: key);
  final SplashController splashController = Get.put(SplashController());
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        width: width,
        height: height,
        child: Stack(
          children: [
            Positioned(
              top: height / 2.5,
              left: width / 3,
              child: Image.asset(
                'assets/images/logo.png',
                height: 100,
              ),
            ),
            Positioned(
              bottom: 10,
              right: 5,
              child: Row(
                children: [
                  Text(
                    splashController.copyright,
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5, right: 5),
                    child: Icon(
                      Icons.copyright,
                      color: AppColor.primaryColor,
                    ),
                  ),
                  Image.asset(
                    'assets/images/logom.png',
                    width: 100,
                  )
                ],
              ),
            )
          ],
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'assets/images/splash.png',
              ),
              fit: BoxFit.fill),
        ),
      ),
    );
  }
}
