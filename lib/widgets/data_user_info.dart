import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:watch_store/components/extention.dart';
import 'package:watch_store/components/text_style.dart';
import 'package:watch_store/gen/assets.gen.dart';
import 'package:watch_store/res/colors.dart';
import 'package:watch_store/res/dimes.dart';
import 'package:watch_store/res/strings.dart';

class DataUserInfo extends StatelessWidget {
  const DataUserInfo({super.key});
  @override
  Widget build(BuildContext context) {
    final detailRows = [
      _ProfileInfo(icon: Assets.svg.cart, label: "6219543210"),
      _ProfileInfo(icon: Assets.svg.phone, label: "091287654321"),
      _ProfileInfo(icon: Assets.svg.user, label: AppStrings.name),
    ];
    return SizedBox(
      width: double.infinity,
      height: 140.h,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SvgPicture.asset(Assets.svg.leftArrow),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      AppStrings.activeAddress,
                      style: AppTextStyle.description,
                    ),
                    Text(
                      AppStrings.lure,
                      style: AppTextStyle.title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ],
            ),
            AppDimes.smallH.h.height,
            Column(
              children: [
                for (var i = 0; i < detailRows.length; i++) ...[
                  if (i > 0) AppDimes.smallH.h.height,
                  _ProfileDetailRow(detail: detailRows[i]),
                ],
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _ProfileDetailRow extends StatelessWidget {
  final _ProfileInfo detail;

  const _ProfileDetailRow({required this.detail});

  @override
  Widget build(BuildContext context) {
    final iconSize = 20.w;
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(detail.label, style: AppTextStyle.title),
        AppDimes.smallW.width,

        SvgPicture.asset(
          detail.icon,
          width: iconSize,
          height: iconSize,
          colorFilter: const ColorFilter.mode(AppColors.title, BlendMode.srcIn),
        ),
      ],
    );
  }
}

class _ProfileInfo {
  final String icon;
  final String label;

  const _ProfileInfo({required this.icon, required this.label});
}
