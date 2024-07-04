import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';

class Product {
  final String name;
  final double price;

  Product(this.name, this.price);
}

Future<List<Product>> fetchProducts() async {
  await Future.delayed(const Duration(seconds: 1));
  return [
    Product('Apple', 1.0),
    Product('Banana', 2.0),
    Product('Cherry', 3.0),
    Product('Durian', 4.0),
    Product('Elderberry', 5.0),
  ];
}

class ProductNotifier extends AsyncNotifier<List<Product>> {
  @override
  FutureOr<List<Product>> build() async {
    try {
      List<Product> products = await fetchProducts();
      return products;
    } catch (e) {
      rethrow;
    }
  }
}

final productProvider = AsyncNotifierProvider<ProductNotifier, List<Product>>(
    () => ProductNotifier());
