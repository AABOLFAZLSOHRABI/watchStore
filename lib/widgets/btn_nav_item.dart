import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:watch_store/components/text_style.dart';
import 'package:watch_store/res/colors.dart';
import 'package:watch_store/res/dimes.dart';

class BtnNavItem extends StatelessWidget {
  final String? iconSvgPath;
  final Widget? customIcon;
  final String label;
  final bool isActive;
  final void Function() onTap;
  
  const BtnNavItem({
    super.key,
    this.iconSvgPath,
    this.customIcon,
    required this.label,
    required this.isActive,
    required this.onTap,
  }) : assert(iconSvgPath != null || customIcon != null, 'Either iconSvgPath or customIcon must be provided');

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: AppColors.btmNavColor,
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              customIcon ?? SvgPicture.asset(
                iconSvgPath!,
                fit: BoxFit.none,
                colorFilter: ColorFilter.mode(
                  isActive
                      ? AppColors.btmNavActiveItem
                      : AppColors.btmNavInActiveItem,
                  BlendMode.srcIn,
                ),
              ),
              SizedBox(height: AppDimes.smallH.h),
              Text(
                label,
                style: isActive
                    ? AppTextStyle.btnNavActive
                    : AppTextStyle.btnNavInactive,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
