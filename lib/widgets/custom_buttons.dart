import 'package:flutter/material.dart';
import 'package:your_passion/core/colors.dart';

class CustomButtons {
  static customButton({
    required String title,
    required VoidCallback onPressed,
  }) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primaryColor,
        foregroundColor: AppColors.backgroundColor,

        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
      ),
      child: Text(title, style: TextStyle(fontSize: 18)),
    );
  }
}
