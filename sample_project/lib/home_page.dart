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
          //positional arguments
          // child: ProductBox(
          //   'name',
          //   'description',
          //   12321,
          //   "assets/appImages/iphone.png",
          // ),

          //named arguments
          child: ProductBox(
            name: 'name',
            description: 'description',
            price: 212,
            image: "assets/appImages/iphone.png",
          ),
        ));
  }
}
