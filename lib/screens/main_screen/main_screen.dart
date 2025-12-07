import 'package:flutter/material.dart';
import 'package:watch_store/gen/assets.gen.dart';
import 'package:watch_store/res/colors.dart';
import 'package:watch_store/res/dimes.dart';
import 'package:watch_store/res/strings.dart';
import 'package:watch_store/screens/main_screen/basket_screen.dart';
import 'package:watch_store/screens/main_screen/home_screen.dart';
import 'package:watch_store/screens/main_screen/profile_screen.dart';
import 'package:watch_store/widgets/btn_nav_item.dart';

abstract class BtnNavScreenIndex {
  static const int home = 0;
  static const int basket = 1;
  static const int profile = 2;
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int selectedIndex = BtnNavScreenIndex.home;
  final GlobalKey<NavigatorState> _homeKey = GlobalKey<NavigatorState>();
  final GlobalKey<NavigatorState> _basketKey = GlobalKey<NavigatorState>();
  final GlobalKey<NavigatorState> _profileKey = GlobalKey<NavigatorState>();
  late final map = {
    BtnNavScreenIndex.home: _homeKey,
    BtnNavScreenIndex.basket: _basketKey,
    BtnNavScreenIndex.profile: _profileKey,
  };

  void _onPopInvoked(bool didPop) {
    if (didPop) return;

    final navigator = map[selectedIndex]!.currentState;
    if (navigator != null && navigator.canPop()) {
      navigator.pop();
    } else {
      Navigator.of(context).maybePop();
    }
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) => _onPopInvoked(didPop),
      child: Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                bottom: AppDimes.navigationAppBarHight,
                child: IndexedStack(
                  index: selectedIndex,
                  children: [
                    Navigator(
                      key: _homeKey,
                      onGenerateRoute: (settings) =>
                          MaterialPageRoute(builder: (context) => HomeScreen()),
                    ),
                    Navigator(
                      key: _basketKey,
                      onGenerateRoute: (settings) => MaterialPageRoute(
                        builder: (context) => BasketScreen(),
                      ),
                    ),
                    Navigator(
                      key: _profileKey,
                      onGenerateRoute: (settings) => MaterialPageRoute(
                        builder: (context) => ProfileScreen(),
                      ),
                    ),
                  ],
                ),
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
                        isActive: selectedIndex == BtnNavScreenIndex.profile,
                        label: AppStrings.profile,
                        onTap: () =>
                            btnNavOnPressed(index: BtnNavScreenIndex.profile),
                      ),
                      BtnNavItem(
                        iconSvgPath: Assets.svg.cart,
                        isActive: selectedIndex == BtnNavScreenIndex.basket,
                        label: AppStrings.basket,
                        onTap: () =>
                            btnNavOnPressed(index: BtnNavScreenIndex.basket),
                      ),
                      BtnNavItem(
                        iconSvgPath: Assets.svg.home,
                        isActive: selectedIndex == BtnNavScreenIndex.home,
                        label: AppStrings.home,
                        onTap: () =>
                            btnNavOnPressed(index: BtnNavScreenIndex.home),
                      ),
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

  void btnNavOnPressed({required int index}) {
    setState(() {
      selectedIndex = index;
      
    });
  }
}
