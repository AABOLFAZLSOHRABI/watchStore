import 'package:flutter/material.dart';
import 'package:watch_store/res/dimes.dart';

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
                color: Colors.white,
                height: AppDimes.navigationAppBarHight,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
