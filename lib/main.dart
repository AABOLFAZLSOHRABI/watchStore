import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:watch_store/components/theme.dart';
import 'package:watch_store/route/routes.dart';
import 'package:watch_store/screens/auth/cubit/auth_cubit.dart';

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
          create: (_) => AuthCubit(),
          child: Builder(
            builder: (context) {
              final authCubit = context.read<AuthCubit>();
              final router = createRouter(authCubit);

              return MaterialApp.router(
                routerConfig: router,
                debugShowCheckedModeBanner: false,
                title: 'Watch Store',
                theme: lightTheme,
              );
            },
          ),
        );
      },
    );
  }
}
