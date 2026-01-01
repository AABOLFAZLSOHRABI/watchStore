import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:watch_store/components/extention.dart';
import 'package:watch_store/components/text_style.dart';
import 'package:watch_store/gen/assets.gen.dart';
import 'package:watch_store/res/colors.dart';
import 'package:watch_store/res/dimes.dart';
import 'package:watch_store/res/strings.dart';

class BasketItemCard extends StatelessWidget {
  final String productName;
  final int price;
  final int discountedPrice;
  final String imagePath;
  final VoidCallback? onDelete;
  final VoidCallback? onDecrease;
  final VoidCallback? onIncrease;
  final String countLabel;

  const BasketItemCard({
    super.key,
    required this.productName,
    required this.price,
    required this.discountedPrice,
    required this.imagePath,
    this.onDelete,
    this.onDecrease,
    this.onIncrease,
    this.countLabel = AppStrings.count,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: AppDimes.smallW,
        vertical: AppDimes.smallH,
      ),
      padding: EdgeInsets.all(16),
      height: 160.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.surfaceColor,
        borderRadius: BorderRadius.circular(
          AppDimes.mediumRadius.r,
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(productName, style: AppTextStyle.title),
                AppDimes.smallH.h.height,
                Text(
                  AppStrings.priceLabel.replaceAll(
                    AppStrings.replace,
                    price.separateWithComma.toString(),
                  ),
                  style: AppTextStyle.hint,
                ),
                AppDimes.smallH.h.height,
                Text(
                  AppStrings.discountedPriceLabel.replaceAll(
                    AppStrings.replace,
                    discountedPrice.separateWithComma.toString(),
                  ),
                  style: AppTextStyle.primaryThemeTextColor,
                ),
                Divider(
                  color: AppColors.divider,
                  thickness: 2,
                  height: AppDimes.smallH.h,
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: onDelete,
                      icon: SvgPicture.asset(Assets.svg.delete),
                    ),
                    Expanded(child: SizedBox()),
                    IconButton(
                      onPressed: onDecrease,
                      icon: SvgPicture.asset(Assets.svg.minus),
                    ),
                    Text(countLabel),
                    IconButton(
                      onPressed: onIncrease,
                      icon: SvgPicture.asset(Assets.svg.plus),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Image.asset(imagePath, fit: BoxFit.cover),
        ],
      ),
    );
  }
}
