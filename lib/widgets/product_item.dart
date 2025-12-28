import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:watch_store/components/extention.dart';
import 'package:watch_store/components/text_style.dart';
import 'package:watch_store/gen/assets.gen.dart';
import 'package:watch_store/res/colors.dart';
import 'package:watch_store/res/dimes.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({
    super.key,
    required this.titleProduct,
    required this.price,
    this.oldPrice = 0,
    this.discount = 0,
    this.timeLeft = "",
  });
  
  final String titleProduct;
  final int price;
  final int oldPrice;
  final int discount;
  final String timeLeft;

  static const _gradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: AppColors.productBgGradient,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 162.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppDimes.mediumRadius.r),
        gradient: _gradient,
      ),
      margin: EdgeInsets.all(12.h),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(child: Image.asset(Assets.png.unnamed.path)),
            AppDimes.smallH.h.height,
            Align(
              alignment: Alignment.centerRight,
              child: Text(titleProduct, style: AppTextStyle.title),
            ),
            AppDimes.smallH.h.height,
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "${price.separateWithComma} تومان",
                        style: AppTextStyle.title,
                      ),
                      Visibility(
                        visible: oldPrice > 0,
                        child: Text(
                          oldPrice.separateWithComma,
                          style: AppTextStyle.oldPrice,
                        ),
                      ),
                    ],
                  ),
                ),
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
            AppDimes.smallH.h.height,
            Visibility(
              visible: timeLeft.isNotEmpty,
              child: Container(height: 2.h, width: 112.w, color: Colors.blue)),
            Flexible(
              child: Visibility(
                visible: timeLeft.isNotEmpty,
                child: Text(
                  timeLeft,
                  style: AppTextStyle.title.copyWith(color: Colors.blue),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
