import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gymcompanion/models/exercise.dart';
part 'workout_state.freezed.dart';

@freezed
class WorkoutState with _$WorkoutState {
  const factory WorkoutState({
    required List<Exercise> exercises,
  }) = _WorkoutState;
}
