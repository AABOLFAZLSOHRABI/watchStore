import 'package:watch_store/route/names.dart';
import 'package:watch_store/screens/get_otp_screen.dart';
import 'package:watch_store/screens/main_screen/main_screen.dart';
import 'package:watch_store/screens/main_screen/product_list_screen.dart';
import 'package:watch_store/screens/main_screen/product_single_screen.dart';
import 'package:watch_store/screens/register_screen.dart';
import 'package:watch_store/screens/send_otp_screen.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(
  initialLocation: ScreenNames.root,
  routes: [
    GoRoute(
      path: ScreenNames.root,
      builder: (context, state) => SendOtpScreen(),
    ),
    GoRoute(
      path: ScreenNames.getOtpScreen,
      builder: (context, state) => GetOtpScreen(),
    ),
    GoRoute(
      path: ScreenNames.registerScreen,
      builder: (context, state) => RegisterScreen(),
    ),
    GoRoute(
      path: ScreenNames.mainScreen,
      builder: (context, state) => const MainScreen(),
    ),
    GoRoute(
      path: ScreenNames.productListScreen,
      builder: (context, state) => const ProductListScreen(),
    ),
    GoRoute(
      path: ScreenNames.productSingleScreen,
      builder: (context, state) => const ProductSingleScreen(productId: '',),
    ),
  ],
);
