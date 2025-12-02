import 'package:flutter/material.dart';
import 'package:watch_store/res/dimens.dart';

import '../gen/assets.gen.dart';

enum LogoSize { large, small }

class AppLogo extends StatelessWidget {
  const AppLogo({super.key, this.size = LogoSize.small});
  final LogoSize size;
  @override
  Widget build(BuildContext context) {
    final double height = size == LogoSize.small
        ? Dimens.logoSizeSmallHeight
        : Dimens.logoSizeLargHeight;
    final double width = size == LogoSize.small
        ? Dimens.logoSizeSmallWidth
        : Dimens.logoSizeLargWidth;
    return Image.asset(
      Assets.png.mainLogo.path,
      height: height,
      width: width,
      fit: BoxFit.contain,
    );
  }
}
