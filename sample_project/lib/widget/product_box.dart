import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sample_project/model/product.dart';
import 'package:sample_project/screen/product_details_page.dart';
import 'package:sample_project/provider/product_list_provider.dart';

class ProductBox extends ConsumerWidget {
  const ProductBox({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Product productItem = product;
    productItem = ref
        .watch(productListProvider)
        .where((list) => list.id == product.id)
        .toList()[0];

    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => ProductDetails(product: productItem),
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
                product.image,
                width: 100,
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(product.name),
                      Text(product.description),
                      Text('\$${product.price.toString()}'),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  ref
                      .read(productListProvider.notifier)
                      .onAddFavorites(product);
                },
                child: Icon(
                  product.isFavorites ? Icons.favorite : Icons.favorite_border,
                  color: product.isFavorites ? Colors.red : Colors.black45,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
