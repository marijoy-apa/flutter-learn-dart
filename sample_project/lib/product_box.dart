import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sample_project/model/product.dart';
import 'package:sample_project/product_details_page.dart';
import 'package:sample_project/provider/product_list_provider.dart';

class ProductBox extends ConsumerStatefulWidget {
  const ProductBox({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  ConsumerState<ProductBox> createState() => _ProductBoxState();
}

class _ProductBoxState extends ConsumerState<ProductBox> {
  void onTapFavorites() {
    ref.read(productListProvider.notifier).onAddFavorites(widget.product);
  }

  @override
  Widget build(BuildContext context) {
    Product product = ref
        .watch(productListProvider)
        .where((list) => list.id == widget.product.id)
        .toList()[0];

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
