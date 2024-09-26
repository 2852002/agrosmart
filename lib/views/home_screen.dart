import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';
import '../widgets/navbar/bottom_nav_bar.dart';
import '../widgets/home_content.dart'; 
import 'crop_list_screen.dart';
import 'profile_screen.dart';

class HomeScreen extends StatelessWidget {
  final PageController _pageController = PageController();

  HomeScreen({super.key}); 

  @override
  Widget build(BuildContext context) {
    final homeController = Get.find<HomeController>();
     return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          homeController.updateIndex(index);
        },
        children: const [
          HomeContent(), 
          CropsScreen(), 
          ProfileScreen(),
        ],
      ),
      bottomNavigationBar: Obx(() {
        return BottomNavBar(pageController: _pageController, currentIndex: homeController.currentIndex.value);
      }), 
    );
  }
}
