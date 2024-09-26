import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText; 
  final bool obscureText;
  final VoidCallback? onToggleVisibility;

  const CustomTextField({
    super.key,
    required this.controller,
    required this.hintText, 
    this.obscureText = false, 
    this.onToggleVisibility,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: hintText, 
        hintStyle: const TextStyle(color: Colors.grey, fontSize: 16), 
        suffixIcon: onToggleVisibility != null 
            ? IconButton(
                icon: Icon(
                  obscureText ? Icons.visibility : Icons.visibility_off,
                  color: Colors.grey,
                ),
                onPressed: onToggleVisibility,
              )
            : null,
        filled: true, 
        fillColor: Colors.grey[200],
        border: OutlineInputBorder( 
          borderRadius: BorderRadius.circular(30.0), 
          borderSide: BorderSide.none, 
        ),
        focusedBorder: OutlineInputBorder( 
          borderRadius: BorderRadius.circular(30.0),
          borderSide: BorderSide.none, 
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: BorderSide.none, 
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0), 
      ),
    );
  }
}
