import 'package:flutter/material.dart';

class CustomFAB extends StatelessWidget {
  final VoidCallback onPressed;

  const CustomFAB({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed,
      backgroundColor: Theme.of(context).primaryColor, 
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(40.0),
      ), // Use the primary color
      child: const Icon(Icons.add, color: Colors.white,size: 28,),
    );
  }
}
