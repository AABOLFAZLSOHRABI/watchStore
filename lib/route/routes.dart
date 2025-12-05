import 'package:flutter/widgets.dart';
import 'package:watch_store/route/names.dart';
import 'package:watch_store/screens/get_otp_screen.dart';
import 'package:watch_store/screens/main_screen/main_screen.dart';
import 'package:watch_store/screens/send_otp_screen.dart';

Map<String, Widget Function(BuildContext)> routes = {
  ScreenNames.root: (context)=> SendOtpScreen(),
  ScreenNames.getOtpScreen:(context)=> GetOtpScreen(),
  ScreenNames.mainScreen:(context)=> MainScreen(),
};

