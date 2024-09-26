import 'package:get/get.dart';

import '../views/crop_list_screen.dart';
import '../views/home_screen.dart';
import '../views/login_screen.dart';
import '../views/profile_screen.dart';
import '../views/splash.screen.dart';


class AppRoutes {
  static const String splash = '/splash';
  static const String home = '/home';
  static const String crops = '/crops';
  static const String profile = '/profile';
  static const String login = '/login'; 

  static final routes = [
    GetPage(name: splash, page: () => const SplashScreen()),
    GetPage(name: login, page: () => const LoginScreen()), 
    GetPage(name: home, page: () => HomeScreen()),
    GetPage(name: crops, page: () => const CropsScreen()),
    GetPage(name: profile, page: () => const ProfileScreen()),
  ];
}
