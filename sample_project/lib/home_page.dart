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
      body: ListView(
        children: const [
          ProductBox(
            name: 'iPhone',
            description: 'iPhone is the stylist phone ever',
            price: 1000,
            image: "assets/appImages/iphone.png",
          ),
          ProductBox(
            name: 'Pixel',
            description: 'Pixel is the most featureful phone ever',
            price: 800,
            image: "assets/appImages/pixel.png",
          ),
          ProductBox(
            name: 'Laptop',
            description: 'Laptop is most productive development tool',
            price: 2000,
            image: "assets/appImages/laptop.png",
          ),
          ProductBox(
            name: 'Tablet',
            description: 'Tablet is the most useful device ever for meeting',
            price: 1500,
            image: "assets/appImages/tablet.png",
          ),
          ProductBox(
            name: 'Pendrive',
            description: 'Pendrive is useful storage medium',
            price: 100,
            image: "assets/appImages/penDrive.png",
          ),
          ProductBox(
            name: 'Floppy Drive',
            description: 'Floppy drive is useful rescue storage medium',
            price: 212,
            image: "assets/appImages/floppyDisk.png",
          ),
        ],
      ),
    );
  }
}
