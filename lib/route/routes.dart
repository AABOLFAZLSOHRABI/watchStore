// lib/route/routes.dart
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:watch_store/route/names.dart';

import 'package:watch_store/screens/auth/cubit/auth_cubit.dart';
import 'package:watch_store/screens/auth/send_sms_screen.dart';
import 'package:watch_store/screens/auth/verify_code_screen.dart';
import 'package:watch_store/screens/register_screen.dart';

import 'package:watch_store/screens/main_screen/main_screen.dart';
import 'package:watch_store/screens/main_screen/home_screen.dart';
import 'package:watch_store/screens/main_screen/basket_screen.dart';
import 'package:watch_store/screens/main_screen/profile_screen.dart';
import 'package:watch_store/screens/main_screen/product_list_screen.dart';
import 'package:watch_store/screens/main_screen/product_single_screen.dart';

import 'go_router_refresh_stream.dart';

final rootNavigatorKey = GlobalKey<NavigatorState>();

GoRouter createRouter(AuthCubit authCubit) {
  return GoRouter(
    navigatorKey: rootNavigatorKey,
    initialLocation: ScreenNames.root,

    // Redirect is triggered every time the Cubit state changes
    refreshListenable: GoRouterRefreshStream(authCubit.stream),

    redirect: (context, state) {
      // 1) Is the user logged in?
      final isLoggedIn = authCubit.state is LoggedInState;

      // 2) Current path of the user
      final loc = state.matchedLocation;

      // 3) Is the user in the authentication flow?
      // (Add any routes related to login/register/OTP here)
      final isInAuthFlow =
          loc == ScreenNames.root ||
          loc == ScreenNames.verifyCodeScreen ||
          loc == ScreenNames.registerScreen
      // If you have a separate sendSmsScreen, add it here as well:
      // || loc == ScreenNames.sendSmsScreen
      ;

      // 4) Rules:
      // If not logged in and trying to access the main app -> redirect to auth
      if (!isLoggedIn && !isInAuthFlow) {
        return ScreenNames.root; // Auth entry (SendSms)
      }

      // If logged in but still in the auth flow -> redirect to the main app
      if (isLoggedIn && isInAuthFlow) {
        return ScreenNames.mainScreen; // Should be your app's main route
      }

      // Otherwise, do not redirect
      return null;
    },

    routes: [
      // -------------------- APP (Authenticated) --------------------
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) {
          return MainScreen(navigationShell: navigationShell);
        },
        branches: [
          // Home branch
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
          // Basket branch
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: ScreenNames.basketScreen,
                builder: (context, state) => const BasketScreen(),
              ),
            ],
          ),
          // Profile branch
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

      // -------------------- AUTH (Unauthenticated) --------------------
      GoRoute(
        name: "root",
        path: ScreenNames.root,
        builder: (context, state) => SendSmsScreen(),
      ),
      GoRoute(
        name: "GetOtpScreen",
        path: ScreenNames.verifyCodeScreen,
        builder: (context, state) => VerifyCodeScreen(mobile: state.extra as String),
      ),
      GoRoute(
        name: "RegisterScreen",
        path: ScreenNames.registerScreen,
        builder: (context, state) => RegisterScreen(),
      ),

      // -------------------- OTHER --------------------
      GoRoute(
        name: "productSingleScreen",
        path: ScreenNames.productSingleScreen,
        builder: (context, state) => const ProductSingleScreen(),
      ),
    ],
  );
}
