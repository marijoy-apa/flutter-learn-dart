import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sample_project/model/product.dart';
import 'package:sample_project/provider/product_list_provider.dart';

final favoriteListProvider = Provider<List<Product>>((ref) {
  final products = ref.watch(productListProvider);

  return products
      .where((product) => product.isFavorites == true)
      .toList();
});

