import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:watch_store/components/text_style.dart';
import 'package:watch_store/res/dimes.dart';

class GatWidget extends StatelessWidget {
  const GatWidget({
    super.key,
    required this.title,
    required this.icon,
    required this.bgColor,
    required this.onTap,
  });
  final String title;
  final String icon;
  final List<Color> bgColor;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            height: 61.h,
            width: 61.w,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: bgColor,
              ),
              borderRadius: BorderRadius.circular(AppDimes.largeRadius),
            ),

            child: SvgPicture.asset(icon),
          ),
          Text(title, style: AppTextStyle.title),
        ],
      ),
    );
  }
}
