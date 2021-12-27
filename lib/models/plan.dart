import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gymcompanion/models/exercise.dart';
part 'plan.freezed.dart';
part 'plan.g.dart';

@freezed
class Plan with _$Plan {
  const factory Plan({
    required String id,
    required String name,
    required List<Exercise> exercises,
    required DateTime lastTrained,
  }) = _Plan;
  factory Plan.fromJson(Map<String, dynamic> json) => _$PlanFromJson(json);
}
