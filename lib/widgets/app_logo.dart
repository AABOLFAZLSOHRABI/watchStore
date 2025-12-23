import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:watch_store/res/dimes.dart';

import '../gen/assets.gen.dart';

enum LogoSize { large, small }

class AppLogo extends StatelessWidget {
  const AppLogo({super.key, this.size = LogoSize.small});
  final LogoSize size;
  @override
  Widget build(BuildContext context) {
    final double height = size == LogoSize.small
        ? AppDimes.logoSizeSmallHeight.h
        : AppDimes.logoSizeLargeHeight.h;
    final double width = size == LogoSize.small
        ? AppDimes.logoSizeSmallWidth.w
        : AppDimes.logoSizeLargeWidth.w;
    return Image.asset(
      Assets.png.mainLogo.path,
      height: height,
      width: width,
      fit: BoxFit.contain,
    );
  }
}
