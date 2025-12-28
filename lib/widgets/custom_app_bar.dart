
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:watch_store/res/colors.dart';
import 'package:watch_store/res/dimes.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.appBar,
      scrolledUnderElevation: 0,
      automaticallyImplyLeading: false,
      toolbarHeight: AppDimes.customAppBarHeight.h,
      flexibleSpace: Container(
        height: AppDimes.customAppBarHeight.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(AppDimes.mediumRadius),
            bottomRight: Radius.circular(AppDimes.mediumRadius),
          ),
          color: AppColors.appBar,
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 2),
              blurRadius: 5,
              spreadRadius: -2.0,
              color: AppColors.shadow,
            ),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: AppDimes.mediumW),
          child: child,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(AppDimes.customAppBarHeight.h);
}
