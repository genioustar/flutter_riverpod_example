import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_riverpod/model/shopping_item_model.dart';
import 'package:test_riverpod/riverpod/state_notifier_provider.dart';

// filteredShoppingListProvider 정의 - 필터링된 쇼핑 목록을 제공하는 Provider
final filteredShoppingListProvider = Provider<List<ShoppingItemModel>>(
  (ref) {
    // filterProvider(popupmenu의 상태)의 상태를 구독
    final filterState = ref.watch(filterProvider);
    // shoppingListProvider의 상태를 구독
    final shoppingListState = ref.watch(shoppingListProvider);

    // 필터 상태가 'all'인 경우 전체 쇼핑 목록 반환
    if (filterState == FilterState.all) {
      return shoppingListState;
    }

    // 필터 상태에 따라 목록을 필터링하여 반환
    return shoppingListState
        .where((e) => filterState == FilterState.spicy ? e.isSpicy : !e.isSpicy)
        .toList();
  },
);

// 쇼핑 목록 필터 상태를 나타내는 열거형
enum FilterState {
  all, // 모든 항목
  spicy, // 매운 항목
  notSpicy, // 매운 항목이 아닌 항목
}

// filterProvider 정의 - 현재 필터 상태를 관리하는 StateProvider
final filterProvider = StateProvider<FilterState>((ref) => FilterState.all);
