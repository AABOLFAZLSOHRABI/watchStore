import 'package:flutter/material.dart';
import 'package:watch_store/gen/assets.gen.dart';
import 'package:watch_store/res/colors.dart';
import 'package:watch_store/res/dimes.dart';
import 'package:watch_store/res/strings.dart';
import 'package:watch_store/widgets/btn_nav_item.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              bottom: AppDimes.navigationAppBarHight,
              child: Container(color: const Color.fromARGB(255, 247, 1, 1)),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                color: AppColors.btmNavColor,
                height: AppDimes.navigationAppBarHight,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    BtnNavItem(
                      iconSvgPath: Assets.svg.user,
                      isActive: false,
                      label: AppStrings.profile,
                      onTap: () {},
                    ),
                    BtnNavItem(
                      iconSvgPath: Assets.svg.cart,
                      isActive: false,
                      label: AppStrings.basket,
                      onTap: () {},
                    ),
                    BtnNavItem(
                      iconSvgPath: Assets.svg.home,
                      isActive: true,
                      label: AppStrings.home,
                      onTap: () {},
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
