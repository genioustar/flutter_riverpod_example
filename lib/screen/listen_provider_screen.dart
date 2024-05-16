import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_riverpod/layout/default_layout.dart';
import 'package:test_riverpod/riverpod/listen_provider.dart';

class ListenProviderScreen extends ConsumerStatefulWidget {
  const ListenProviderScreen({super.key});

  @override
  ConsumerState<ListenProviderScreen> createState() =>
      _ListenProviderScreenState();
}

class _ListenProviderScreenState extends ConsumerState<ListenProviderScreen>
    with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();

    _tabController = TabController(
      length: 10,
      vsync: this,
      initialIndex: ref.read(
          listenProvider), // initState()에서는 watch 대신 read를 사용 왜냐하면 단 한번만 실행되기 때문
    );
  }

  @override
  Widget build(BuildContext context) {
    // WidgetRef가 없어도 됨! StatefullWidget을 상속받았기 때문에 ref를 바로 사용 가능
    ref.listen<int>(listenProvider, (previous, next) {
      print('previous: $previous, next: $next');
      if (previous != next) {
        _tabController.animateTo(next);
      }
    });
    return DefaultLayout(
      title: 'ListenProviderScreen',
      body: TabBarView(
        physics: NeverScrollableScrollPhysics(),
        controller: _tabController,
        children: List.generate(
          10,
          (index) => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                index.toString(),
              ),
              ElevatedButton(
                onPressed: () {
                  ref
                      .read(listenProvider.notifier)
                      .update((state) => state == 9 ? 0 : state + 1);
                },
                child: const Text('Next'),
              ),
              ElevatedButton(
                onPressed: () {
                  ref
                      .read(listenProvider.notifier)
                      .update((state) => state == 0 ? 0 : state - 1);
                },
                child: Text('Prev'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
