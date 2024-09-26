import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title; 
  const CustomAppBar({super.key, required this.title});
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white, 
      title: Text(
        title,
        style: const TextStyle(color: Colors.black, fontSize: 24,fontWeight: FontWeight.w500), 
      ),
      elevation: 0, 
    );
  }
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight); 
}

class HomeCustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeCustomAppBar({super.key});
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white, 
      title: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.circular(50.0), 
            ),
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
          ),
          const SizedBox(width: 5),
          const Text(
            "AgroSmart",
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
        ],
      ),
    );
  }
}

