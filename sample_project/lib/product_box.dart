import 'package:flutter/material.dart';

class ProductBox extends StatelessWidget {
  // named arguments
  const ProductBox({
    super.key,
    required this.name,
    required this.description,
    required this.price,
    required this.image,
  });

  // positional arguments
  // const ProductBox(
  //   this.name,
  //   this.description,
  //   this.price,
  //   this.image, {
  //   super.key,
  // });

  final String name;
  final String description;
  final int price;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(2),
      height: 120,
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(image),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(name),
                    Text(description),
                    Text(price.toString()),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
