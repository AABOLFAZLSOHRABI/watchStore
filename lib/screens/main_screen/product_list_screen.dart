import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:watch_store/components/extention.dart';
import 'package:watch_store/components/text_style.dart';
import 'package:watch_store/gen/assets.gen.dart';
import 'package:watch_store/res/colors.dart';
import 'package:watch_store/res/dimes.dart';
import 'package:watch_store/res/strings.dart';
import 'package:watch_store/widgets/badge_cart.dart';
import 'package:watch_store/widgets/custom_app_bar.dart';
import 'package:watch_store/widgets/product_item.dart';

class ProductListScreen extends StatelessWidget {
  const ProductListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BadgeCartAppBar(count: 3),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(AppStrings.topSells, style: AppTextStyle.title),
                  AppDimes.smallW.w.width,
                  SvgPicture.asset(Assets.svg.sort, fit: BoxFit.none),
                ],
              ),
              IconButton(
                onPressed: () => context.pop(),
                icon: SvgPicture.asset(Assets.svg.close, fit: BoxFit.none),
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            AppDimes.largeH.h.height,
            const TagList(),
            AppDimes.largeH.h.height,
            ProductGridView(),
            AppDimes.largeH.h.height,
          ],
        ),
      ),
    );
  }
}

class TagList extends StatelessWidget {
  const TagList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 24.h,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        reverse: true,
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsets.symmetric(horizontal: AppDimes.largeW),
            margin: index == 0
                ? EdgeInsets.only(right: AppDimes.largeW, left: AppDimes.smallW)
                : EdgeInsets.symmetric(horizontal: AppDimes.smallW),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppDimes.largeRadius),
              color: AppColors.btnColor,
            ),
            child: Center(child: Text('تک', style: AppTextStyle.tagList)),
          );
        },
      ),
    );
  }
}

class ProductGridView extends StatelessWidget {
  const ProductGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        itemCount: 10,
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(horizontal: AppDimes.mediumW),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.7,
          crossAxisSpacing: AppDimes.smallW,
          mainAxisSpacing: AppDimes.smallH,
        ),
        itemBuilder: (context, index) => InkWell(
          onTap: () => context.pushNamed("productSingleScreen"),
          child: ProductItem(
            titleProduct: "ساعت دیواری",
            price: 1000000,
            oldPrice: 1410000,
            discount: 20,
            timeLeft: "02:26",
          ),
        ),
      ),
    );
  }
}
