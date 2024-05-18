import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_riverpod/layout/default_layout.dart';
import 'package:test_riverpod/riverpod/code_generation_provider.dart';
import 'package:test_riverpod/screen/button_widget.dart';

class CodeGenerationScreen extends ConsumerWidget {
  const CodeGenerationScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    print('regenerate widget');
    // watch를 통해서 다양한 값들을 provider에서 가져올 수 있는데 이때 단 1개의 값만 바껴도 전체 화면이 다시 그려짐.
    // 따라서 이를 해결하기 위해 riverpod패키지에서 Consumer라는 widget을 제공함!
    final state = ref.watch(gStateProvider);
    final futureState = ref.watch(gStateFutureProvider);
    final futureKeepAliveState = ref.watch(gStateFutureKeepAliveProvider);
    final familyState = ref.watch(
      gStateMultiplyProvider(firstName: 'Hello', secondName: ' Riverpod'),
    );
    return DefaultLayout(
      title: 'CodeGenerationScreen',
      body: Column(
        children: [
          Center(
            child: Text(state),
          ),
          Center(
            child: Text(
              futureState.when(
                data: (value) => value.toString(),
                loading: () => 'Loading...',
                error: (error, stackTrace) => 'Error: $error',
              ),
            ),
          ),
          Center(
            child: Text(
              futureKeepAliveState.when(
                data: (value) => value.toString(),
                loading: () => 'Loading...',
                error: (error, stackTrace) => 'Error: $error',
              ),
            ),
          ),
          Center(
            child: Text(familyState),
          ),
          Center(
            // 부분적으로 데이터를 watch하는 거만 다시 그려지게 하는 riverpod의 Consumer 위젯
            child: Consumer(
              builder: (context, ref, child) {
                // child가 있는 이유는 정말 재랜더링이 필요한 위젯만 다시그리고 나머지는 다시 안그릴려고 파라미터가 존재함
                final gStateNotifier = ref.watch(gStateNotifierProvider);
                return Column(
                  children: [
                    Text(gStateNotifier.toString()),
                    child!,
                  ],
                );
              },
              child: const MyButtonWidget(),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  ref.read(gStateNotifierProvider.notifier).increment();
                },
                child: const Text('Increment'),
              ),
              const SizedBox(width: 10),
              ElevatedButton(
                onPressed: () {
                  ref.read(gStateNotifierProvider.notifier).decerement();
                },
                child: const Text('Decrement'),
              ),
              const SizedBox(width: 10),
              //invalidate
              ElevatedButton(
                onPressed: () {
                  ref.invalidate(
                      gStateNotifierProvider); //ref.refresh(gStateNotifierProvider);랑 다른건 뭐지?
                },
                child: const Text('Invalidate'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
