import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_riverpod/layout/default_layout.dart';
import 'package:test_riverpod/riverpod/select_provider.dart';

class SelectProviderScreen extends ConsumerWidget {
  const SelectProviderScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    print('build');
    final state = ref.watch(selectProvider
        .select((value) => value.isSpicy)); // selectProvider의 isSpicy 상태만 가져옴
    ref.listen(
        selectProvider.select((value) => value
            .hasBought), // 이놈 때문에 isSpicy가 변경되어 watch로 보고있어서 print('build')가 한번만 찍힘
        (previous, next) {
      print('previous: $previous, next: $next');
    });
    return DefaultLayout(
      title: 'SelectProviderScreen',
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(state.toString()),
            ElevatedButton(
              onPressed: () {
                ref.read(selectProvider.notifier).toggleHasBought();
              },
              child: const Text('toggle hasBought'),
            ),
            ElevatedButton(
              onPressed: () {
                ref.read(selectProvider.notifier).toggleIsSpicy();
              },
              child: const Text('toggle isSpicy'),
            ),
          ],
        ),
      ),
    );
  }
}
