import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:watch_store/components/text_style.dart';
import 'package:watch_store/gen/assets.gen.dart';
import 'package:watch_store/res/strings.dart';
import 'package:watch_store/widgets/badge_cart.dart';
import 'package:watch_store/widgets/custom_app_bar.dart';

class ProductSingleScreen extends StatelessWidget {
  const ProductSingleScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
          
        ),
      ),
    );
  }
}
