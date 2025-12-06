import 'package:flutter/material.dart';

class ProductSingleScreen extends StatelessWidget {
  const ProductSingleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color.fromARGB(255, 196, 125, 125),
        height: double.infinity,
        width: double.infinity,
        child: Center(child: Text('Product single screen')),
      ),
    );
  }
}
