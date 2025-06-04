import 'package:flutter/material.dart';
import 'package:your_passion/core/colors.dart';

class CustomFields {
  static customTextField({
    required TextEditingController controller,
    required BuildContext context,
    String? label,
    bool? isPassword,
    TextInputType? keyboardType,
  }) {
    // var screenWidth = MediaQuery.of(context).size.width;
    // var screenHeight = MediaQuery.of(context).size.height;
    return TextField(
      controller: controller,
      obscureText: isPassword ?? false,
      keyboardType: keyboardType ?? TextInputType.text,
      decoration: InputDecoration(
        labelText: label,
        contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: BorderSide(color: AppColors.secondaryColor, width: 1.2),
        ),
        labelStyle: TextStyle(color: AppColors.primaryColor),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: BorderSide(color: AppColors.secondaryColor, width: 1.2),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: BorderSide(color: AppColors.primaryColor, width: 2.0),
        ),
      ),
    );
  }
}
