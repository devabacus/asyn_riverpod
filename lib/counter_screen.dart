import 'package:asyn_riverpod/counter.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CounterScreen extends HookConsumerWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counterStrem = ref.watch(counterStremProvider);
    return counterStrem.when(
      data: (val) => Text("$val"),
      error: (error, _) => Text("$error"),
      loading: () => CircularProgressIndicator(),
    );
  }
}

class AdvancedScreen extends HookConsumerWidget {
  const AdvancedScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final counter = ref.watch(counterProvider);
    final localCounter = useState(50);

    return Center(child: Text("$localCounter", style: TextStyle(fontSize: 30)));
  }
}
