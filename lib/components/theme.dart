import 'package:flutter/material.dart';
import 'package:watch_store/res/colors.dart';
import 'package:watch_store/res/dimens.dart';

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  iconTheme: IconThemeData(color: Colors.black),
  primaryColor: AppColors.primaryColor,
  scaffoldBackgroundColor: AppColors.scaffoldBackgroundColor,

  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: WidgetStateColor.resolveWith((states) {
      if (states.contains(WidgetState.focused) ||
          states.contains(WidgetState.hovered)) {
        return AppColors.btmNavColor;
      }
      return AppColors.unFocusedTextField;
    }),
    contentPadding: EdgeInsets.all(AppDimens.mediumH),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(AppDimens.mediumH),
      borderSide: BorderSide(color: AppColors.borderColor),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(AppDimens.mediumH),
      borderSide: BorderSide(color: AppColors.focusedBorderColor),
    ),
  ),
);
