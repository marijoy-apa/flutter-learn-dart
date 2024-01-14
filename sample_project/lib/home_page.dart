import 'package:flutter/material.dart';
import 'package:sample_project/product_box.dart';
import 'package:sample_project/provider/product_list.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyHomePage extends ConsumerWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final productProvider = ref.watch(productListProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Product List'),
      ),
      drawer: const Drawer(),
      body: ListView.builder(
        itemCount: productProvider.length,
        itemBuilder: (ctx, index) => ProductBox(
          product: productProvider[index],
        ),
      ),
    );
  }
}
