import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/auth_controller.dart';
import '../widgets/appbar/custom_appbar.dart';
import '../widgets/buttons/custom_button.dart';
import '../widgets/textfield/custom_text_field.dart'; 

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final AuthController authController = Get.find<AuthController>(); 
  bool _isObscure = true; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: "Login"),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomTextField(
                controller: emailController,
                hintText: "Email",
              ),
              const SizedBox(height: 16),
              CustomTextField(
                controller: passwordController,
                hintText: "Password",
                obscureText: _isObscure, 
                onToggleVisibility: () {
                  setState(() {
                    _isObscure = !_isObscure; 
                  });
                },
              ),
              const SizedBox(height: 16),
              CustomButton(
                title: "Login",
                onPressed: () {
                  authController.login(emailController.text, passwordController.text);
                },
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  "Forgot Password?",
                  style: TextStyle(color: Colors.grey), 
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
