import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_riverpod/riverpod/provider_observer.dart';
import 'package:test_riverpod/screen/home_screen.dart';

void main() {
  runApp(
    // ProviderScope가 없으면 Provider를 사용할 수 없다.
    ProviderScope(
      // 대부분 로깅할때 사용하는 observer 기능
      observers: [Logger()],
      child: MaterialApp(
        theme: ThemeData(
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.green, // Global AppBar color
            elevation: 0, // Optional: removes shadow from AppBar
          ),
        ),
        home: const HomeScreen(),
      ),
    ),
  );
}
