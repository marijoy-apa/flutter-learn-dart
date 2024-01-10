import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product List'),
      ),
      drawer: const Drawer(),
      body: const Center(
        child: Icon(
          Icons.restaurant_menu_rounded,
          size: 70,
        ),
      ),
    );
  }
}
