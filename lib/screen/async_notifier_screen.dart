import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_riverpod/layout/default_layout.dart';
import 'package:test_riverpod/riverpod/async_notifier_provider.dart';

class AsyncNotifierScreen extends ConsumerWidget {
  const AsyncNotifierScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final productList = ref.watch(productProvider);
    return DefaultLayout(
      title: 'AsyncNotifierProviderScreen',
      body: productList.when(
        data: (products) => ListView.builder(
            itemCount: products.length,
            itemBuilder: (context, index) => ListTile(
                  title: Text(
                      '${products[index].name} - ${products[index].price}'),
                )),
        error: (error, stackTrace) => Text('Error $error'),
        loading: () => const CircularProgressIndicator(),
      ),
    );
  }
}
