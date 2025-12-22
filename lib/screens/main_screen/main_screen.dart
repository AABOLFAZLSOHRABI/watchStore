import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:watch_store/gen/assets.gen.dart';
import 'package:watch_store/res/colors.dart';
import 'package:watch_store/res/dimes.dart';
import 'package:watch_store/res/strings.dart';
import 'package:watch_store/widgets/btn_nav_item.dart';

abstract class BtnNavScreenIndex {
  static const int home = 0;
  static const int basket = 1;
  static const int profile = 2;
}

class MainScreen extends StatelessWidget {
  final StatefulNavigationShell navigationShell;

  const MainScreen({super.key, required this.navigationShell});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: navigationShell),
      bottomNavigationBar: Container(
        color: AppColors.btmNavColor,
        height: AppDimes.navigationAppBarHight,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            BtnNavItem(
              iconSvgPath: Assets.svg.user,
              isActive: navigationShell.currentIndex == BtnNavScreenIndex.profile,
              label: AppStrings.profile,
              onTap: () => navigationShell.goBranch(BtnNavScreenIndex.profile),
            ),
            BtnNavItem(
              iconSvgPath: Assets.svg.cart,
              isActive: navigationShell.currentIndex == BtnNavScreenIndex.basket,
              label: AppStrings.basket,
              onTap: () => navigationShell.goBranch(BtnNavScreenIndex.basket),
            ),
            BtnNavItem(
              iconSvgPath: Assets.svg.home,
              isActive: navigationShell.currentIndex == BtnNavScreenIndex.home,
              label: AppStrings.home,
              onTap: () => navigationShell.goBranch(BtnNavScreenIndex.home),
            ),
          ],
        ),
      ),
    );
  }
}