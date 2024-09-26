import 'package:get/get.dart';

class AuthController extends GetxController {
  var isLoggedIn = false.obs;
  Future<void> login(String email, String password) async {
    await Future.delayed(const Duration(seconds: 1));
    if (email == "test@gmail.com" && password == "123456") {
      isLoggedIn.value = true; 
      Get.offAllNamed('/home'); 
    } else {
      isLoggedIn.value = false; 
      Get.snackbar("Login Failed", "Incorrect email or password.");
    }
  }
  void logout() {
    isLoggedIn.value = false; 
    Get.offAllNamed('/splash'); 
  }
}
