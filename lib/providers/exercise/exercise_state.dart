import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gymcompanion/models/exercise.dart';
part 'exercise_state.freezed.dart';

@freezed
class ExerciseState with _$ExerciseState {
  const factory ExerciseState({
    required List<Exercise> exercises,
  }) = _ExerciseState;
}
