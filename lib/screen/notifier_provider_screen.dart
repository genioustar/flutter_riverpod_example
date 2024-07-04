import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_riverpod/layout/default_layout.dart';
import 'package:test_riverpod/riverpod/notifier_provider.dart';

class NotifierProviderScreen extends ConsumerWidget {
  const NotifierProviderScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isLoggedIn = ref.watch(sessionProvider);
    final sessionNotifier = ref.read(sessionProvider.notifier);

    return DefaultLayout(
      title: 'NotifierProviderScreen',
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              isLoggedIn ? 'Logged In' : 'Logged Out',
              style: const TextStyle(fontSize: 24),
            ),
            ElevatedButton(
                onPressed:
                    isLoggedIn ? sessionNotifier.logout : sessionNotifier.login,
                child: Text(isLoggedIn ? 'Logout' : 'Login')),
          ],
        ),
      ),
    );
  }
}
