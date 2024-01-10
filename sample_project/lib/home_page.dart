import 'package:flutter/material.dart';
import 'package:sample_project/product_box.dart';

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
        child: ProductBox(),
      ),
    );
  }
}
