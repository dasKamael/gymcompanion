import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gymcompanion/models/exercise_set.dart';
part 'exercise.freezed.dart';
part 'exercise.g.dart';

@freezed
class Exercise with _$Exercise {
  const factory Exercise({
    required int id,
    required String name,
    @Default([]) List<ExerciseSet> sets,
  }) = _Exercise;
  factory Exercise.fromJson(Map<String, dynamic> json) => _$ExerciseFromJson(json);
}
