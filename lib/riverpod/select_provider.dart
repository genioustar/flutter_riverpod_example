import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_riverpod/model/shopping_item_model.dart';

// selectProvider 정의 - ShoppingItemModel 상태를 관리하는 StateNotifierProvider
final selectProvider = StateNotifierProvider<SelectProvider, ShoppingItemModel>(
    (ref) => SelectProvider());

// SelectProvider 클래스 정의 - StateNotifier를 상속받아 상태 관리
class SelectProvider extends StateNotifier<ShoppingItemModel> {
  // 초기 상태 설정 - 'Apple' 항목으로 초기화
  SelectProvider()
      : super(ShoppingItemModel(
            name: 'Apple', quantity: 1, hasBought: false, isSpicy: false));

  // hasBought 상태를 토글하는 메서드
  void toggleHasBought() {
    // 현재 상태의 hasBought 값을 반전하여 새로운 상태로 설정
    state = state.copyWith(hasBought: !state.hasBought);
  }

  // isSpicy 상태를 토글하는 메서드
  void toggleIsSpicy() {
    // 현재 상태의 isSpicy 값을 반전하여 새로운 상태로 설정
    state = state.copyWith(isSpicy: !state.isSpicy);
  }
}
