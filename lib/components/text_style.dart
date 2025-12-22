import 'package:flutter/widgets.dart';
import 'package:watch_store/gen/fonts.gen.dart';
import 'package:watch_store/res/colors.dart';
import 'package:watch_store/res/dimes.dart';

abstract class AppTextStyle {
  static final TextStyle title = TextStyle(
    fontFamily: FontFamily.dana,
    fontSize: AppDimes.title,
    color: AppColors.title,
    fontWeight: FontWeight.w400,
  );
  static final TextStyle hint = TextStyle(
    fontFamily: FontFamily.dana,
    fontSize: AppDimes.textFontHint,
    color: AppColors.hint,
    fontWeight: FontWeight.w300,
  );
  static final TextStyle avatar = TextStyle(
    fontFamily: FontFamily.dana,
    fontSize: AppDimes.avatar,
    color: AppColors.title,
    fontWeight: FontWeight.w300,
  );
  static final TextStyle button = TextStyle(
    fontFamily: FontFamily.dana,
    fontSize: AppDimes.button,
    color: AppColors.mainButtonText,
    fontWeight: FontWeight.w500,
  );
  static final TextStyle primaryThemeTextColor = TextStyle(
    fontFamily: FontFamily.dana,
    fontSize: AppDimes.title,
    color: AppColors.primaryColor,
    fontWeight: FontWeight.w400,
  );
  static final TextStyle oldPrice = TextStyle(
    fontFamily: FontFamily.dana,
    fontSize: AppDimes.textFontHint,
    color: AppColors.oldPrice,
    fontWeight: FontWeight.w400,
    decoration: TextDecoration.lineThrough,
  );
  // TextStyle secondaryThemeTextColor
  static final TextStyle btnNavActive = TextStyle(
    fontFamily: FontFamily.dana,
    fontSize: AppDimes.navigationAppBarTitleSize,
    color: AppColors.btmNavActiveItem,
    fontWeight: FontWeight.w400,
  );
  static final TextStyle btnNavInactive = TextStyle(
    fontFamily: FontFamily.dana,
    fontSize: AppDimes.navigationAppBarTitleSize,
    color: AppColors.btmNavInActiveItem,
    fontWeight: FontWeight.w400,
  );
}
