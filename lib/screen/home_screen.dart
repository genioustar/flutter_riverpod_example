import 'package:flutter/material.dart';
import 'package:test_riverpod/layout/default_layout.dart';
import 'package:test_riverpod/screen/auto_dispose_modifier_screen.dart';
import 'package:test_riverpod/screen/family_modifier_screen.dart';
import 'package:test_riverpod/screen/future_provider_screen.dart';
import 'package:test_riverpod/screen/listen_provider_screen.dart';
import 'package:test_riverpod/screen/stateNotifierProviderScreen.dart';
import 'package:test_riverpod/screen/state_provider_screen.dart';
import 'package:test_riverpod/screen/stream_provider_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      title: 'HomeScreen',
      body: ListView(
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const StateProviderScreen(),
                ),
              );
            },
            child: const Text('StateProviderScreen'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const StateNotifierProviderScreen(),
                ),
              );
            },
            child: const Text('StateNotifierProviderScreen'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const FutureProviderScreen(),
                ),
              );
            },
            child: const Text('FutureProviderScreen'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const StreamProviderScreen(),
                ),
              );
            },
            child: const Text('StreamProviderScreen'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const FamilyModifierScreen(),
                ),
              );
            },
            child: const Text('FamilyModifierScreen'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const AutoDisposeModifierScreen(),
                ),
              );
            },
            child: const Text('AutoDisposeModifierScreen'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const ListenProviderScreen(),
                ),
              );
            },
            child: const Text('ListenProviderScreen'),
          ),
        ],
      ),
    );
  }
}
