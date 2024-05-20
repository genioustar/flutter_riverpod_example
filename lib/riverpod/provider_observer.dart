import 'package:flutter_riverpod/flutter_riverpod.dart';

// 상태 변경을 감지하고 로깅하는 ProviderObserver 클래스 정의
class Logger extends ProviderObserver {
  // 프로바이더의 상태가 업데이트될 때 호출되는 메서드
  @override
  void didUpdateProvider(ProviderBase<Object?> provider, Object? previousValue,
      Object? newValue, ProviderContainer container) {
    print(
        'Update Provider: $provider, previousValue: $previousValue, newValue: $newValue');
  }

  // 프로바이더가 추가될 때 호출되는 메서드
  @override
  void didAddProvider(ProviderBase<Object?> provider, Object? value,
      ProviderContainer container) {
    print('Add Provider: $provider, value: $value');
  }

  // 프로바이더가 폐기될 때 호출되는 메서드
  @override
  void didDisposeProvider(
      ProviderBase<Object?> provider, ProviderContainer container) {
    print('Dispose Provider: $provider');
  }
}
