import 'package:asyn_riverpod/counter.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

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

    useEffect(() {
      print('Глобальный счетчик ${counter}, локальный счетчик ${localCounter.value}');
      return null;
    }, [counter, localCounter]);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("global: ${counter}", style: TextStyle(fontSize: 30)),
        SizedBox(height: 30),
        Text("local: ${localCounter.value}", style: TextStyle(fontSize: 30)),
        SizedBox(height: 30),
        ElevatedButton(
          onPressed: () => ref.read(counterProvider.notifier).state++,
          child: Text("+ global"),
        ),
        ElevatedButton(
          onPressed: () => localCounter.value++,
          child: Text("+ local"),
        ),
      ],
    );
  }
}
