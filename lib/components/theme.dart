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
        return AppColors.focusedBorderColor;
      }
      return AppColors.unFocusedTextField;
    }),
    contentPadding: EdgeInsets.all(Dimens.meduim),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(Dimens.meduim),
      borderSide: BorderSide(color: AppColors.borderColor),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(Dimens.meduim),
      borderSide: BorderSide(color: AppColors.focusedBorderColor),
    ),
  ),
);
