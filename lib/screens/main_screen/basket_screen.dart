import 'package:flutter/material.dart';
import 'package:watch_store/components/button_style.dart';
import 'package:watch_store/components/extention.dart';
import 'package:watch_store/components/text_style.dart';
import 'package:watch_store/res/strings.dart';
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
