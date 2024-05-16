import 'package:flutter_riverpod/flutter_riverpod.dart';

final familyModifierProvider =
    FutureProvider.family<List<int>, int>((ref, value) async {
  await Future.delayed(const Duration(seconds: 1));

  return List.generate(3, (index) => index * value);
});
