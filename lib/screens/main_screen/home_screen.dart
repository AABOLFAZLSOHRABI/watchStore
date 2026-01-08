import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:watch_store/gen/assets.gen.dart';
import 'package:watch_store/res/colors.dart';
import 'package:watch_store/res/dimes.dart';
import 'package:watch_store/res/strings.dart';
import 'package:watch_store/widgets/app_slider.dart';
import 'package:watch_store/widgets/cat_widgets.dart';
import 'package:watch_store/widgets/product_item.dart';
import 'package:watch_store/widgets/search_bar.dart';
import 'package:watch_store/widgets/vertical_text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              AppSearchBar(onTab: () {}),
              const AppSlider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CatWidget(
                    title: AppStrings.desktop,
                    icon: Assets.svg.desktop,
                    bgColor: AppColors.catDesktopColors,
                    onTap: () {},
                  ),
                  CatWidget(
                    title: AppStrings.digital,
                    icon: Assets.svg.digital,
                    bgColor: AppColors.catDigitalColors,
                    onTap: () {},
                  ),
                  CatWidget(
                    title: AppStrings.smart,
                    icon: Assets.svg.smart,
                    bgColor: AppColors.catSmartColors,
                    onTap: () {},
                  ),
                  CatWidget(
                    title: AppStrings.classic,
                    icon: Assets.svg.classic,
                    bgColor: AppColors.catClassicColors,
                    onTap: () {},
                  ),
                ],
              ),
              SizedBox(height: AppDimes.mediumH),
              SizedBox(
                height: 320.h,
                child: Row(
                  children: [
                    Expanded(
                      child: ListView.builder(
                        physics: const ClampingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        reverse: true,
                        itemCount: 8,
                        itemBuilder: (context, index) {
                          return const ProductItem(
                            titleProduct: 'ساعت کلاسیک مردانه',
                            price: 120000,
                            oldPrice: 150000,
                            timeLeft: "10:26",
                            discount: 30,
                          );
                        },
                      ),
                    ),
                    const VerticalText(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
