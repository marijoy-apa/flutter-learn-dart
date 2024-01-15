import 'package:flutter/material.dart';
import 'package:sample_project/widget/product_box.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sample_project/provider/favorite_list_provider.dart';
import 'package:sample_project/provider/product_list_provider.dart';

class MyHomePage extends ConsumerStatefulWidget {
  const MyHomePage({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() {
    return _MyHomePage();
  }
}

class _MyHomePage extends ConsumerState<MyHomePage> {
  int _selectedPageIndex = 0;
  String activePageName = 'Product List';

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
      activePageName = 'Favorites';
    });
  }

  @override
  Widget build(BuildContext context) {
    final productProvider = ref.watch(productListProvider);

    Widget activePage = ListView.builder(
      itemCount: productProvider.length,
      itemBuilder: (ctx, index) => ProductBox(
        product: productProvider[index],
      ),
    );

    if (_selectedPageIndex == 1) {
      final faveProducts = ref.watch(favoriteListProvider);
      activePage = ListView.builder(
        itemCount: faveProducts.length,
        itemBuilder: (ctx, index) => ProductBox(
          product: faveProducts[index],
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(activePageName),
      ),
      drawer: const Drawer(),
      body: activePage,
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        currentIndex: _selectedPageIndex,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.restaurant), label: 'Products'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: 'Favorites')
        ],
      ),
    );
  }
}
