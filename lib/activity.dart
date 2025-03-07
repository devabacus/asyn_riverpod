import 'package:freezed_annotation/freezed_annotation.dart';

part 'activity.freezed.dart';
part 'activity.g.dart';

@freezed
sealed class Activity with _$Activity {
  const factory Activity({
    required String key,
    required String activity,
    required String type,
    required int participants,
    required double price,
    
    
  }) = _Activity;

  factory Activity.fromJson(Map<String, dynamic> json) => _$ActivityFromJson(json);
}


