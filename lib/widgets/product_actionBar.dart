import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:watch_store/components/button_style.dart';
import 'package:watch_store/components/extention.dart';
import 'package:watch_store/components/text_style.dart';
import 'package:watch_store/res/colors.dart';
import 'package:watch_store/res/dimes.dart';

class ProductActionBar extends StatelessWidget {
  const ProductActionBar({
    super.key,
    required this.priceText,
    required this.buttonText,
    this.oldPrice = 0,
    this.discount = 0,
    this.buttonStyle,
  });
  final String priceText;
  final String buttonText;
  final int oldPrice;
  final int discount;
  final ButtonStyle? buttonStyle;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.h,
      color: AppColors.mainBg,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(priceText, style: AppTextStyle.title),
                  Visibility(
                    visible: oldPrice > 0,
                    child: Text(
                      oldPrice.separateWithComma,
                      style: AppTextStyle.oldPrice,
                    ),
                  ),
                ],
              ),
              AppDimes.mediumW.w.width,
              Visibility(
                visible: discount != 0,
                child: Container(
                  width: 34.w,
                  height: 18.h,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(AppDimes.largeRadius.r),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(4),
                    child: Center(
                      child: Text("$discount %", style: AppTextStyle.offer),
                    ),
                  ),
                ),
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {},
            style: buttonStyle ?? AppButtonStyle.addToCartButtonStyle,
            child: Text(buttonText, style: AppTextStyle.button),
          ),
        ],
      ),
    );
  }
}
