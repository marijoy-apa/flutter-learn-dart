import 'package:flutter/material.dart';
import 'package:sample_project/model/product.dart';

class ProductBox extends StatefulWidget {
  const ProductBox({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  State<ProductBox> createState() => _ProductBoxState();
}

class _ProductBoxState extends State<ProductBox> {
  var isFave;

  @override
  void initState() {
    isFave = widget.product.isFavorites;
    super.initState();
  }

  // final String description;
  void onTapFavorites() {
    setState(() {
      isFave = !isFave;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(2),
      height: 120,
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(
              widget.product.image,
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(widget.product.name),
                    Text(widget.product.description),
                    Text(widget.product.price.toString()),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: onTapFavorites,
              child: Icon(
                isFave ? Icons.favorite : Icons.favorite_border,
                color: isFave ? Colors.red : Colors.black45,
              ),
            )
          ],
        ),
      ),
    );
  }
}
