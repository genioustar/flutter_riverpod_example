import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_riverpod/layout/default_layout.dart';
import 'package:test_riverpod/riverpod/state_provider.dart';

// consumerWidget 은 StatelessWidget를 상속받는 위젯으로 stateless widget과 같은 역할을 하지만 Provider를 사용할 수 있다.
class StateProviderScreen extends ConsumerWidget {
  const StateProviderScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // ref를 활용해서 Provider를 사용할 수 있다.
    final provider = ref.watch(numberProvider);
    return DefaultLayout(
      title: 'StateProviderScreen',
      body: Column(
        children: [
          Text('Number: ${provider.toString()}'),
          ElevatedButton(
            onPressed: () {
              ref.read(numberProvider.notifier).state++;
            },
            child: const Text('Increment'),
          ),
          ElevatedButton(
            onPressed: () {
              ref.read(numberProvider.notifier).state--;
            },
            child: const Text('Decrement'),
          ),
        ],
      ),
    );
  }
}
