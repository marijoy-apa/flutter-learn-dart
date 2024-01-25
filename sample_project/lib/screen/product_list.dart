import 'package:flutter/material.dart';
import 'package:sample_project/model/product.dart';
import 'package:sample_project/widget/product_box.dart';

class ProductList extends StatefulWidget {
  const ProductList({super.key, required this.availableProducts});

  final List<Product> availableProducts;

  @override
  State<ProductList> createState() => _ProductListState();
}

class _ProductListState extends State<ProductList>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
      lowerBound: 0,
      upperBound: 1,
    );

    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animationController,
      builder: (context, child) => Padding(
        padding: EdgeInsets.only(top: 100 - _animationController.value * 100),
        child: child,
      ),
      child: ListView.builder(
        itemCount: widget.availableProducts.length,
        itemBuilder: (ctx, index) => ProductBox(
          product: widget.availableProducts[index],
        ),
      ),
    );
  }
}
