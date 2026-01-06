import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:watch_store/components/theme.dart';
import 'package:watch_store/route/routes.dart';
import 'package:watch_store/screens/auth/cubit/auth_cubit.dart';
import 'package:watch_store/screens/auth/send_sms_screen.dart';
import 'package:watch_store/screens/main_screen/home_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(428, 857),
      minTextAdapt: false,
      splitScreenMode: true,
      builder: (context, child) {
        return BlocProvider(
          create: (context) => AuthCubit(),
          child: MaterialApp(
            // routerConfig: appRouter,
            debugShowCheckedModeBanner: false,
            title: 'Watch Store',
            theme: lightTheme,
            home: BlocBuilder<AuthCubit, AuthState>(
              builder: (context, state) {
                if (state is LoggedInState) {
                  return SendSmsScreen();
                } else if (state is LoggedOutState) {
                  return HomeScreen();
                } else {
                  return SendSmsScreen();
                }
              },
            ),
          ),
        );
      },
    );
  }
}
