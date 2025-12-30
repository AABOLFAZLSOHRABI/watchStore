import 'package:flutter/material.dart';
import 'package:watch_store/components/text_style.dart';
import 'package:watch_store/res/colors.dart';
import 'package:watch_store/res/strings.dart';

class ProductTabSection extends StatelessWidget {
  const ProductTabSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Directionality(
          textDirection: TextDirection.rtl,
          child: TabBar(
            indicatorColor: AppColors.primaryColor,
            labelColor: AppColors.title,
            unselectedLabelColor: AppColors.hint,
            labelStyle: AppTextStyle.title,
            unselectedLabelStyle: AppTextStyle.description,
            tabs: const [
              Tab(text: AppStrings.features),
              Tab(text: AppStrings.review),
              Tab(text: AppStrings.comments),
            ],
          ),
        ),
        Expanded(
          child: Directionality(
            textDirection: TextDirection.ltr,
            child: TabBarView(
              children: [
                SingleChildScrollView(
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      AppStrings.lure,
                      style: AppTextStyle.description,
                      textAlign: TextAlign.right,
                    ),
                  ),
                ),
                SingleChildScrollView(
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      AppStrings.lure,
                      style: AppTextStyle.description,
                      textAlign: TextAlign.right,
                    ),
                  ),
                ),
                SingleChildScrollView(
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      AppStrings.lure,
                      style: AppTextStyle.description,
                      textAlign: TextAlign.right,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
