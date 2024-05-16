import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_riverpod/layout/default_layout.dart';
import 'package:test_riverpod/riverpod/future_provider.dart';

class FutureProviderScreen extends ConsumerWidget {
  const FutureProviderScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(multiplesFutureProvider);
    return DefaultLayout(
      title: 'FutureProviderScreen',
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          state.when(
            data: (data) => Text(
              data.toString(),
              textAlign: TextAlign.center,
            ),
            error: (Object error, StackTrace stackTrace) {
              return Text('Error: $error');
            },
            loading: () {
              return Center(child: const CircularProgressIndicator());
            },
          ),
        ],
      ),
    );
  }
}
