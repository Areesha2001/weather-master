import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather/models/widgets/auth_screen_widget/custom_button.dart';
import 'package:weather/models/widgets/background_image_container.dart';

import '../../../controllers/signup_controller.dart';
import '../../../models/utils/routes/routes_names.dart';
import '../../../models/widgets/auth_screen_widget/custom_text_field.dart';

class SignUpScreen extends GetView<SignupController> {
  SignUpScreen({Key? key}) : super(key: key);
  final SignupController signupController = Get.put(SignupController());
  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.of(context).size.width;
    var height=MediaQuery.of(context).size.height;
    return BackgroundContainer(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // SizedBox(height: height/10,),
        Image.asset(
          'assets/images/logoscreen.png',
          height: 100,
        ),
        CustomTextField(
          hintText: 'Enter Your First Name',
          controller: controller.firstNameController,
          prefiximage: Image.asset(
            'assets/images/persontextfield.png',
            height: 20,
          ),
        ),
        CustomTextField(
          hintText: 'Enter Your Second Name',
          controller: controller.firstNameController,
          prefiximage: Image.asset(
            'assets/images/persontextfield.png',
            height: 20,
          ),
        ),
        CustomTextField(
          hintText: 'Enter Your Password',
          controller: controller.passwordController,
          prefiximage: Image.asset(
            'assets/images/passwordicon.png',
            height: 20,
          ),
        ),
        CustomTextField(
          hintText: 'Enter Your Password',
          controller: controller.confirmPasswordController,
          prefiximage: Image.asset(
            'assets/images/passwordicon.png',
            height: 20,
          ),
        ),
        InkWell(
            onTap: ()=>Navigator.pushNamed(context, RoutesNames.home,),
            child: CustomButton(buttonText: 'Sign Up')),
        InkWell(
          onTap: ()=> Navigator.pushNamed(context, RoutesNames.login),
            child: CustomTransparentButton(buttonText: 'Log In')),
        SizedBox(height:30,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/google.png',
              height: height / 20,
            ),
            SizedBox(
              width: 30,
            ),
            Image.asset(
              'assets/images/facebook.png',
              height: height / 20,
            ),
            SizedBox(
              width: 30,
            ),
            Image.asset(
              'assets/images/twitter.png',
              height: height / 20,
            ),
          ],
        )
      ],
    ));
  }
}
