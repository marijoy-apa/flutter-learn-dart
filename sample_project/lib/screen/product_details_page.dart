import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sample_project/model/product.dart';
import 'package:sample_project/provider/product_list_provider.dart';

class ProductDetails extends ConsumerWidget {
  const ProductDetails({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Product productItem = product;
    productItem = ref
        .watch(productListProvider)
        .where((list) => list.id == product.id)
        .toList()[0];

    return Scaffold(
      appBar: AppBar(
        title: Text(product.name),
        actions: [
          IconButton(
            onPressed: () {
              ref
                  .read(productListProvider.notifier)
                  .onAddFavorites(productItem);
            },
            icon: Icon(productItem.isFavorites
                ? Icons.favorite
                : Icons.favorite_outline),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              color: Colors.grey,
              width: double.infinity,
              height: 300,
              child: Image.asset(
                product.image,
                fit: BoxFit.fitHeight,
                height: 150,
              ),
            ),
            const SizedBox(height: 50),
            Text(
              product.name,
              style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30),
            Text(
              product.description,
              style: const TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            Text(
              'Price: \$${product.price}',
              style: const TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
