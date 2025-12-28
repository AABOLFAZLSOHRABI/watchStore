import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:watch_store/gen/fonts.gen.dart';
import 'package:watch_store/res/colors.dart';
import 'package:watch_store/res/dimes.dart';

abstract class AppTextStyle {
  static final TextStyle title = TextStyle(
    fontFamily: FontFamily.dana,
    fontSize: AppDimes.title.sp,
    color: AppColors.title,
    fontWeight: FontWeight.w400,
  );
  static final TextStyle tagList = TextStyle(
    fontFamily: FontFamily.dana,
    fontSize: AppDimes.title.sp,
    color: AppColors.btmNavColor,
    fontWeight: FontWeight.w400,
  );
  static final TextStyle hint = TextStyle(
    fontFamily: FontFamily.dana,
    fontSize: AppDimes.textFontHint.sp,
    color: AppColors.hint,
    fontWeight: FontWeight.w300,
  );
  static final TextStyle avatar = TextStyle(
    fontFamily: FontFamily.dana,
    fontSize: AppDimes.avatar.sp,
    color: AppColors.title,
    fontWeight: FontWeight.w300,
  );
  static final TextStyle button = TextStyle(
    fontFamily: FontFamily.dana,
    fontSize: AppDimes.button.sp,
    color: AppColors.mainButtonText,
    fontWeight: FontWeight.w500,
  );
  static final TextStyle offer = TextStyle(
    fontFamily: FontFamily.dana,
    fontSize: AppDimes.avatar.sp,
    color: AppColors.mainButtonText,
    fontWeight: FontWeight.w300,
  );
  static final TextStyle amazing = TextStyle(
    fontFamily: FontFamily.dana,
    fontSize: AppDimes.amazing.sp,
    color: AppColors.amazingColor,
    fontWeight: FontWeight.w700,
  );
  static final TextStyle primaryThemeTextColor = TextStyle(
    fontFamily: FontFamily.dana,
    fontSize: AppDimes.title.sp,
    color: AppColors.primaryColor,
    fontWeight: FontWeight.w400,
  );
  static final TextStyle oldPrice = TextStyle(
    fontFamily: FontFamily.dana,
    fontSize: AppDimes.textFontHint.sp,
    color: AppColors.oldPrice,
    fontWeight: FontWeight.w400,
    decoration: TextDecoration.lineThrough,
  );
  // TextStyle secondaryThemeTextColor
  static final TextStyle btnNavActive = TextStyle(
    fontFamily: FontFamily.dana,
    fontSize: AppDimes.navigationAppBarTitleSize.sp,
    color: AppColors.btmNavActiveItem,
    fontWeight: FontWeight.w400,
  );
  static final TextStyle btnNavInactive = TextStyle(
    fontFamily: FontFamily.dana,
    fontSize: AppDimes.navigationAppBarTitleSize.sp,
    color: AppColors.btmNavInActiveItem,
    fontWeight: FontWeight.w400,
  );
}
