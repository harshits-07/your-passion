import 'package:flutter/material.dart';
import 'package:your_passion/core/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const String path = "/home-screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        backgroundColor: AppColors.primaryColor,
      ),
    );
  }
}
