import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class AppDimes {
  // مقادیر پایه (طراحی فیگما)
  static const double _small = 8;
  static const double _medium = 12;
  static const double _large = 24;
  // TEXT Field size
  static double get textFieldHeight => 42.h;
  static double get textFieldWidth => 260.w;

  /// text size font
  static double get title => 14.sp;
  static double get avatar => 11.sp;
  static double get button => 15.sp;

  // text file hint size font
  static double get textFontHint => 11.sp;

  // Button Size
  static double get buttonHeight => 42.h;
  static double get buttonWidth => 260.w;

  // فاصله افقی (عرض)
  static double get smallW => _small.w;
  static double get mediumW => _medium.w;
  static double get largeW => _large.w;

  // فاصله عمودی (ارتفاع)
  static double get smallH => _small.h;
  static double get mediumH => _medium.h;
  static double get largeH => _large.h;

  // گرد کردن گوشه‌ها
  static double get smallRadius => _small.r;
  static double get mediumRadius => _medium.r;
  static double get largeRadius => _large.r;

  // Logo size
  static double logoSizeLargeHeight = 121.h;
  static double logoSizeLargeWidth = 300.w;

  static double logoSizeSmallHeight = 39.h;
  static double logoSizeSmallWidth = 98.w;

  // size height app bar screen register 
  static double registrationAppBarHeight = 67.h;
  // Navigation App bar 
  static double navigationAppBarHight = 83.h;
}
