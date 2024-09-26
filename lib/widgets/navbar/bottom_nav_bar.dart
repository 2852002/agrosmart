import 'package:agrosmart/controllers/crop_controller.dart';
import 'package:agrosmart/controllers/user_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controllers/home_controller.dart';

class BottomNavBar extends StatelessWidget {
  final PageController pageController; 
  final int currentIndex;

  const BottomNavBar({super.key, required this.pageController, required this.currentIndex}); 

  @override
  Widget build(BuildContext context) {
    final homeController = Get.find<HomeController>();
    final cropController = Get.find<CropController>(); 
    final userController = Get.find<UserController>(); 

    return Container(
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.transparent, 
        border: Border.all(color: Colors.grey.shade400),  
        borderRadius: BorderRadius.circular(40.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildNavItem(0, homeController), 
          _buildNavItem(1, cropController), 
          _buildNavItem(2, userController), 
        ],
      ),
    );
  }

  Widget _buildNavItem(int index, dynamic controller) {
    bool isSelected = index == currentIndex; 

    return GestureDetector(
      onTap: () {
        pageController.jumpToPage(index); 
        if (controller is CropController) {
          controller.updateCropIndex(index); 
        } else if (controller is UserController) {
          controller.updateUser('User $index'); 
        }
      },
      child: Container(
        decoration: BoxDecoration(
          color: isSelected ? Get.theme.primaryColor : Colors.grey.shade300,
          borderRadius: BorderRadius.circular(50.0), 
        ),
        width: 35, 
        height: 35, 
      ),
    );
  }
}
