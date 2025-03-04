import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'bored_screen.g.dart';

@riverpod
Future<String> boredSuggestion(Ref ref) async {
  final response = await http.get(Uri.https('boredapi.com', '/api/activity'));
  final json = jsonDecode(response.body) as Map;
  return json['activity']! as String;
}



class BoredScreen extends ConsumerWidget {
  const BoredScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final suggest = ref.watch((boredSuggestionProvider));

    return switch (suggest) {
      AsyncData(:final value) => Text('data: $value'),
      AsyncError(:final error) => Text('error: $error'),
      _ => const Text('loading')
    };
  }
}
