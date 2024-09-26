import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controllers/auth_controller.dart';
import 'theme/app_theme.dart';
import 'routes/app_routes.dart';
import 'controllers/home_controller.dart';
import 'controllers/crop_controller.dart';
import 'controllers/user_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AgroSmart',
      theme: AppTheme.lightTheme,
      initialRoute: AppRoutes.splash,
      getPages: AppRoutes.routes,
      initialBinding: BindingsBuilder(() {
         Get.put(AuthController()); 
        Get.put(HomeController());
        Get.put(CropController());
        Get.put(UserController());
      }),
    );
  }
}

