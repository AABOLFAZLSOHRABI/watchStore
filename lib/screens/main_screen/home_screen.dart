import 'package:flutter/material.dart';
import 'package:watch_store/screens/main_screen/product_list_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      height: double.infinity,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => ProductListScreen(),)),
        child: Text('Get to list products'),
      ),
    );
  }
}
