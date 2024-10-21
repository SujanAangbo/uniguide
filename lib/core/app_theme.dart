import 'package:flutter/material.dart';
import 'package:uniguide/core/app_colors.dart';

 _borderStyle({Color color = Colors.grey}) => OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(
        color: color.withOpacity(0.5),
      ),
    );

class AppTheme {
  static final lightTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: AppColors.scaffoldBackgroundColor,
    primaryColor: AppColors.primaryColor,
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Colors.white,
      hintStyle: TextStyle(
        fontSize: 14,
        color: AppColors.secondaryColor,
        fontWeight: FontWeight.w600,
        fontFamily: "Proxima Nova",
        letterSpacing: 0.5,
      ),
      errorBorder: _borderStyle(color: Colors.red),
      enabledBorder: _borderStyle(),
      disabledBorder: _borderStyle(),
      focusedBorder: _borderStyle(color: AppColors.primaryColor),
      border: _borderStyle(),
    ),
    textTheme: TextTheme(
      headlineLarge: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w700,
        color: AppColors.textColor,
        fontFamily: "Proxima Nova",
        letterSpacing: 1.5,
      ),
      headlineMedium: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: AppColors.textColor,
        fontFamily: "Proxima Nova",
        letterSpacing: 1.5,
      ),
      titleLarge: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w700,
        color: AppColors.textColor,
        fontFamily: "Proxima Nova",
        letterSpacing: 1.5,
      ),
      titleMedium: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w700,
        color: AppColors.textColor,
        fontFamily: "Proxima Nova",
        letterSpacing: 1.5,
      ),
      titleSmall: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: AppColors.textColor,
        fontFamily: "Proxima Nova",
        letterSpacing: 1.5,
      ),
      bodyLarge: TextStyle(
        fontSize: 14,
        color: AppColors.textColor,
        fontFamily: "Proxima Nova",
      ),
      bodyMedium: TextStyle(
        fontSize: 12,
        color: AppColors.textColor,
        fontFamily: "Proxima Nova",
      ),
    ),
  );
}
