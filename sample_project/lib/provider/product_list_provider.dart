import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sample_project/data/data.dart';
import 'package:sample_project/model/product.dart';

class ProductListNotifier extends StateNotifier<List<Product>> {
  ProductListNotifier() : super(productList);

  void onAddFavorites(Product product) {
    state = state.map((list) {
      if (list.id == product.id) {
        return Product(
            id: product.id,
            name: product.name,
            description: product.description,
            price: product.price,
            image: product.image,
            isFavorites: !list.isFavorites);
      }
      return list;
    }).toList();
  }
}

final productListProvider =
    StateNotifierProvider<ProductListNotifier, List<Product>>(
  (ref) => ProductListNotifier(),
);
