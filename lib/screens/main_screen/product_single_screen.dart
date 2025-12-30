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
import 'package:watch_store/widgets/product_tab_section.dart';

class ProductSingleScreen extends StatelessWidget {
  const ProductSingleScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: SafeArea(
        child: Scaffold(
          appBar: CustomAppBar(
            child: Row(
              children: [
                BadgeCartAppBar(count: 3),
                Expanded(
                  child: Text(
                    AppStrings.productName,
                    style: AppTextStyle.title,
                    textDirection: TextDirection.rtl,
                  ),
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
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Image.asset(
                  Assets.png.unnamed.path,
                  width: double.infinity,
                  height: 240.h,
                  fit: BoxFit.cover,
                ),
              ),
              (AppDimes.largeH * 2).h.height,
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(8),
                  padding: EdgeInsets.all(16),
                  alignment: Alignment.topRight,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AppColors.mainBg,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withAlpha((0.08 * 255).round()),
                        blurRadius: 30,
                        offset: const Offset(0, -8),
                      ),
                    ],
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(AppDimes.largeRadius),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text("ساعت دیوراری", style: AppTextStyle.title),
                      Text(
                        "ساعت دیوراری کلاسیک که موسیقی هم پخش میکنه ",
                        style: AppTextStyle.description,
                      ),
                      AppDimes.mediumH.h.height,
                      const Expanded(child: ProductTabSection()),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
