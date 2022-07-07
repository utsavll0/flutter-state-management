import 'package:flutter/material.dart';
import 'package:shopping_app/widgets/product_item.dart';

import '../models/product.dart';

class ProductsOverviewScreen extends StatelessWidget {
  final List<Product> loadedProducts;
  const ProductsOverviewScreen({Key? key, required this.loadedProducts})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MyShop'),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (ctx, i) {
          ProductItem(
            title: loadedProducts[i].title,
            id: loadedProducts[i].id,
            imageUrl: loadedProducts[i].imageUrl,
          );
        },
        padding: const EdgeInsets.all(10),
        itemCount: loadedProducts.length,
      ),
    );
  }
}
