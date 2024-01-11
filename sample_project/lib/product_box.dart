import 'package:flutter/material.dart';
import 'package:sample_project/data/data.dart';
import 'package:sample_project/model/product.dart';
import 'package:sample_project/product_details_page.dart';

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
  var product;

  @override
  void initState() {
    product = widget.product;
    isFave = widget.product.isFavorites;
    super.initState();
  }

  void onTapFavorites() {
    setState(() {
      isFave = !isFave;
    });

    for (int i = 0; i < productList.length; i++) {
      if (productList[i].id == widget.product.id) {
        productList[i].isFavorites = !productList[i].isFavorites;
        break; // Stop iterating once the product is found and updated
      }
    }
    //need to update the product info to be passed when tapping a list, the widget.product can't be used as it is a final variable, therefore, values can't be updated
    product = Product(
      name: product.name,
      description: product.description,
      price: product.price,
      image: product.image,
      isFavorites: !product.isFavorites,
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => ProductDetails(product: product),
        ));
      },
      child: Container(
        padding: const EdgeInsets.all(2),
        height: 120,
        child: Card(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(
                widget.product.image,
                width: 100,
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(widget.product.name),
                      Text(widget.product.description),
                      Text('\$${widget.product.price.toString()}'),
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
      ),
    );
  }
}
