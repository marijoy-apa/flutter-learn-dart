import 'package:sample_project/data/data.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final productListProvider = Provider((ref) {
  return productList;
});

