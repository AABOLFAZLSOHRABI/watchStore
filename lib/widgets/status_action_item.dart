import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:watch_store/components/text_style.dart';

class StatusAction {
  final String iconAsset;
  final String label;
  final VoidCallback onTap;

  const StatusAction({
    required this.iconAsset,
    required this.label,
    required this.onTap,
  });
}

class StatusActionItem extends StatelessWidget {
  final StatusAction action;

  const StatusActionItem({super.key, required this.action});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: action.onTap,
      behavior: HitTestBehavior.opaque,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(
            action.iconAsset,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 8.h),
          Text(action.label, style: AppTextStyle.title),
        ],
      ),
    );
  }
}
