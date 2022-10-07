import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather/controllers/login_controller.dart';
import 'package:weather/models/utils/app_colors.dart';
import 'package:weather/models/utils/routes/routes_names.dart';
import 'package:weather/models/widgets/auth_screen_widget/custom_text_field.dart';
import 'package:weather/models/widgets/background_image_container.dart';

import '../../../models/widgets/auth_screen_widget/custom_button.dart';

class LoginScreen extends GetView<LoginController> {
  LoginScreen({Key? key}) : super(key: key);
  final LoginController loginController = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

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
              hintText: 'Enter Your Email',
              controller: controller.emailController,
              prefiximage: Image.asset(
                'assets/images/persontextfield.png',
                height: 20,
              ),
            ),
            // Obx(
            //       ()=> PasswordTextField(
            //     hintText: 'Enter Your Password',
            //     controller: controller.passwordController,
            //     suffixImage: controller.hidePassword.value ?
            //     InkWell(
            //       onTap: ()=> controller.hidePassword.value = true,
            //       child: Icon(
            //         Icons.visibility_off,
            //         color: Colors.white,
            //       ),
            //     ) : InkWell(
            //       onTap: ()=> controller.hidePassword.value = false,
            //       child: Icon(
            //         Icons.visibility,
            //
            //         color: Colors.white,
            //       ),
            //     ),
            //     prefiximage: Image.asset(
            //       'assets/images/passwordicon.png',
            //       height: 20,
            //     ),
            //     isHide: controller.hidePassword.value,
            //   ),
            // ),
            CustomTextField(
              hintText: 'Enter Your Password',
              controller: controller.passwordController,
              prefiximage: Image.asset(
                'assets/images/passwordicon.png',
                height: 20,
              ),
            ),
            //   Padding(
            //     padding: const EdgeInsets.only(left: 100, right: 100),
            //     child: Container(
            //       child: Center(
            //         child: Text(
            //           'Login',
            //           style: Theme.of(context).textTheme.bodyText2,
            //         ),
            //       ),
            //       decoration: BoxDecoration(
            //         borderRadius: BorderRadius.circular(20),
            //         boxShadow: [
            //           BoxShadow(
            //             color: Colors.grey.withOpacity(0.5),
            //             spreadRadius: 5,
            //             blurRadius: 7,
            //             offset: Offset(0, 3), // changes position of shadow
            //           ),
            //         ],
            //         color: AppColor.primaryColor,
            //       ),
            //       height: height / 14,
            //       width: width / 1,
            //     ),
            //   ),
            InkWell(
              onTap: ()=>Navigator.pushNamed(context, RoutesNames.home),
              child: const CustomButton(
                buttonText: 'Login',
              ),
            ),
            // Padding(
            //   padding: const EdgeInsets.only(left: 50, right: 50, top: 30),
            //   child: Container(
            //     height: height/15,
            //     width: width,
            //     decoration: BoxDecoration(
            //         borderRadius: BorderRadius.circular(40),
            //         border: Border.all(color: Colors.white, width: 1)
            //     ),
            //     child: Center(child: Text("SignUp")),
            //   ),
            // ),],
            InkWell(
                onTap: () => Navigator.pushNamed(context, RoutesNames.signUp),
                child: const CustomTransparentButton(buttonText: 'Signup')),
            SizedBox(
              height: 20,
            ),
            Text("Forgot Password?"),
            SizedBox(
              height: 20,
            ),
            Text("By Pressing you agree to our"),
            SizedBox(
              height: 10,
            ),
            Text("Terms and conditions",
                style: Theme.of(context).textTheme.bodyText1),
            SizedBox(
              height: 30,
            ),
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
          ]),
    );
  }
}
