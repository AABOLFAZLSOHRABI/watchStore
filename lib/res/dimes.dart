abstract class AppDimes {
  // مقادیر پایه (طراحی فیگما)
  static const double _small = 8;
  static const double _medium = 12;
  static const double _large = 24;
  // TEXT Field size
  static double get textFieldHeight => 42;
  static double get textFieldWidth => 260;

  /// text size font
  static double get title => 14;
  static double get avatar => 11;
  static double get button => 15;

  // text file hint size font
  static double get textFontHint => 11;

  // Button Size
  static double get buttonHeight => 42;
  static double get buttonWidth => 260;

  // فاصله افقی (عرض)
  static double get smallW => _small;
  static double get mediumW => _medium;
  static double get largeW => _large;

  // فاصله عمودی (ارتفاع)
  static double get smallH => _small;
  static double get mediumH => _medium;
  static double get largeH => _large;

  // گرد کردن گوشه‌ها
  static double get smallRadius => _small;
  static double get mediumRadius => _medium;
  static double get largeRadius => _large;

  // Logo size
  static double logoSizeLargeHeight = 121;
  static double logoSizeLargeWidth = 300;

  static double logoSizeSmallHeight = 39;
  static double logoSizeSmallWidth = 98;

  // size height app bar screen register 
  static double registrationAppBarHeight = 67;
  // Navigation App bar size
  static double navigationAppBarHight = 83;
  // Navigation App bar title size
  static double navigationAppBarTitleSize = 14;
}
