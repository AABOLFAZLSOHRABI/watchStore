import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:watch_store/components/button_style.dart';
import 'package:watch_store/components/extention.dart';
import 'package:watch_store/components/text_style.dart';
import 'package:watch_store/gen/assets.gen.dart';
import 'package:watch_store/res/colors.dart';
import 'package:watch_store/res/dimes.dart';
import 'package:watch_store/res/strings.dart';
import 'package:watch_store/widgets/basket_item_card.dart';
import 'package:watch_store/widgets/custom_app_bar.dart';
import 'package:watch_store/widgets/product_actionBar.dart';

class BasketScreen extends StatelessWidget {
  const BasketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          child: Align(
            alignment: AlignmentGeometry.centerRight,
            child: Text(AppStrings.basket, style: AppTextStyle.title),
          ),
        ),
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: AppDimes.mediumH),
              padding: EdgeInsets.all(16),
              height: 80.h,
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppColors.mainBg,
                boxShadow: [
                  BoxShadow(
                    color: AppColors.shadow,
                    blurRadius: 3,
                    offset: Offset(0, 2),
                    spreadRadius: .3.w,
                  ),
                ],
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset(Assets.svg.leftArrow),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        AppStrings.sendToAddress,
                        style: AppTextStyle.description,
                      ),
                      Text(AppStrings.lure, style: AppTextStyle.title),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 2,
                itemBuilder: (context, index) {
                  return BasketItemCard(
                    productName: 'ساعت ایلستر',
                    price: 790000,
                    discountedPrice: 700000,
                    imagePath: Assets.png.clock.path,
                    onDelete: () {},
                    onDecrease: () {},
                    onIncrease: () {},
                    countLabel: 1.toString(),
                  );
                },
              ),
            ),
          ],
        ),
        bottomNavigationBar: ProductActionBar(
          priceText: AppStrings.continueToPurchase.replaceAll(
            AppStrings.replace,
            20000000.separateWithComma.toString(),
          ),
          buttonText: AppStrings.nextStepBuying,
          buttonStyle: AppButtonStyle.nextStepBuyingButtonStyle,
        ),
      ),
    );
  }
}
