import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:watch_store/res/colors.dart';
import 'package:watch_store/res/dimes.dart';

abstract class AppButtonStyle {
  static ButtonStyle mainButtonStyle = ButtonStyle(
    backgroundColor: WidgetStatePropertyAll<Color>(AppColors.btnColor),
    foregroundColor: WidgetStatePropertyAll<Color>(AppColors.btmNavColor),
    shape: WidgetStatePropertyAll(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppDimes.mediumRadius.r),
      ),

    ),
  );
}
