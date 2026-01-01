import 'package:flutter/material.dart';
import 'package:watch_store/route/names.dart';
import 'package:watch_store/screens/auth/verify_code_screen.dart';
import 'package:watch_store/screens/main_screen/basket_screen.dart';
import 'package:watch_store/screens/main_screen/home_screen.dart';
import 'package:watch_store/screens/main_screen/main_screen.dart';
import 'package:watch_store/screens/main_screen/product_list_screen.dart';
import 'package:watch_store/screens/main_screen/product_single_screen.dart';
import 'package:watch_store/screens/main_screen/profile_screen.dart';
import 'package:watch_store/screens/register_screen.dart';
import 'package:watch_store/screens/auth/send_sms_screen.dart';
import 'package:go_router/go_router.dart';

final rootNavigatorKey = GlobalKey<NavigatorState>();

final appRouter = GoRouter(
  initialLocation: ScreenNames.root,
  routes: [
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return MainScreen(navigationShell: navigationShell);
      },
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: ScreenNames.mainScreen,
              builder: (context, state) => const HomeScreen(),
              routes: [
                GoRoute(
                  name: "productList",
                  path: "productListScreen",
                  builder: (context, state) => const ProductListScreen(),
                ),
              ],
            ),
          ],
        ),

        StatefulShellBranch(
          routes: [
            GoRoute(
              path: ScreenNames.basketScreen,
              builder: (context, state) => const BasketScreen(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: ScreenNames.profileScreen,
              builder: (context, state) => const ProfileScreen(),
            ),
          ],
        ),
      ],
    ),
    GoRoute(
      name: "root",
      path: ScreenNames.root,
      builder: (context, state) => SendSmsScreen(),
    ),
    GoRoute(
      name: "GetOtpScreen",
      path: ScreenNames.verifyCodeScreen,
      builder: (context, state) => VerifyCodeScreen(),
    ),
    GoRoute(
      name: "RegisterScreen",
      path: ScreenNames.registerScreen,
      builder: (context, state) => RegisterScreen(),
    ),
    GoRoute(
      name: "productSingleScreen",
      path: ScreenNames.productSingleScreen,
      builder: (context, state) => const ProductSingleScreen(),
    ),
    GoRoute(
      name: "sendSmsScreen",
      path: ScreenNames.sendSmsScreen,
      builder: (context, state) => SendSmsScreen(),
    ),
  ],
);
