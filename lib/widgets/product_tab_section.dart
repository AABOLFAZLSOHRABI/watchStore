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
                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 16,horizontal: 16),
                    child: Text(
                      AppStrings.lorem,
                      style: AppTextStyle.text,
                      textAlign: TextAlign.right,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 16),
                    child: Text(
                      AppStrings.lure,
                      style: AppTextStyle.text,
                      textAlign: TextAlign.right,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 16),
                    child: Text(
                      AppStrings.lure,
                      style: AppTextStyle.text,
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
