import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'counter.g.dart';

@riverpod
Stream<int> counterStrem(Ref ref) {
  final stream = Stream<int>.periodic(Duration(seconds: 1), (count) => count);
  return stream;
}




@riverpod
class Counter extends _$Counter {
  @override
  int build() {
    return 10;
  }
}

