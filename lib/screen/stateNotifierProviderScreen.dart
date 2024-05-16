import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_riverpod/layout/default_layout.dart';
import 'package:test_riverpod/model/shopping_item_model.dart';
import 'package:test_riverpod/riverpod/state_notifier_provider.dart';

class StateNotifierProviderScreen extends ConsumerWidget {
  const StateNotifierProviderScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // shoppingListProvider의 상태를 구독
    final List<ShoppingItemModel> state = ref.watch(shoppingListProvider);

    return DefaultLayout(
      title: 'StateNotifierProviderScreen',
      body: ListView(
        children: state
            .map(
              (e) => CheckboxListTile(
                title: Text(e.name),
                value: e.hasBought,
                onChanged: (value) {
                  // .notifier를 이용하면 class를 가져오는 것이라서 class의 메소드를 사용할 수 있다.
                  ref.read(shoppingListProvider.notifier).toggleHasBought(
                        name: e.name,
                      );
                },
              ),
            )
            .toList(),
      ),
    );
  }
}
