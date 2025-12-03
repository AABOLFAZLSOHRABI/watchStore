import 'package:flutter/material.dart';
import 'package:watch_store/res/colors.dart';
import 'package:watch_store/res/dimens.dart';

abstract class AppButtonStyle {
  static ButtonStyle mainButtonStyle = ButtonStyle(
    backgroundColor: WidgetStatePropertyAll<Color>(AppColors.btncolor),
    foregroundColor: WidgetStatePropertyAll<Color>(AppColors.btmNavColor),
    shape: WidgetStatePropertyAll(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppDimens.mediumRadius),
      ),

    ),
  );
}
