import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'code_generation_provider.g.dart';

// 어떤 Provider(Provider, FutureProvider, StreamProvider)를 사용할지 결정할 고민 할 필요가 없음.
// 코드를 만들면 gStateProvider로 생겨서 Provider는 gStateProvider로 사용하면 됨.
// anotation(@riverpod)을 사용하면 자동으로 AutoDisposeProvider로 생성됨.
@riverpod
String gState(GStateRef ref) {
  return 'Hello Code Generation Provider!';
}

@riverpod
Future<int> gStateFuture(GStateFutureRef ref) async {
  await Future.delayed(const Duration(seconds: 1));
  return 10;
}

@Riverpod(
  // AutoDisposeProvider를 사용하지 않고 Provider를 사용하고 싶을때 사용
  keepAlive: true,
)
Future<int> gStateFutureKeepAlive(GStateFutureKeepAliveRef ref) async {
  await Future.delayed(const Duration(seconds: 1));
  return 10;
}

// familyProvider에 2개 이상의 파라미터를 넘길때 사용
/*
class Param {
  final String firstName;
  final String secondName;

  Param({
    required this.firstName,
    required this.secondName,
  });
}

final familyProvider = Provider.family<String, Param>(
    (ref, param) => param.firstName + param.secondName);
*/

//위와 같이 2개의 param을 받아 familyProvider를 사용할때 anotation을 사용할때의 코드
@riverpod
String gStateMultiply(
  GStateMultiplyRef ref, {
  required String firstName,
  required String secondName,
}) {
  return firstName + secondName;
}

// NotifierProvider를 annotation을 사용해서 만들기
@riverpod
class GStateNotifier extends _$GStateNotifier {
  @override
  int build() {
    return 0;
  }

  increment() {
    state++;
  }

  decerement() {
    state--;
  }
}
