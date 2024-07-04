import 'package:flutter_riverpod/flutter_riverpod.dart';

class Session extends Notifier<bool> {
  //초기 상태값 세팅
  @override
  bool build() => false;

  void login() => state = true;

  void logout() => state = false;
}

final sessionProvider = NotifierProvider<Session, bool>(() => Session());
