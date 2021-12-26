import 'package:freezed_annotation/freezed_annotation.dart';
part 'exercise_set.freezed.dart';
part 'exercise_set.g.dart';

@freezed
class ExerciseSet with _$ExerciseSet {
  const factory ExerciseSet({
    required int set,
    required int reps,
    required double weight,
  }) = _ExerciseSet;
  factory ExerciseSet.fromJson(Map<String, dynamic> json) => _$ExerciseSetFromJson(json);
}
