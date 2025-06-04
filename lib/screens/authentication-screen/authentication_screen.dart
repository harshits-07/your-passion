import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:your_passion/core/colors.dart';
import 'package:your_passion/screens/home-screen/home_screen.dart';
import 'package:your_passion/widgets/custom_buttons.dart';
import 'package:your_passion/widgets/custom_fields.dart';

class AuthenticationScreen extends StatefulWidget {
  const AuthenticationScreen({super.key});

  static const String path = '/authentication-screen';

  @override
  State<AuthenticationScreen> createState() => _AuthenticationScreenState();
}

class _AuthenticationScreenState extends State<AuthenticationScreen> {
  TextEditingController userNameController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // var screenWidth = MediaQuery.of(context).size.width;
    // var screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Login Here",
                style: TextStyle(
                  color: AppColors.primaryColor,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'ManropeBold',
                ),
              ),
              SizedBox(height: 30),
              CustomFields.customTextField(
                controller: userNameController,
                context: context,
                label: "Username",
                isPassword: false,
              ),
              SizedBox(height: 15),
              CustomFields.customTextField(
                controller: passwordController,
                context: context,
                label: "Password",
                isPassword: true,
              ),
              SizedBox(height: 30),
              CustomButtons.customButton(
                title: "Login",
                onPressed: () {
                  context.push(HomeScreen.path);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
