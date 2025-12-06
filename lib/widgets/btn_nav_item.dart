import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:watch_store/components/text_style.dart';
import 'package:watch_store/res/colors.dart';
import 'package:watch_store/res/dimes.dart';

class BtnNavItem extends StatelessWidget {
  String iconSvgPath;
  String label;
  bool isActive;
  void Function() onTap;
  BtnNavItem({
    super.key,
    required this.iconSvgPath,
    required this.label,
    required this.isActive,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        color: AppColors.btmNavColor,
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                iconSvgPath,
                colorFilter: ColorFilter.mode(
                  isActive
                      ? AppColors.btmNavActiveItem
                      : AppColors.btmNavInActiveItem,
                  BlendMode.srcIn,
                ),
              ),
              SizedBox(height: AppDimes.smallH),
              Text(
                label,
                style: isActive
                    ? LightAppTestState.btnNavActive
                    : LightAppTestState.btnNavInactive,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
