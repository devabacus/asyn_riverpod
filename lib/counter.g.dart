// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'counter.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$counterStremHash() => r'9c1e3a6c44cc9e028a74cad3c308fb0808f665bd';

/// See also [counterStrem].
@ProviderFor(counterStrem)
final counterStremProvider = AutoDisposeStreamProvider<int>.internal(
  counterStrem,
  name: r'counterStremProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$counterStremHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef CounterStremRef = AutoDisposeStreamProviderRef<int>;
String _$counterHash() => r'b20b17bcb6d8a28751858f394c900f611f0efbec';

/// See also [Counter].
@ProviderFor(Counter)
final counterProvider = AutoDisposeNotifierProvider<Counter, int>.internal(
  Counter.new,
  name: r'counterProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$counterHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$Counter = AutoDisposeNotifier<int>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
