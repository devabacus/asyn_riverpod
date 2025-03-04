import 'package:asyn_riverpod/activity.dart';
import 'package:asyn_riverpod/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ActivityScreen extends StatelessWidget {
  const ActivityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        final AsyncValue<Activity> activity = ref.watch(activityProvider);

        return Center(
          child: switch (activity) {
            AsyncData(:final value) => Text('Activity: ${value.activity}'),
            AsyncError(:final error, :final stackTrace) => Text("error $error"),
            _ => const CircularProgressIndicator(),
          },
        );
      },
    );
  }
}
