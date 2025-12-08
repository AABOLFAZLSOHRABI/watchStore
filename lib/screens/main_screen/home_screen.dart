import 'package:flutter/material.dart';
import 'package:watch_store/res/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(children: [

          Container(decoration: BoxDecoration(
            color: AppColors.searchBar,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [],
            
          ),)
        ])),
    );
  }
}
