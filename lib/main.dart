import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:watch_store/components/theme.dart';
import 'package:watch_store/data/local/secure_storage_service.dart';
import 'package:watch_store/route/routes.dart';
import 'package:watch_store/screens/auth/cubit/auth_cubit.dart';

import 'package:go_router/go_router.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    BlocProvider(
      create: (_) => AuthCubit(SecureStorageService()),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late final GoRouter _router;

  @override
  void initState() {
    super.initState();
    // Cache the router instance to prevent recreating it on every build
    _router = createRouter(context.read<AuthCubit>());
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(428, 857),
      minTextAdapt: false,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp.router(
          routerConfig: _router,
          debugShowCheckedModeBanner: false,
          title: 'Watch Store',
          theme: lightTheme,
        );
      },
    );
  }
}
