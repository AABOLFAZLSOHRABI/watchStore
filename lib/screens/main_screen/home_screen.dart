import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:watch_store/gen/assets.gen.dart';
import 'package:watch_store/res/colors.dart';
import 'package:watch_store/res/dimes.dart';
import 'package:watch_store/res/strings.dart';
import 'package:watch_store/widgets/app_slider.dart';
import 'package:watch_store/widgets/cat_widgets.dart';
import 'package:watch_store/widgets/search_bar.dart';
import 'package:watch_store/widgets/vertical_text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            AppSearchBar(onTab: () {}),
            AppSlider(),
            // cat
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GatWidget(
                  title: AppStrings.desktop,
                  icon: Assets.svg.desktop,
                  bgColor: AppColors.catDesktopColors,
                  onTap: () {},
                ),
                GatWidget(
                  title: AppStrings.digital,
                  icon: Assets.svg.digital,
                  bgColor: AppColors.catDigitalColors,
                  onTap: () {},
                ),
                GatWidget(
                  title: AppStrings.smart,
                  icon: Assets.svg.smart,
                  bgColor: AppColors.catSmartColors,
                  onTap: () {},
                ),
                GatWidget(
                  title: AppStrings.classic,
                  icon: Assets.svg.classic,
                  bgColor: AppColors.catClassicColors,
                  onTap: () {},
                ),
              ],
            ),

            SizedBox(height: AppDimes.mediumH),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              reverse: true,
              child: Row(
                children: [
                  SizedBox(
                    height: 289.h,
                    child: ListView.builder(
                      physics: ClampingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: 8,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Container(
                          height: 289.h,
                          width: 162.w,
                          color: Colors.grey,
                          margin: EdgeInsets.all(12.h),
                        );
                      },
                    ),
                  ),
                  VerticalText(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
