import 'package:flutter/material.dart' hide Badge;
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:watch_store/components/extention.dart';
import 'package:watch_store/components/text_style.dart';
import 'package:watch_store/gen/assets.gen.dart';
import 'package:watch_store/res/dimes.dart';
import 'package:watch_store/res/strings.dart';
import 'package:watch_store/widgets/badge_cart.dart';
import 'package:watch_store/widgets/custom_app_bar.dart';

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
              BadgeCartAppBar(count: 3,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(AppStrings.topSells, style: AppTextStyle.title),
                  AppDimes.smallW.w.width,
                  SvgPicture.asset(Assets.svg.sort),
                ],
              ),
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(Assets.svg.close),
              ),
            ],
          ),
        ),
        body: Container(
          color: Colors.white,
          height: double.infinity,
          width: double.infinity,
          child: Center(
            child: Column(
              children: [
                Text('Product list screen'),
                ElevatedButton(
                  onPressed: () => context.pop(),
                  child: Text('Go back'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
