import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:watch_store/components/extention.dart';
import 'package:watch_store/components/text_style.dart';
import 'package:watch_store/gen/assets.gen.dart';
import 'package:watch_store/res/dimes.dart';
import 'package:watch_store/res/strings.dart';
import 'package:watch_store/route/names.dart';

class VerticalText extends StatelessWidget {
  const VerticalText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: RotatedBox(
        quarterTurns: -1,
        child: Column(
          children: [
            InkWell(
              onTap: () => context.push(ScreenNames.productListScreen),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Transform.rotate(
                    angle: 1.5,
                    child: SvgPicture.asset(Assets.svg.back, fit: BoxFit.none),
                  ),
                  AppDimes.smallW.w.width,
                  Text(AppStrings.viewAll),
                ],
              ),
            ),
            AppDimes.mediumH.h.height,
            Text(AppStrings.amazing, style: AppTextStyle.amazing),
          ],
        ),
      ),
    );
  }
}
