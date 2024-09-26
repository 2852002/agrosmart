import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../theme/app_theme.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
 @override
  Widget build(BuildContext context) {
    _navigateToHome();

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'AgroSmart',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
           color: AppTheme.lightTheme.primaryColor,
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  void _navigateToHome() {
    Future.delayed(const Duration(seconds: 2), () {
      Get.offAllNamed('/login'); 
    });
  }
}
