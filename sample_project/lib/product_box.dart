import 'package:flutter/material.dart';

class ProductBox extends StatelessWidget {
  const ProductBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(2),
      height: 120,
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset("assets/appImages/iphone.png"),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(5),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('name'),
                    Text('description'),
                    Text('price'),
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
