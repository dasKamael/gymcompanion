import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gymcompanion/models/exercise.dart';
part 'plan.freezed.dart';
part 'plan.g.dart';

@freezed
class Plan with _$Plan {
  const factory Plan({
    required int id,
    required String name,
    required List<Exercise> exercises,
    @Default(0) int lastDoneTimeStamp,
    required int createdTimeStamp,
  }) = _Plan;
  factory Plan.fromJson(Map<String, dynamic> json) => _$PlanFromJson(json);
}
