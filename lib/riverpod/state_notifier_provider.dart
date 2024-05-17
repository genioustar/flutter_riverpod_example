import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_riverpod/model/shopping_item_model.dart';

final shoppingListProvider =
    StateNotifierProvider<ShoppingListNotifier, List<ShoppingItemModel>>(
        (ref) => ShoppingListNotifier());

// StateNotifier는 무조건 class로 선언해야 한다.
class ShoppingListNotifier extends StateNotifier<List<ShoppingItemModel>> {
  ShoppingListNotifier()
      : super([
          ShoppingItemModel(
              name: 'Apple', quantity: 1, hasBought: false, isSpicy: false),
          ShoppingItemModel(
              name: 'Banana', quantity: 2, hasBought: false, isSpicy: false),
          ShoppingItemModel(
              name: 'kimchi', quantity: 3, hasBought: true, isSpicy: true),
          ShoppingItemModel(
              name: 'pasta', quantity: 6, hasBought: true, isSpicy: false),
        ]);

  void toggleHasBought({required String name}) {
    state = state
        .map((item) => item.name == name
            ? ShoppingItemModel(
                name: item.name,
                quantity: item.quantity,
                hasBought: !item.hasBought,
                isSpicy: item.isSpicy)
            : item)
        .toList();
  }
}
