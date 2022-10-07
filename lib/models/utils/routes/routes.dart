import 'package:flutter/material.dart';
import 'package:weather/models/utils/routes/routes_names.dart';
import 'package:weather/views/screens/auth/login_Screen.dart';
import 'package:weather/views/screens/auth/signup_screen.dart';
import 'package:weather/views/screens/splash.dart';

import '../../../views/screens/home_Screen.dart';

class Routes{
  //settings accept string parameter
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesNames.signUp:
        return MaterialPageRoute(
            builder: (BuildContext context) =>  SignUpScreen());

      case RoutesNames.splash:
        return MaterialPageRoute(
            builder: (BuildContext context) =>  SplashScreen());
        case RoutesNames.login:
        return MaterialPageRoute(
            builder: (BuildContext context) =>  LoginScreen());
      case RoutesNames.home:
        return MaterialPageRoute(
            builder: (BuildContext context) =>  Homescreen());
      default:
        return MaterialPageRoute(
            builder: (BuildContext context) => const
            Scaffold(
        body: Center(
        child: Text("No route defined"),
    ),
    ));
  }
  }
}