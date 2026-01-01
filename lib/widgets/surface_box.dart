import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:watch_store/res/colors.dart';
import 'package:watch_store/res/dimes.dart';

class SurfaceBox extends StatelessWidget {
  final double height;
  final Widget? child;

  const SurfaceBox({
    super.key,
    required this.height,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: AppDimes.smallW,
        vertical: AppDimes.smallH,
      ),
      padding: EdgeInsets.all(16),
      height: height,
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.surfaceColor,
        borderRadius: BorderRadius.circular(
          AppDimes.mediumRadius.r,
        ),
      ),
      child: child,
    );
  }
}
