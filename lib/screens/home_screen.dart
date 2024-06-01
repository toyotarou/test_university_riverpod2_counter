import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../state/counter/counter.dart';

@immutable
class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var counter = ref.watch(counterProvider);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('xxx'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              counter.toString(),
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {
                    ref.read(counterProvider.notifier).increment();
                  },
                  child: const Text('+'),
                ),
                ElevatedButton(
                  onPressed: () {
                    ref.read(counterProvider.notifier).decrement();
                  },
                  child: const Text('-'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
