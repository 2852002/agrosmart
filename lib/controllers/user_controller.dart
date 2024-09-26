import 'package:get/get.dart';

class UserController extends GetxController {
  var currentUser = ''.obs; 
  void updateUser(String user) {
    currentUser.value = user;
  }
}
