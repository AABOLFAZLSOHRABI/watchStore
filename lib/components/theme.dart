import 'package:flutter/material.dart';
import 'package:watch_store/res/colors.dart';

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  iconTheme: IconThemeData(color: Colors.black),
  primaryColor: AppColors.primaryColor,
  scaffoldBackgroundColor: AppColors.scaffoldBackgroundColor,
  
  inputDecorationTheme: InputDecorationTheme(
  filled: true,
  fillColor: WidgetStateColor.resolveWith((states) {
    if (states.contains(WidgetState.focused) || states.contains(WidgetState.hovered)) {
      return AppColors.focusedBorderColor;
    }
    return AppColors.unFocusedTextField;
  }),
),
  
);
