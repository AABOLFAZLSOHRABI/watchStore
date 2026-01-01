import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:watch_store/components/extention.dart';
import 'package:watch_store/components/text_style.dart';
import 'package:watch_store/gen/assets.gen.dart';

class AppAvatar extends StatelessWidget {
  const AppAvatar({super.key, this.title = ""});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: Image.asset(Assets.png.avatar.path),
        ),
        20.h.height,
        Text(title, style: AppTextStyle.avatar),
      ],
    );
  }
}
