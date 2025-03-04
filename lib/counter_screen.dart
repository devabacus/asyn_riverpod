import 'package:asyn_riverpod/counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CounterScreen extends ConsumerWidget {
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
