import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather/models/utils/app_colors.dart';
import 'package:weather/models/utils/routes/routes_names.dart';
import 'package:weather/views/screens/auth/login_Screen.dart';
import 'package:weather/views/screens/splash.dart';

import 'models/utils/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
       debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: AppColor.primaryColor,
        textTheme: TextTheme(
          bodyText1: TextStyle(
              color: AppColor.bodyTextColor, fontSize: 15,
          ),bodyText2: TextStyle(
              color: AppColor.whiteTextColor, fontSize: 18,
          ),

        )
      ),
      // home: SplashScreen(),
      initialRoute: RoutesNames.splash,
      onGenerateRoute: Routes.generateRoute,

    );
  }
}

