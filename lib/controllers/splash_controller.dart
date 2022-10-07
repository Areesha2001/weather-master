import 'package:get/get.dart';
import 'package:weather/views/screens/auth/login_Screen.dart';

class SplashController extends GetxController{
  RxString copy = ''.obs;
 String copyright = 'CopyRight';
  @override
  Future <void> onInit() async {


    // TODO: implement onInit
    super.onInit();
    Future.delayed(Duration(seconds: 5), ()async {
      Get.offAll(LoginScreen());
    });
  }

}